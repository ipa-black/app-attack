package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
/* loaded from: classes2.dex */
public class DislikeView extends View {
    private Paint CJ;
    private int Qhi;
    private Paint ROR;
    private int Sf;
    private int Tgh;
    private final RectF ac;
    private int cJ;
    private Paint fl;

    public DislikeView(Context context) {
        super(context);
        this.ac = new RectF();
        Qhi();
    }

    private void Qhi() {
        Paint paint = new Paint();
        this.CJ = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.ROR = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.fl = paint3;
        paint3.setAntiAlias(true);
    }

    public void setRadius(int i) {
        this.Tgh = i;
    }

    public void setDislikeColor(int i) {
        this.ROR.setColor(i);
    }

    public void setDislikeWidth(int i) {
        this.ROR.setStrokeWidth(i);
    }

    public void setStrokeColor(int i) {
        this.CJ.setStyle(Paint.Style.STROKE);
        this.CJ.setColor(i);
    }

    public void setStrokeWidth(int i) {
        this.CJ.setStrokeWidth(i);
        this.Sf = i;
    }

    public void setBgColor(int i) {
        this.fl.setStyle(Paint.Style.FILL);
        this.fl.setColor(i);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.ac;
        int i = this.Tgh;
        canvas.drawRoundRect(rectF, i, i, this.fl);
        RectF rectF2 = this.ac;
        int i2 = this.Tgh;
        canvas.drawRoundRect(rectF2, i2, i2, this.CJ);
        int i3 = this.Qhi;
        int i4 = this.cJ;
        canvas.drawLine(i3 * 0.3f, i4 * 0.3f, i3 * 0.7f, i4 * 0.7f, this.ROR);
        int i5 = this.Qhi;
        int i6 = this.cJ;
        canvas.drawLine(i5 * 0.7f, i6 * 0.3f, i5 * 0.3f, i6 * 0.7f, this.ROR);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.Qhi = i;
        this.cJ = i2;
        RectF rectF = this.ac;
        int i5 = this.Sf;
        rectF.set(i5, i5, i - i5, i2 - i5);
    }
}
