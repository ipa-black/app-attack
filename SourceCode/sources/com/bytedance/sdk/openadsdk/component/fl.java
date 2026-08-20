package com.bytedance.sdk.openadsdk.component;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.cJ;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.activity.TTAppOpenAdActivity;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.Dww;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.aP;
import com.bytedance.sdk.openadsdk.utils.bxS;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: PAGAppOpenAdImpl.java */
/* loaded from: classes2.dex */
public class fl extends PAGAppOpenAd {
    private com.bytedance.sdk.openadsdk.apiImpl.ac.cJ CJ;
    private final Context Qhi;
    private final boolean ROR;
    private boolean Sf;
    private final AdSlot ac;
    private final tP cJ;
    private boolean hm;
    private final AtomicBoolean fl = new AtomicBoolean(false);
    private final String Tgh = bxS.Qhi();

    public fl(Context context, tP tPVar, boolean z, AdSlot adSlot) {
        this.Qhi = context;
        this.cJ = tPVar;
        this.ROR = z;
        this.ac = adSlot;
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void setAdInteractionListener(PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener) {
        this.CJ = new Tgh(pAGAppOpenAdInteractionListener);
        Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void setAdInteractionCallback(PAGAppOpenAdInteractionCallback pAGAppOpenAdInteractionCallback) {
        this.CJ = new Tgh(pAGAppOpenAdInteractionCallback);
        Qhi();
    }

    private void Qhi() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            lG.ac(new hm("AppOpenAd_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.fl.1
                @Override // java.lang.Runnable
                public void run() {
                    IListenerManager asInterface;
                    com.bytedance.sdk.openadsdk.multipro.aidl.Qhi Qhi = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi();
                    if (fl.this.CJ == null || (asInterface = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.cJ.asInterface(Qhi.Qhi(7))) == null) {
                        return;
                    }
                    try {
                        asInterface.registerAppOpenAdListener(fl.this.Tgh, new com.bytedance.sdk.openadsdk.multipro.aidl.cJ.Qhi(fl.this.CJ));
                        fl.this.CJ = null;
                    } catch (RemoteException e2) {
                        ABk.Qhi("TTAppOpenAdImpl", e2.getMessage());
                    }
                }
            }, 5);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd
    public void show(Activity activity) {
        int i;
        if (activity != null && activity.isFinishing()) {
            activity = null;
        }
        if (this.fl.getAndSet(true)) {
            return;
        }
        if (Looper.getMainLooper() != Looper.myLooper()) {
            ABk.Qhi("TTAppOpenAdImpl", "showTTAppOpenAd error: not main looper");
            throw new IllegalStateException("Cannot be called in a child thread ---- TTAppOpenAdImpl.showAppOpenAd");
        }
        IPMiBroadcastReceiver.Qhi(this.Qhi, this.cJ);
        Context context = activity != null ? activity : this.Qhi;
        if (context == null) {
            context = HzH.Qhi();
        }
        try {
            i = activity.getWindowManager().getDefaultDisplay().getRotation();
        } catch (Exception unused) {
            i = 0;
        }
        Intent intent = new Intent(context, TTAppOpenAdActivity.class);
        intent.putExtra("orientation_angle", i);
        intent.putExtra("ad_source", this.ROR ? 1 : 2);
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            intent.putExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA, this.cJ.mZ().toString());
            intent.putExtra(TTAdConstant.MULTI_PROCESS_META_MD5, this.Tgh);
        } else {
            Dww.Qhi().Tgh();
            Dww.Qhi().Qhi(this.cJ);
            Dww.Qhi().Qhi(this.CJ);
            this.CJ = null;
        }
        intent.putExtra("start_show_time", SystemClock.elapsedRealtime());
        com.bytedance.sdk.component.utils.cJ.Qhi(context, intent, new cJ.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.fl.2
            @Override // com.bytedance.sdk.component.utils.cJ.Qhi
            public void Qhi() {
            }

            @Override // com.bytedance.sdk.component.utils.cJ.Qhi
            public void Qhi(Throwable th) {
            }
        });
        iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.fl.3
            @Override // java.lang.Runnable
            public void run() {
                if (fl.this.ac != null) {
                    try {
                        if (com.bytedance.sdk.openadsdk.core.settings.HzH.YD().CQU(fl.this.ac.getCodeId()) == 1) {
                            ROR Qhi = ROR.Qhi(fl.this.Qhi);
                            Qhi.ROR(Integer.parseInt(fl.this.ac.getCodeId()));
                            Qhi.Qhi(fl.this.ac);
                        }
                    } catch (Throwable unused2) {
                    }
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d2) {
        if (this.Sf) {
            return;
        }
        aP.Qhi(this.cJ, d2);
        this.Sf = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d2, String str, String str2) {
        if (this.hm) {
            return;
        }
        aP.Qhi(this.cJ, d2, str, str2);
        this.hm = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        tP tPVar = this.cJ;
        if (tPVar != null) {
            return tPVar.Gy();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        tP tPVar = this.cJ;
        if (tPVar == null || tPVar.Gy() == null) {
            return null;
        }
        try {
            return this.cJ.Gy().get(str);
        } catch (Throwable th) {
            ABk.Qhi("TTAppOpenAdImpl", th.getMessage());
            return null;
        }
    }
}
