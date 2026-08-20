package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.utils.MQ;
import com.google.android.material.badge.BadgeDrawable;
/* loaded from: classes2.dex */
public class PressInteractView extends FrameLayout {
    private AnimatorSet CJ;
    private Context Qhi;
    private TextView Tgh;
    private SplashDiffuseView ac;
    private ImageView cJ;
    private boolean fl;

    public PressInteractView(Context context) {
        super(context);
        this.fl = true;
        this.Qhi = context;
        this.CJ = new AnimatorSet();
        ac();
        CJ();
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.PressInteractView.1
            @Override // java.lang.Runnable
            public void run() {
                int Qhi = (int) CQU.Qhi(PressInteractView.this.Qhi, 50.0f);
                int Qhi2 = (int) CQU.Qhi(PressInteractView.this.Qhi, 50.0f);
                if (PressInteractView.this.ac.getMeasuredHeight() > 0) {
                    Qhi = PressInteractView.this.ac.getMeasuredHeight();
                }
                if (PressInteractView.this.ac.getMeasuredWidth() > 0) {
                    Qhi2 = PressInteractView.this.ac.getMeasuredWidth();
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) PressInteractView.this.cJ.getLayoutParams();
                layoutParams.topMargin = ((int) ((Qhi / 2.0f) - CQU.Qhi(PressInteractView.this.getContext(), 5.0f))) + ((int) CQU.Qhi(PressInteractView.this.Qhi, 40.0f));
                layoutParams.leftMargin = ((int) ((Qhi2 / 2.0f) - CQU.Qhi(PressInteractView.this.getContext(), 5.0f))) + ((int) CQU.Qhi(PressInteractView.this.Qhi, 20.0f));
                layoutParams.bottomMargin = (int) (((-Qhi) / 2.0f) + CQU.Qhi(PressInteractView.this.getContext(), 5.0f));
                layoutParams.rightMargin = (int) (((-Qhi2) / 2.0f) + CQU.Qhi(PressInteractView.this.getContext(), 5.0f));
                layoutParams.setMarginStart(layoutParams.leftMargin);
                layoutParams.setMarginEnd(layoutParams.rightMargin);
                PressInteractView.this.cJ.setLayoutParams(layoutParams);
            }
        });
    }

    private void ac() {
        this.ac = new SplashDiffuseView(this.Qhi);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) CQU.Qhi(this.Qhi, 50.0f), (int) CQU.Qhi(this.Qhi, 50.0f));
        layoutParams.gravity = BadgeDrawable.TOP_START;
        layoutParams.topMargin = (int) CQU.Qhi(this.Qhi, 40.0f);
        layoutParams.leftMargin = (int) CQU.Qhi(this.Qhi, 20.0f);
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        addView(this.ac, layoutParams);
        this.cJ = new ImageView(this.Qhi);
        ViewGroup.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) CQU.Qhi(this.Qhi, 78.0f), (int) CQU.Qhi(this.Qhi, 78.0f));
        this.cJ.setImageResource(MQ.CJ(this.Qhi, "tt_splash_hand"));
        addView(this.cJ, layoutParams2);
        TextView textView = new TextView(this.Qhi);
        this.Tgh = textView;
        textView.setTextColor(-1);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        layoutParams3.bottomMargin = (int) CQU.Qhi(this.Qhi, 10.0f);
        addView(this.Tgh, layoutParams3);
        this.Tgh.setVisibility(8);
    }

    private void CJ() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.cJ, "scaleX", 1.0f, 1.0f, 1.0f, 0.9f);
        ofFloat.setDuration(600L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.widget.PressInteractView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(PressInteractView.this.cJ, "alpha", 0.0f, 1.0f);
                ofFloat2.setDuration(200L);
                ofFloat2.setInterpolator(new LinearInterpolator());
                ofFloat2.start();
                PressInteractView.this.cJ.setVisibility(0);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                if (PressInteractView.this.fl) {
                    PressInteractView.this.ac.Qhi();
                }
                PressInteractView pressInteractView = PressInteractView.this;
                pressInteractView.fl = !pressInteractView.fl;
            }
        });
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.cJ, "scaleY", 1.0f, 1.0f, 1.0f, 0.9f);
        ofFloat2.setDuration(600L);
        ofFloat2.setRepeatMode(2);
        ofFloat2.setRepeatCount(-1);
        this.CJ.playTogether(ofFloat, ofFloat2);
    }

    public void setGuideText(String str) {
        this.Tgh.setVisibility(0);
        this.Tgh.setText(str);
    }

    public void setGuideTextColor(int i) {
        this.Tgh.setTextColor(i);
    }

    public void Qhi() {
        this.CJ.start();
    }

    public void cJ() {
        AnimatorSet animatorSet = this.CJ;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        SplashDiffuseView splashDiffuseView = this.ac;
        if (splashDiffuseView != null) {
            splashDiffuseView.cJ();
        }
        ImageView imageView = this.cJ;
        if (imageView != null) {
            imageView.clearAnimation();
        }
    }
}
