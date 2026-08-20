package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.SystemClock;
import com.bytedance.sdk.component.utils.cJ;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.TTAdActivity;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTInterstitialActivity;
import com.bytedance.sdk.openadsdk.activity.TTInterstitialExpressActivity;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.Dww;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.aP;
import com.bytedance.sdk.openadsdk.utils.bxS;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: PAGInterstitialAdImpl.java */
/* loaded from: classes2.dex */
class ROR extends PAGInterstitialAd {
    private final Context Qhi;
    private boolean Sf;
    private com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ ac;
    private final com.bytedance.sdk.openadsdk.core.model.Qhi cJ;
    private boolean hm;
    private final AtomicBoolean fl = new AtomicBoolean(false);
    private boolean Tgh = false;
    private boolean CJ = false;
    private final String ROR = bxS.Qhi();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ROR(Context context, com.bytedance.sdk.openadsdk.core.model.Qhi qhi) {
        this.Qhi = context;
        this.cJ = qhi;
    }

    public void Qhi(boolean z) {
        this.Tgh = z;
    }

    public void Qhi() {
        if (this.fl.get()) {
            return;
        }
        this.CJ = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void setAdInteractionListener(PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener) {
        this.ac = new com.bytedance.sdk.openadsdk.component.ac.Qhi(pAGInterstitialAdInteractionListener);
        Qhi(1);
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void setAdInteractionCallback(PAGInterstitialAdInteractionCallback pAGInterstitialAdInteractionCallback) {
        this.ac = new com.bytedance.sdk.openadsdk.component.ac.Qhi(pAGInterstitialAdInteractionCallback);
        Qhi(1);
    }

    private static boolean Qhi(tP tPVar) {
        if (tPVar == null) {
            return false;
        }
        int hpZ = tPVar.hpZ();
        return (tPVar.EBS() != 2 || hpZ == 5 || hpZ == 33 || hpZ == 6 || hpZ == 19 || hpZ == 12) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void show(Activity activity) {
        Intent intent;
        if (activity != null && activity.isFinishing()) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error1: activity is finishing");
            activity = null;
        }
        com.bytedance.sdk.openadsdk.core.model.Qhi qhi = this.cJ;
        if (qhi == null || !qhi.CJ()) {
            return;
        }
        boolean Tgh = this.cJ.Tgh();
        final tP fl = this.cJ.fl();
        if (!com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(fl, "fullscreen_interstitial_ad", "showFullScreenVideoAd error2: not main looper");
            com.bytedance.sdk.component.utils.ABk.Qhi("TTFullScreenVideoAdImpl", "showFullScreenVideoAd error2: not main looper");
            throw new IllegalStateException("Cannot be called in a child thread —— TTFullScreenVideoAd.showFullScreenVideoAd");
        }
        List<tP> ac = this.cJ.ac();
        if (ac != null) {
            for (tP tPVar : ac) {
                IPMiBroadcastReceiver.Qhi(this.Qhi, tPVar);
            }
        }
        if (this.fl.get()) {
            return;
        }
        this.fl.set(true);
        if (fl == null || (fl.FQ() == null && fl.cjC() == null)) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(fl, "fullscreen_interstitial_ad", "materialMeta error ");
            return;
        }
        Context context = activity == null ? this.Qhi : activity;
        if (context == null) {
            context = HzH.Qhi();
        }
        if (com.bytedance.sdk.openadsdk.core.settings.HzH.YD().gT()) {
            intent = new Intent(context, TTAdActivity.class);
        } else if (Tgh) {
            intent = new Intent(context, TTFullScreenExpressVideoActivity.class);
        } else if (Qhi(fl)) {
            if (com.bytedance.sdk.openadsdk.component.reward.cJ.hm.Qhi(fl)) {
                intent = new Intent(context, TTInterstitialExpressActivity.class);
            } else {
                intent = new Intent(context, TTFullScreenExpressVideoActivity.class);
            }
        } else if (com.bytedance.sdk.openadsdk.component.reward.cJ.hm.Qhi(fl)) {
            intent = new Intent(context, TTInterstitialActivity.class);
        } else {
            intent = new Intent(context, TTFullScreenVideoActivity.class);
        }
        intent.putExtra("start_show_time", SystemClock.elapsedRealtime());
        com.bytedance.sdk.openadsdk.component.reward.Qhi.cJ.Qhi(intent, activity, this.CJ, this.cJ, this.ROR);
        intent.putExtra("is_verity_playable", this.Tgh);
        if (!com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Dww.Qhi().Qhi(this.ac);
            this.ac = null;
        }
        com.bytedance.sdk.component.utils.cJ.Qhi(context, intent, new cJ.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.ROR.1
            @Override // com.bytedance.sdk.component.utils.cJ.Qhi
            public void Qhi() {
                if (ROR.this.Tgh) {
                    try {
                        com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi(fl.FQ().zc());
                    } catch (Throwable unused) {
                    }
                }
            }

            @Override // com.bytedance.sdk.component.utils.cJ.Qhi
            public void Qhi(Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTFullScreenVideoAdImpl", "show full screen video error: ", th);
                if (ROR.this.Tgh) {
                    try {
                        com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi(fl.FQ().zc(), -1, th != null ? th.getMessage() : "playable tool error open");
                    } catch (Throwable unused) {
                    }
                }
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(fl, "fullscreen_interstitial_ad", "activity start  fail ");
            }
        });
        if (Tgh) {
            return;
        }
        Qhi.Qhi(this.cJ.fl(), this.CJ, false);
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        com.bytedance.sdk.openadsdk.core.model.Qhi qhi = this.cJ;
        if (qhi == null || qhi.fl() == null) {
            return null;
        }
        return this.cJ.fl().Gy();
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        com.bytedance.sdk.openadsdk.core.model.Qhi qhi = this.cJ;
        if (qhi == null || qhi.fl() == null || this.cJ.fl().Gy() == null) {
            return null;
        }
        try {
            return this.cJ.fl().Gy().get(str);
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTFullScreenVideoAdImpl", th.getMessage());
            return null;
        }
    }

    private void Qhi(final int i) {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            lG.ac(new com.bytedance.sdk.component.Sf.hm("FullScreen_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.ROR.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.Qhi Qhi = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi();
                    if (i != 1 || ROR.this.ac == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.multipro.aidl.cJ.ac acVar = new com.bytedance.sdk.openadsdk.multipro.aidl.cJ.ac(ROR.this.ac);
                    IListenerManager asInterface = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Tgh.asInterface(Qhi.Qhi(1));
                    if (asInterface != null) {
                        try {
                            asInterface.registerFullVideoListener(ROR.this.ROR, acVar);
                        } catch (RemoteException e2) {
                            com.bytedance.sdk.component.utils.ABk.Qhi("TTFullScreenVideoAdImpl", e2.getMessage());
                        }
                    }
                }
            }, 5);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d2) {
        if (this.Sf) {
            return;
        }
        aP.Qhi(this.cJ.fl(), d2);
        this.Sf = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d2, String str, String str2) {
        if (this.hm) {
            return;
        }
        aP.Qhi(this.cJ.fl(), d2, str, str2);
        this.hm = true;
    }
}
