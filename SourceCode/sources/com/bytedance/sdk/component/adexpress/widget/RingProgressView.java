package com.bytedance.sdk.component.adexpress.widget;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
/* loaded from: classes2.dex */
public class RingProgressView extends View {
    private float CJ;
    private Context Qhi;
    private boolean ROR;
    private int Tgh;
    private RectF ac;
    private Paint cJ;
    private ValueAnimator fl;

    public RingProgressView(Context context) {
        super(context);
        this.Tgh = 1500;
        this.Qhi = context;
        Paint paint = new Paint();
        this.cJ = paint;
        paint.setAntiAlias(true);
        this.cJ.setStyle(Paint.Style.STROKE);
        this.cJ.setStrokeWidth(10.0f);
        this.cJ.setColor(Color.parseColor("#80FFFFFF"));
        this.ac = new RectF();
    }

    public void Qhi() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 360.0f);
        this.fl = ofFloat;
        ofFloat.setDuration(this.Tgh);
        this.fl.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.RingProgressView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RingProgressView.this.CJ = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                RingProgressView.this.requestLayout();
            }
        });
        this.fl.start();
    }

    public void cJ() {
        ValueAnimator valueAnimator = this.fl;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void ac() {
        this.ROR = true;
        invalidate();
    }

    public void setDuration(int i) {
        this.Tgh = i;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.ROR) {
            return;
        }
        canvas.drawArc(this.ac, 270.0f, this.CJ, false, this.cJ);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.ac.set(5.0f, 5.0f, i - 5, i2 - 5);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }
}
