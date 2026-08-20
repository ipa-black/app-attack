package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.ABk;
import com.bytedance.sdk.openadsdk.core.nativeexpress.Sf;
import com.bytedance.sdk.openadsdk.utils.zn;
import org.json.JSONObject;
/* compiled from: RewardFullExpressVideoLayout.java */
/* loaded from: classes2.dex */
public class ac {
    private boolean Gm;
    com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl Qhi;
    private final tP ROR;
    private final String Sf;
    private final Activity Tgh;
    private final com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi WAv;
    Handler cJ;
    private FullRewardExpressView hm;
    boolean ac = false;
    boolean CJ = false;
    boolean fl = false;

    public ac(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        this.WAv = qhi;
        this.Tgh = qhi.FQ;
        this.ROR = qhi.cJ;
        this.Sf = qhi.fl;
    }

    public void Qhi(AdSlot adSlot) {
        if (this.fl) {
            return;
        }
        this.fl = true;
        this.hm = new FullRewardExpressView(this.WAv, adSlot, this.Sf);
    }

    public FullRewardExpressView Qhi() {
        return this.hm;
    }

    public FrameLayout cJ() {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView != null) {
            FrameLayout videoFrameLayout = fullRewardExpressView.getVideoFrameLayout();
            if (this.hm.ABk()) {
                zc();
            }
            return videoFrameLayout;
        }
        return null;
    }

    public boolean ac() {
        return this.ac;
    }

    public void Qhi(boolean z) {
        this.ac = z;
    }

    public boolean CJ() {
        return this.CJ;
    }

    public void cJ(boolean z) {
        this.CJ = z;
    }

    public void Qhi(Sf sf, com.bytedance.sdk.openadsdk.core.nativeexpress.ROR ror) {
        tP tPVar;
        if (this.hm == null || (tPVar = this.ROR) == null) {
            return;
        }
        this.Qhi = Qhi(tPVar);
        sf.Qhi(this.hm);
        sf.Qhi(this.Qhi);
        this.hm.setClickListener(sf);
        ror.Qhi((View) this.hm);
        ror.Qhi(this.Qhi);
        this.hm.setClickCreativeListener(ror);
    }

    private com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl Qhi(tP tPVar) {
        if (tPVar.ip() == 4) {
            return com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh.Qhi(this.Tgh, tPVar, this.Sf);
        }
        return null;
    }

    public void Qhi(ABk aBk) {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressVideoListenerProxy(aBk);
    }

    public void Qhi(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.setExpressInteractionListener(pAGExpressAdWrapperListener);
    }

    public Handler fl() {
        if (this.cJ == null) {
            this.cJ = new Handler(Looper.getMainLooper());
        }
        return this.cJ;
    }

    public void Tgh() {
        if (this.Gm) {
            return;
        }
        this.Gm = true;
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.Gm();
        }
        Handler handler = this.cJ;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public void ROR() {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.WAv();
        }
    }

    public boolean Sf() {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView == null) {
            return false;
        }
        return fullRewardExpressView.ABk();
    }

    public int hm() {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.getDynamicShowType();
        }
        return 0;
    }

    public JSONObject Qhi(JSONObject jSONObject) {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView != null) {
            return fullRewardExpressView.Qhi(jSONObject, this.WAv.cJ);
        }
        return null;
    }

    public void WAv() {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.Sf();
    }

    public void Gm() {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView == null) {
            return;
        }
        fullRewardExpressView.hm();
        this.hm.WAv();
    }

    public void zc() {
        if (tP.fl(this.ROR) && this.ROR.aP() == 3 && this.ROR.NFd() == 0) {
            try {
                if (this.ROR.SL() == 1) {
                    int cJ = zn.cJ(HzH.Qhi(), 90.0f);
                    FrameLayout frameLayout = (FrameLayout) this.hm.getBackupContainerBackgroundView();
                    if (frameLayout != null) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
                        layoutParams.bottomMargin = cJ;
                        frameLayout.setLayoutParams(layoutParams);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void Qhi(int i, boolean z) {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.Qhi(i, z);
        }
    }

    public void Qhi(int i, String str) {
        FullRewardExpressView fullRewardExpressView = this.hm;
        if (fullRewardExpressView != null) {
            fullRewardExpressView.cJ(i, str);
        }
    }
}
