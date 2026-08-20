package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.utils.MQ;
/* loaded from: classes2.dex */
public class SlideRightView extends FrameLayout {
    private ImageView CJ;
    private Context Qhi;
    private AnimatorSet ROR;
    private AnimatorSet Sf;
    private AnimatorSet Tgh;
    private ImageView ac;
    private ImageView cJ;
    private TextView fl;
    private AnimatorSet hm;

    public SlideRightView(Context context) {
        super(context);
        this.Tgh = new AnimatorSet();
        this.ROR = new AnimatorSet();
        this.Sf = new AnimatorSet();
        this.hm = new AnimatorSet();
        this.Qhi = context;
        ac();
    }

    private void ac() {
        ImageView imageView = new ImageView(this.Qhi);
        this.CJ = imageView;
        imageView.setBackgroundResource(MQ.CJ(this.Qhi, "tt_splash_slide_right_bg"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, -2);
        layoutParams.gravity = 48;
        layoutParams.leftMargin = (int) CQU.Qhi(this.Qhi, 30.0f);
        addView(this.CJ, layoutParams);
        setClipChildren(false);
        setClipToPadding(false);
        ImageView imageView2 = new ImageView(this.Qhi);
        this.ac = imageView2;
        imageView2.setImageResource(MQ.CJ(this.Qhi, "tt_splash_slide_right_circle"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) CQU.Qhi(this.Qhi, 50.0f), (int) CQU.Qhi(this.Qhi, 50.0f));
        layoutParams2.gravity = 48;
        layoutParams2.leftMargin = (int) CQU.Qhi(this.Qhi, 30.0f);
        addView(this.ac, layoutParams2);
        ImageView imageView3 = new ImageView(this.Qhi);
        this.cJ = imageView3;
        imageView3.setImageResource(MQ.CJ(this.Qhi, "tt_splash_hand2"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) CQU.Qhi(this.Qhi, 80.0f), (int) CQU.Qhi(this.Qhi, 80.0f));
        layoutParams3.gravity = 48;
        layoutParams3.leftMargin = (int) CQU.Qhi(this.Qhi, 30.0f);
        addView(this.cJ, layoutParams3);
        TextView textView = new TextView(this.Qhi);
        this.fl = textView;
        textView.setTextColor(-1);
        this.fl.setSingleLine();
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 80;
        addView(this.fl, layoutParams4);
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.1
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) SlideRightView.this.cJ.getLayoutParams();
                layoutParams5.topMargin = (int) ((SlideRightView.this.ac.getMeasuredHeight() / 2.0f) - CQU.Qhi(SlideRightView.this.getContext(), 7.0f));
                layoutParams5.leftMargin = (-SlideRightView.this.ac.getMeasuredWidth()) + ((int) CQU.Qhi(SlideRightView.this.Qhi, 30.0f));
                layoutParams5.setMarginStart(layoutParams5.leftMargin);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                SlideRightView.this.cJ.setLayoutParams(layoutParams5);
                FrameLayout.LayoutParams layoutParams6 = (FrameLayout.LayoutParams) SlideRightView.this.CJ.getLayoutParams();
                layoutParams6.topMargin = (int) ((SlideRightView.this.ac.getMeasuredHeight() / 2.0f) - CQU.Qhi(SlideRightView.this.getContext(), 5.0f));
                layoutParams6.leftMargin = (int) ((SlideRightView.this.ac.getMeasuredWidth() / 2.0f) + ((int) CQU.Qhi(SlideRightView.this.Qhi, 30.0f)));
                layoutParams5.setMarginStart(layoutParams5.leftMargin);
                layoutParams5.setMarginEnd(layoutParams5.rightMargin);
                SlideRightView.this.CJ.setLayoutParams(layoutParams6);
            }
        });
    }

    private void CJ() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.cJ, "alpha", 0.0f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.ac, "scaleX", 0.0f, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.ac, "scaleY", 0.0f, 1.0f);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(this.CJ, "alpha", 0.0f, 1.0f);
        this.Sf.setDuration(300L);
        this.Sf.playTogether(ofFloat, ofFloat2, ofFloat3, ofFloat4);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(this.cJ, "translationX", 0.0f, CQU.Qhi(getContext(), 90.0f));
        ofFloat5.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ValueAnimator ofInt = ValueAnimator.ofInt(0, (int) CQU.Qhi(getContext(), 90.0f));
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SlideRightView.this.CJ.getLayoutParams();
                layoutParams.width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                SlideRightView.this.CJ.setLayoutParams(layoutParams);
            }
        });
        ofInt.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        ObjectAnimator ofFloat6 = ObjectAnimator.ofFloat(this.ac, "translationX", 0.0f, CQU.Qhi(getContext(), 90.0f));
        ofFloat6.setInterpolator(new PathInterpolator(0.2f, 0.0f, 0.3f, 1.0f));
        this.hm.setDuration(1500L);
        this.hm.playTogether(ofFloat5, ofInt, ofFloat6);
        ObjectAnimator ofFloat7 = ObjectAnimator.ofFloat(this.cJ, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat8 = ObjectAnimator.ofFloat(this.CJ, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat9 = ObjectAnimator.ofFloat(this.ac, "alpha", 1.0f, 0.0f);
        this.ROR.setDuration(50L);
        this.ROR.playTogether(ofFloat7, ofFloat8, ofFloat9);
        this.Tgh.playSequentially(this.Sf, this.hm, this.ROR);
    }

    public void Qhi() {
        CJ();
        this.Tgh.start();
        this.Tgh.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                SlideRightView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.SlideRightView.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SlideRightView.this.Tgh.start();
                    }
                }, 200L);
            }
        });
    }

    public void cJ() {
        try {
            AnimatorSet animatorSet = this.Tgh;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = this.Sf;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet animatorSet3 = this.hm;
            if (animatorSet3 != null) {
                animatorSet3.cancel();
            }
            AnimatorSet animatorSet4 = this.ROR;
            if (animatorSet4 != null) {
                animatorSet4.cancel();
            }
        } catch (Throwable unused) {
        }
    }

    public void setGuideText(String str) {
        this.fl.setText(str);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }
}
