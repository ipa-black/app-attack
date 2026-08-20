package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.model.bxS;
/* compiled from: RewardFullDislikeManager.java */
/* loaded from: classes2.dex */
public class ac {
    private final Qhi Qhi;
    private TTAdDislikeToast ac;
    private TTAdDislikeDialog cJ;

    public ac(Qhi qhi) {
        this.Qhi = qhi;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar) {
        if (this.Qhi.FQ.isFinishing()) {
            return;
        }
        if (this.Qhi.zc.get()) {
            this.ac.Qhi(TTAdDislikeToast.getDislikeTip());
            return;
        }
        if (this.cJ == null) {
            try {
                cJ(cJVar);
            } catch (Throwable th) {
                ApmHelper.reportCustomError("initDislike error", "RewardFullDislikeManager", th);
            }
        }
        TTAdDislikeDialog tTAdDislikeDialog = this.cJ;
        if (tTAdDislikeDialog != null) {
            tTAdDislikeDialog.Qhi();
        }
    }

    public void Qhi() {
        TTAdDislikeToast tTAdDislikeToast = this.ac;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.cJ();
        }
    }

    public void cJ() {
        TTAdDislikeToast tTAdDislikeToast = this.ac;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.ac();
        }
    }

    private void cJ(final com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar) {
        if (this.cJ == null) {
            TTAdDislikeDialog tTAdDislikeDialog = new TTAdDislikeDialog(this.Qhi.FQ, this.Qhi.cJ);
            this.cJ = tTAdDislikeDialog;
            tTAdDislikeDialog.setCallback(new TTAdDislikeDialog.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.ac.1
                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                public void Qhi(View view) {
                    ac.this.Qhi.Gm.set(true);
                    String str = "landing_page";
                    if (!com.bytedance.sdk.openadsdk.core.model.HzH.cJ(ac.this.Qhi.cJ) && !com.bytedance.sdk.openadsdk.core.model.HzH.ac(ac.this.Qhi.cJ) && !com.bytedance.sdk.openadsdk.core.model.HzH.CJ(ac.this.Qhi.cJ)) {
                        if (ac.this.Qhi.WAv.get()) {
                            if (!bxS.cJ(ac.this.Qhi.cJ)) {
                                if (!ac.this.Qhi.cJ.js()) {
                                    str = "endcard";
                                }
                            } else {
                                str = "playable";
                            }
                        } else {
                            str = "video_player";
                        }
                    }
                    ac.this.cJ.setDislikeSource(str);
                    if (ac.this.Qhi.bxS.fl) {
                        if (ac.this.Qhi.pM != null) {
                            ac.this.Qhi.pM.Qhi(8, false);
                            return;
                        }
                        return;
                    }
                    cJVar.hpZ();
                    if (ac.this.Qhi.bxS.cJ()) {
                        ac.this.Qhi.bxS.pA();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                public void cJ(View view) {
                    ac.this.Qhi.Gm.set(false);
                    if (ac.this.Qhi.bxS.fl) {
                        if (ac.this.Qhi.pM != null) {
                            ac.this.Qhi.pM.Qhi(0, true);
                            return;
                        }
                        return;
                    }
                    ac.this.Qhi.bxS.Qhi(cJVar);
                    if (ac.this.Qhi.bxS.CJ()) {
                        ac.this.Qhi.bxS.iMK();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                public void Qhi(int i, FilterWord filterWord) {
                    if (ac.this.Qhi.zc.get() || filterWord == null || filterWord.hasSecondOptions()) {
                        return;
                    }
                    ac.this.Qhi.zc.set(true);
                    ac.this.ac();
                }
            });
            ((FrameLayout) this.Qhi.FQ.findViewById(16908290)).addView(this.cJ);
        }
        if (this.ac == null) {
            this.ac = new TTAdDislikeToast(this.Qhi.FQ);
            ((FrameLayout) this.Qhi.FQ.findViewById(16908290)).addView(this.ac);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac() {
        this.ac.Qhi(TTAdDislikeToast.getDislikeSendTip());
    }
}
