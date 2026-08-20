package com.bytedance.sdk.openadsdk.layout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.View;
/* loaded from: classes2.dex */
public class TTProgressIndicator extends View {
    private final Paint Qhi;
    private float ac;
    private float cJ;

    public TTProgressIndicator(Context context) {
        super(context);
        setBackgroundColor(Color.parseColor("#8A8A8A"));
        Paint paint = new Paint();
        this.Qhi = paint;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.ROUND);
    }

    public void setProgress(float f2) {
        this.ac = getWidth() * f2;
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f2 = i2;
        this.cJ = (1.0f * f2) / 2.0f;
        this.Qhi.setStrokeWidth(f2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f2 = this.ac;
        if (f2 > 0.0f) {
            float f3 = this.cJ;
            canvas.drawLine(0.0f, f3, f2, f3, this.Qhi);
        }
    }
}
