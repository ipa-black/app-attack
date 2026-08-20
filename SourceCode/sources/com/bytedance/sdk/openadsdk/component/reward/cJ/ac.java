package com.bytedance.sdk.openadsdk.component.reward.cJ;

import android.content.Context;
import android.graphics.Color;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.model.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: RewardFullLandingPageType.java */
/* loaded from: classes2.dex */
public class ac extends cJ {
    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void ROR() {
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public RFEndCardBackUpLayout Sf() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public boolean fl() {
        return true;
    }

    public ac(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        super(qhi);
    }

    public static boolean Qhi(tP tPVar) {
        return HzH.cJ(tPVar) || HzH.ac(tPVar) || HzH.CJ(tPVar);
    }

    public static void Qhi(tP tPVar, FrameLayout frameLayout, com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        if (HzH.cJ(tPVar)) {
            cJ(frameLayout);
        } else if (HzH.ac(tPVar) || HzH.CJ(tPVar)) {
            ac(frameLayout);
        } else {
            Qhi(frameLayout, qhi);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void cJ(FrameLayout frameLayout) {
        Context context = frameLayout.getContext();
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setOrientation(1);
        frameLayout.addView(pAGLinearLayout, new FrameLayout.LayoutParams(-1, -1));
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        pAGFrameLayout.setId(iMK.Jma);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        pAGLinearLayout.addView(pAGFrameLayout, layoutParams);
        PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(context);
        pAGFrameLayout2.setId(iMK.WAv);
        pAGFrameLayout.addView(pAGFrameLayout2, new FrameLayout.LayoutParams(-1, -1));
        pAGFrameLayout2.addView(Qhi(context));
        PAGFrameLayout pAGFrameLayout3 = new PAGFrameLayout(context);
        pAGFrameLayout3.setId(iMK.kYc);
        pAGFrameLayout3.setVisibility(8);
        pAGFrameLayout3.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        pAGFrameLayout2.addView(pAGFrameLayout3, layoutParams2);
        PAGImageView pAGImageView = new PAGImageView(context);
        pAGImageView.setId(iMK.tP);
        pAGImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        pAGFrameLayout3.addView(pAGImageView, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.reward.view.Qhi.cJ(pAGFrameLayout);
        PAGFrameLayout pAGFrameLayout4 = new PAGFrameLayout(context);
        pAGFrameLayout4.setId(iMK.MQ);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.0f;
        pAGLinearLayout.addView(pAGFrameLayout4, layoutParams3);
        pAGFrameLayout4.addView(cJ(context));
        LinearLayout ac = ac(context);
        ac.setBackgroundColor(Color.parseColor("#70161823"));
        pAGFrameLayout4.addView(ac);
        ac.addView(CJ(context));
        com.bytedance.sdk.openadsdk.component.reward.view.Qhi.Qhi(pAGFrameLayout4);
    }

    private static SSWebView cJ(Context context) {
        SSWebView sSWebView = new SSWebView(context, true);
        sSWebView.setId(iMK.qMt);
        sSWebView.setLayerType(2, null);
        sSWebView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return sSWebView;
    }

    private static LinearLayout ac(Context context) {
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setId(iMK.EBS);
        pAGLinearLayout.setOrientation(1);
        pAGLinearLayout.setVisibility(8);
        pAGLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        return pAGLinearLayout;
    }

    private static ImageView CJ(Context context) {
        PAGImageView pAGImageView = new PAGImageView(context);
        pAGImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        pAGImageView.setImageResource(MQ.CJ(context, "tt_up_slide"));
        pAGImageView.setId(iMK.bxS);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(zn.cJ(context, 18.0f), zn.cJ(context, 16.0f));
        layoutParams.gravity = 17;
        layoutParams.topMargin = zn.cJ(context, 45.0f);
        pAGImageView.setLayoutParams(layoutParams);
        return pAGImageView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void ac(FrameLayout frameLayout) {
        Context context = frameLayout.getContext();
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        pAGFrameLayout.setId(iMK.MQ);
        frameLayout.addView(pAGFrameLayout, new FrameLayout.LayoutParams(-1, -1));
        pAGFrameLayout.addView(cJ(context));
        LinearLayout ac = ac(context);
        ac.setBackgroundColor(Color.parseColor("#99161823"));
        pAGFrameLayout.addView(ac);
        ac.addView(CJ(context));
        com.bytedance.sdk.openadsdk.component.reward.view.Qhi.Qhi(pAGFrameLayout);
        PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(context);
        pAGFrameLayout2.setId(iMK.Jma);
        frameLayout.addView(pAGFrameLayout2, new FrameLayout.LayoutParams(-1, -1));
        PAGFrameLayout pAGFrameLayout3 = new PAGFrameLayout(context);
        pAGFrameLayout3.setId(iMK.WAv);
        pAGFrameLayout2.addView(pAGFrameLayout3, new FrameLayout.LayoutParams(-1, -1));
        pAGFrameLayout3.addView(Qhi(context));
        PAGFrameLayout pAGFrameLayout4 = new PAGFrameLayout(context);
        pAGFrameLayout4.setId(iMK.kYc);
        pAGFrameLayout4.setVisibility(8);
        pAGFrameLayout4.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        pAGFrameLayout3.addView(pAGFrameLayout4, layoutParams);
        PAGImageView pAGImageView = new PAGImageView(context);
        pAGImageView.setId(iMK.tP);
        pAGImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        pAGFrameLayout4.addView(pAGImageView, new FrameLayout.LayoutParams(-1, -1));
        com.bytedance.sdk.openadsdk.component.reward.view.Qhi.cJ(pAGFrameLayout2);
        PlayableLoadingView playableLoadingView = new PlayableLoadingView(context);
        playableLoadingView.setId(iMK.js);
        playableLoadingView.setClickable(true);
        playableLoadingView.setFocusable(true);
        frameLayout.addView(playableLoadingView, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void Qhi(RewardFullBaseLayout rewardFullBaseLayout) {
        Qhi(this.cJ, rewardFullBaseLayout, this.Qhi);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void ABk() {
        if (HzH.cJ(this.Qhi.cJ) && this.Qhi.es != null && this.Qhi.es.pA != null) {
            if (this.Qhi.es.pA.ac()) {
                this.Qhi.es.cJ(0);
                this.Qhi.hpZ.set(true);
            } else {
                this.Qhi.HzH.set(true);
                Qhi(true, false, true, 80);
            }
        }
        if (HzH.ac(this.Qhi.cJ) || HzH.CJ(this.Qhi.cJ)) {
            Qhi(true, false, true, 70);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public void Qhi(FrameLayout frameLayout) {
        if (!HzH.ac(this.Qhi.cJ) || this.Qhi.gga == null) {
            return;
        }
        this.Qhi.gga.Qhi(this.Qhi.cJ.hm().cJ() * 1000);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.cJ
    public boolean Tgh() {
        if (HzH.cJ(this.Qhi.cJ)) {
            return true;
        }
        return (HzH.ac(this.Qhi.cJ) || HzH.CJ(this.Qhi.cJ)) ? false : true;
    }
}
