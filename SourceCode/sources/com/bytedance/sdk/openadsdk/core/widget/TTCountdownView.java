package com.bytedance.sdk.openadsdk.core.widget;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class TTCountdownView extends View {
    public static final String Qhi = MQ.Qhi(HzH.Qhi(), "tt_count_down_view");
    private float ABk;
    private int CJ;
    private Paint Gm;
    private ValueAnimator HzH;
    private final String ROR;
    private Paint Sf;
    private float Tgh;
    private Paint WAv;
    private float ac;
    private float cJ;
    private float fl;
    private Paint hm;
    private AnimatorSet hpZ;
    private RectF iMK;
    private ValueAnimator kYc;
    private Qhi pA;
    private ValueAnimator tP;
    private float zc;

    /* loaded from: classes2.dex */
    public interface Qhi {
    }

    public float Qhi(float f2, float f3) {
        return f2 * f3;
    }

    public float Qhi(float f2, int i) {
        return i * f2;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824) {
            size = cJ();
        }
        if (mode2 != 1073741824) {
            size2 = cJ();
        }
        setMeasuredDimension(size, size2);
    }

    private int cJ() {
        return (int) ((((this.cJ / 2.0f) + this.ac) * 2.0f) + zn.cJ(getContext(), 4.0f));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.translate(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f);
        cJ(canvas);
        Qhi(canvas);
    }

    private void Qhi(Canvas canvas) {
        canvas.save();
        Paint.FontMetrics fontMetrics = this.Gm.getFontMetrics();
        String str = this.ROR;
        if (TextUtils.isEmpty(str)) {
            str = Qhi;
        }
        canvas.drawText(str, 0.0f, 0.0f - ((fontMetrics.ascent + fontMetrics.descent) / 2.0f), this.Gm);
        canvas.restore();
    }

    private void cJ(Canvas canvas) {
        canvas.save();
        float Qhi2 = Qhi(this.zc, 360);
        float f2 = this.CJ;
        canvas.drawCircle(0.0f, 0.0f, this.ac, this.hm);
        canvas.drawCircle(0.0f, 0.0f, this.ac, this.WAv);
        canvas.drawArc(this.iMK, f2, Qhi2, false, this.Sf);
        canvas.restore();
    }

    private ValueAnimator getNumAnim() {
        ValueAnimator valueAnimator = this.HzH;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.HzH = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.ABk, 0.0f);
        this.HzH = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.HzH.setDuration(Qhi(this.ABk, this.Tgh) * 1000.0f);
        this.HzH.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.TTCountdownView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownView.this.ABk = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownView.this.postInvalidate();
            }
        });
        return this.HzH;
    }

    private ValueAnimator getArcAnim() {
        ValueAnimator valueAnimator = this.kYc;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.kYc = null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.zc, 0.0f);
        this.kYc = ofFloat;
        ofFloat.setInterpolator(new LinearInterpolator());
        this.kYc.setDuration(Qhi(this.zc, this.fl) * 1000.0f);
        this.kYc.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.TTCountdownView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                TTCountdownView.this.zc = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                TTCountdownView.this.postInvalidate();
            }
        });
        return this.kYc;
    }

    public void Qhi() {
        AnimatorSet animatorSet = this.hpZ;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.hpZ = null;
        }
        ValueAnimator valueAnimator = this.tP;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.tP = null;
        }
        ValueAnimator valueAnimator2 = this.HzH;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.HzH = null;
        }
        ValueAnimator valueAnimator3 = this.kYc;
        if (valueAnimator3 != null) {
            valueAnimator3.cancel();
            this.kYc = null;
        }
        this.zc = 1.0f;
        this.ABk = 1.0f;
        invalidate();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        Qhi();
        super.onDetachedFromWindow();
    }

    public void setCountDownTime(int i) {
        float f2 = i;
        this.Tgh = f2;
        this.fl = f2;
        Qhi();
    }

    public Qhi getCountdownListener() {
        return this.pA;
    }

    public void setCountdownListener(Qhi qhi) {
        this.pA = qhi;
    }
}
