package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.view.animation.LinearInterpolator;
/* loaded from: classes2.dex */
public class RippleView extends View {
    private ValueAnimator CJ;
    private float Qhi;
    private float ROR;
    private float Sf;
    private long Tgh;
    private int WAv;
    private ValueAnimator ac;
    private float cJ;
    private Paint fl;
    private Animator.AnimatorListener hm;

    public RippleView(Context context, int i) {
        super(context);
        this.Tgh = 300L;
        this.ROR = 0.0f;
        this.WAv = i;
        Qhi();
    }

    public void Qhi() {
        Paint paint = new Paint(1);
        this.fl = paint;
        paint.setStyle(Paint.Style.FILL);
        this.fl.setColor(this.WAv);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.Qhi = i / 2.0f;
        this.cJ = i2 / 2.0f;
        this.Sf = (float) (Math.hypot(i, i2) / 2.0d);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.Qhi, this.cJ, this.ROR, this.fl);
    }

    public void cJ() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, this.Sf);
        this.ac = ofFloat;
        ofFloat.setDuration(this.Tgh);
        this.ac.setInterpolator(new LinearInterpolator());
        this.ac.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.RippleView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.ROR = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        this.ac.start();
    }

    public void ac() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.Sf, 0.0f);
        this.CJ = ofFloat;
        ofFloat.setDuration(this.Tgh);
        this.CJ.setInterpolator(new LinearInterpolator());
        this.CJ.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.RippleView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RippleView.this.ROR = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RippleView.this.invalidate();
            }
        });
        Animator.AnimatorListener animatorListener = this.hm;
        if (animatorListener != null) {
            this.CJ.addListener(animatorListener);
        }
        this.CJ.start();
    }

    public void setAnimationListener(Animator.AnimatorListener animatorListener) {
        this.hm = animatorListener;
    }
}
