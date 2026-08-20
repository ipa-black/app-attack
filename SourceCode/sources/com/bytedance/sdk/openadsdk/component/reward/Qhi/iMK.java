package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.PAGFullScreenLoadingLayout;
import com.bytedance.sdk.openadsdk.core.widget.PAGLoadingBar;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ExoPlayer;
/* compiled from: RewardFullVideoLoadingManager.java */
/* loaded from: classes2.dex */
public class iMK {
    private final int CJ;
    PAGLoadingBar Qhi;
    private AnimatorSet ROR;
    private PAGFullScreenLoadingLayout Tgh;
    private final Context ac;
    private final tP cJ;
    private final Qhi fl;

    public iMK(Qhi qhi) {
        this.ac = qhi.ip;
        this.cJ = qhi.cJ;
        this.CJ = qhi.Dq;
        this.fl = qhi;
    }

    public void Qhi() {
        try {
            if (bxS.Gm(this.cJ)) {
                return;
            }
            PAGFullScreenLoadingLayout pAGFullScreenLoadingLayout = new PAGFullScreenLoadingLayout(this.ac);
            this.Tgh = pAGFullScreenLoadingLayout;
            this.Qhi = pAGFullScreenLoadingLayout.getLoadingProgressBar();
            PAGTextView downloadButton = this.Tgh.getDownloadButton();
            if (downloadButton != null) {
                downloadButton.setOnClickListener(this.fl.aP.fl());
            }
            this.Tgh.Qhi(this.cJ, this.CJ);
        } catch (Throwable unused) {
        }
    }

    public void cJ() {
        ValueAnimator ofInt = ValueAnimator.ofInt(1, 80);
        ofInt.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.iMK.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                if (iMK.this.Qhi != null) {
                    iMK.this.Qhi.setProgress(intValue);
                }
            }
        });
        ValueAnimator ofInt2 = ValueAnimator.ofInt(81, 99);
        ofInt2.setDuration(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        ofInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.iMK.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                if (iMK.this.Qhi != null) {
                    iMK.this.Qhi.setProgress(intValue);
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.ROR = animatorSet;
        animatorSet.play(ofInt).before(ofInt2);
        this.ROR.start();
    }

    public void ac() {
        AnimatorSet animatorSet = this.ROR;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public View CJ() {
        return this.Tgh;
    }
}
