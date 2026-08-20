package com.appnext.core;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.ResultReceiver;
import com.bykv.vk.openvk.preload.falconx.statistic.StatisticData;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class AdsService extends IntentService {
    public static final int ADD_PACK = 8348;
    public static final int START_APP = 8346;
    private static HashMap<String, n> gf = new HashMap<>();
    private Runnable gg;
    private Handler mHandler;
    Messenger mMessenger;

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return false;
    }

    static /* synthetic */ Handler a(AdsService adsService, Handler handler) {
        adsService.mHandler = null;
        return null;
    }

    /* loaded from: classes.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what == 8348) {
                Bundle data = message.getData();
                AdsService.this.addPack(data.getString("package"), data, (ResultReceiver) data.getParcelable("receiver"));
                data.getString("package");
                return;
            }
            super.handleMessage(message);
        }
    }

    public AdsService() {
        super("AdsService");
        this.mMessenger = new Messenger(new a());
        this.gg = new Runnable() { // from class: com.appnext.core.AdsService.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    for (Map.Entry entry : new HashMap(AdsService.gf).entrySet()) {
                        n nVar = (n) entry.getValue();
                        if (AdsService.this.Q(nVar.am)) {
                            new Bundle().putAll(nVar.hz);
                            AdsService.this.a(nVar);
                            AdsService.gf.remove(entry.getKey());
                            AdsService.this.startActivity(AdsService.this.getPackageManager().getLaunchIntentForPackage(nVar.am));
                        }
                    }
                    if (AdsService.this.mHandler != null) {
                        if (AdsService.gf.entrySet().size() > 0) {
                            AdsService.this.mHandler.postDelayed(AdsService.this.gg, 10000L);
                            return;
                        }
                        AdsService.this.mHandler.removeCallbacksAndMessages(null);
                        AdsService.a(AdsService.this, (Handler) null);
                    }
                } catch (Throwable unused) {
                }
            }
        };
    }

    @Override // android.app.IntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        gf.clear();
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.mHandler = null;
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (intent.getIntExtra("added_info", 0) == 8348) {
            addPack(intent.getStringExtra("package"), intent.getExtras(), (ResultReceiver) intent.getParcelableExtra("receiver"));
            intent.getStringExtra("package");
        }
    }

    public void addPack(String str, Bundle bundle, ResultReceiver resultReceiver) {
        if (gf == null) {
            gf = new HashMap<>();
        }
        if (!gf.containsKey(str)) {
            n nVar = new n();
            nVar.am = str;
            nVar.hz = bundle;
            gf.put(str, nVar);
            if (this.mHandler == null) {
                Handler handler = new Handler();
                this.mHandler = handler;
                handler.postDelayed(this.gg, 10000L);
                return;
            }
            return;
        }
        n nVar2 = gf.get(str);
        if (nVar2 == null) {
            addPack(str, bundle, resultReceiver);
            return;
        }
        nVar2.hz = bundle;
        gf.put(str, nVar2);
    }

    private void a(String str, Bundle bundle, ResultReceiver resultReceiver) {
        n nVar = gf.get(str);
        if (nVar == null) {
            addPack(str, bundle, resultReceiver);
            return;
        }
        nVar.hz = bundle;
        gf.put(str, nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Q(String str) {
        try {
            getPackageManager().getPackageInfo(str, 128);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    protected final synchronized void a(final n nVar) {
        new Thread(new Runnable() { // from class: com.appnext.core.AdsService.1
            @Override // java.lang.Runnable
            public final void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("guid", nVar.hz.getString("guid"));
                hashMap.put("zone", nVar.hz.getString("zone") == null ? "" : nVar.hz.getString("zone"));
                hashMap.put("adsID", f.b((Context) AdsService.this, true));
                hashMap.put("isApk", "0");
                hashMap.put("bannerid", nVar.hz.getString("bannerid"));
                hashMap.put("placementid", nVar.hz.getString("placementid"));
                hashMap.put("vid", nVar.hz.getString("vid"));
                hashMap.put(ScarConstants.TOKEN_ID_KEY, nVar.hz.getString(ScarConstants.TOKEN_ID_KEY, ""));
                hashMap.put("osid", StatisticData.ERROR_CODE_NOT_FOUND);
                hashMap.put("auid", nVar.hz.getString("auid", ""));
                String installerPackageName = AdsService.this.getPackageManager().getInstallerPackageName(nVar.am);
                hashMap.put("installer", installerPackageName != null ? installerPackageName : "");
                try {
                    f.a("https://admin.appnext.com/AdminService.asmx/SetOpenV1", hashMap);
                } catch (IOException unused) {
                }
            }
        }).start();
    }

    @Override // android.app.IntentService, android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mMessenger.getBinder();
    }
}
