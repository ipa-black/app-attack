package com.bytedance.sdk.openadsdk.core.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
/* loaded from: classes2.dex */
public class TwoSemicirclesView extends View {
    private Paint CJ;
    private final RectF Qhi;
    private float ROR;
    private float Tgh;
    private int ac;
    private int cJ;
    private Paint fl;

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.cJ = i;
        this.ac = i2;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.Qhi;
        float f2 = this.ROR;
        rectF.set(-f2, -f2, f2, f2);
        canvas.translate(this.cJ / 2, this.ac / 2);
        canvas.drawArc(this.Qhi, this.Tgh, 180.0f, false, this.CJ);
        canvas.drawArc(this.Qhi, this.Tgh + 180.0f, 180.0f, false, this.fl);
    }

    public void setCurrentStartAngle(float f2) {
        this.Tgh = f2;
        postInvalidate();
    }

    public void setRadius(float f2) {
        this.ROR = f2;
        postInvalidate();
    }

    public void setPaintOne(Paint paint) {
        this.CJ = paint;
        postInvalidate();
    }

    public Paint getPaintOne() {
        return this.CJ;
    }

    public void setPaintTwo(Paint paint) {
        this.fl = paint;
        postInvalidate();
    }

    public Paint getPaintTwo() {
        return this.fl;
    }
}
