package com.appsgeyser.multiTabApp.ui.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
/* loaded from: classes2.dex */
public class TransparentPanel extends RelativeLayout {
    private Paint borderPaint;
    private Paint innerPaint;

    public TransparentPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public TransparentPanel(Context context) {
        super(context);
        init();
    }

    private void init() {
        Paint paint = new Paint();
        this.innerPaint = paint;
        paint.setARGB(225, 75, 75, 75);
        this.innerPaint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.borderPaint = paint2;
        paint2.setARGB(255, 160, 160, 160);
        this.borderPaint.setAntiAlias(true);
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(2.0f);
    }

    public void setInnerPaint(Paint paint) {
        this.innerPaint = paint;
    }

    public void setBorderPaint(Paint paint) {
        this.borderPaint = paint;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        RectF rectF = new RectF();
        rectF.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
        canvas.drawRoundRect(rectF, 10.0f, 10.0f, this.innerPaint);
        canvas.drawRoundRect(rectF, 10.0f, 10.0f, this.borderPaint);
        super.dispatchDraw(canvas);
    }
}
