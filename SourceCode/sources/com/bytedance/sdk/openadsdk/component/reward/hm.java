package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.SystemClock;
import com.bytedance.sdk.component.utils.cJ;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.TTAdActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener;
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
/* compiled from: PAGRewardVideoAdImpl.java */
/* loaded from: classes2.dex */
class hm extends PAGRewardedAd {
    private com.bytedance.sdk.openadsdk.apiImpl.CJ.ac CJ;
    private final Context Qhi;
    private boolean Sf;
    private final AdSlot ac;
    private final com.bytedance.sdk.openadsdk.core.model.Qhi cJ;
    private boolean fl;
    private boolean hm;
    private final AtomicBoolean Tgh = new AtomicBoolean(false);
    private final String ROR = bxS.Qhi();

    /* JADX INFO: Access modifiers changed from: package-private */
    public hm(Context context, com.bytedance.sdk.openadsdk.core.model.Qhi qhi, AdSlot adSlot) {
        this.Qhi = context;
        this.cJ = qhi;
        this.ac = adSlot;
    }

    public void Qhi() {
        if (this.Tgh.get()) {
            return;
        }
        this.fl = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void setAdInteractionListener(PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener) {
        this.CJ = new WAv(pAGRewardedAdInteractionListener);
        Qhi(0);
    }

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void setAdInteractionCallback(PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback) {
        this.CJ = new WAv(pAGRewardedAdInteractionCallback);
        Qhi(0);
    }

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void show(Activity activity) {
        Intent intent;
        if (activity != null && activity.isFinishing()) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTRewardVideoAdImpl", "showRewardVideoAd error1: activity is finishing");
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
            com.bytedance.sdk.component.utils.ABk.Qhi("TTRewardVideoAdImpl", "showRewardVideoAd error2: not main looper");
            throw new IllegalStateException("Cannot be called in a child thread —— TTRewardVideoAd.showRewardVideoAd");
        }
        List<tP> ac = this.cJ.ac();
        if (ac != null) {
            for (tP tPVar : ac) {
                IPMiBroadcastReceiver.Qhi(this.Qhi, tPVar);
            }
        }
        if (this.Tgh.compareAndSet(false, true)) {
            if (fl == null || fl.FQ() == null) {
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
                intent = new Intent(context, TTRewardExpressVideoActivity.class);
            } else if (Qhi(fl)) {
                intent = new Intent(context, TTRewardExpressVideoActivity.class);
            } else {
                intent = new Intent(context, TTRewardVideoActivity.class);
            }
            com.bytedance.sdk.openadsdk.component.reward.Qhi.cJ.Qhi(intent, activity, this.fl, this.cJ, this.ROR);
            intent.putExtra("media_extra", this.ac.getMediaExtra());
            intent.putExtra("user_id", this.ac.getUserID());
            intent.putExtra("start_show_time", SystemClock.elapsedRealtime());
            if (!com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                Dww.Qhi().Qhi(this.CJ);
                this.CJ = null;
            }
            com.bytedance.sdk.component.utils.cJ.Qhi(context, intent, new cJ.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.hm.1
                @Override // com.bytedance.sdk.component.utils.cJ.Qhi
                public void Qhi() {
                }

                @Override // com.bytedance.sdk.component.utils.cJ.Qhi
                public void Qhi(Throwable th) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("TTRewardVideoAdImpl", "show reward video error: ", th);
                    com.bytedance.sdk.openadsdk.cJ.ac.Qhi(fl, "fullscreen_interstitial_ad", "activity start  fail ");
                }
            });
            if (Tgh) {
                return;
            }
            Qhi.Qhi(this.cJ.fl(), this.fl, true);
        }
    }

    private static boolean Qhi(tP tPVar) {
        if (tPVar == null) {
            return false;
        }
        int hpZ = tPVar.hpZ();
        return (tPVar.EBS() != 2 || hpZ == 5 || hpZ == 33 || hpZ == 6 || hpZ == 19 || hpZ == 12) ? false : true;
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
            com.bytedance.sdk.component.utils.ABk.Qhi("TTRewardVideoAdImpl", th.getMessage());
            return null;
        }
    }

    private void Qhi(final int i) {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            lG.ac(new com.bytedance.sdk.component.Sf.hm("Reward_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.hm.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.Qhi Qhi = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi();
                    if (i != 0 || hm.this.CJ == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.multipro.aidl.cJ.fl flVar = new com.bytedance.sdk.openadsdk.multipro.aidl.cJ.fl(hm.this.CJ);
                    IListenerManager asInterface = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Sf.asInterface(Qhi.Qhi(0));
                    if (asInterface != null) {
                        try {
                            asInterface.registerRewardVideoListener(hm.this.ROR, flVar);
                        } catch (RemoteException e2) {
                            com.bytedance.sdk.component.utils.ABk.Qhi("TTRewardVideoAdImpl", e2.getMessage());
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
