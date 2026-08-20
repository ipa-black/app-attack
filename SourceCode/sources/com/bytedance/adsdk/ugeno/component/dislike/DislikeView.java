package com.bytedance.adsdk.ugeno.component.dislike;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.bytedance.adsdk.ugeno.ac;
import com.bytedance.adsdk.ugeno.component.cJ;
/* loaded from: classes2.dex */
public class DislikeView extends View {
    private RectF CJ;
    private ac Qhi;
    private float ROR;
    private Paint Sf;
    private Paint Tgh;
    private int ac;
    private int cJ;
    private Paint fl;
    private int hm;

    public DislikeView(Context context) {
        super(context);
        Qhi();
    }

    private void Qhi() {
        Paint paint = new Paint();
        this.fl = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.Sf = paint2;
        paint2.setAntiAlias(true);
        Paint paint3 = new Paint();
        this.Tgh = paint3;
        paint3.setAntiAlias(true);
        setBackgroundColor(0);
    }

    public void setRadius(float f2) {
        this.ROR = f2;
    }

    public void setDislikeColor(int i) {
        this.Sf.setColor(i);
    }

    public void setDislikeWidth(int i) {
        this.Sf.setStrokeWidth(i);
    }

    public void setStrokeColor(int i) {
        this.fl.setStyle(Paint.Style.STROKE);
        this.fl.setColor(i);
    }

    public void setStrokeWidth(int i) {
        this.fl.setStrokeWidth(i);
        this.hm = i;
    }

    public void setBgColor(int i) {
        this.Tgh.setStyle(Paint.Style.FILL);
        this.Tgh.setColor(i);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        setBackgroundColor(0);
        RectF rectF = this.CJ;
        float f2 = this.ROR;
        canvas.drawRoundRect(rectF, f2, f2, this.Tgh);
        RectF rectF2 = this.CJ;
        float f3 = this.ROR;
        canvas.drawRoundRect(rectF2, f3, f3, this.fl);
        int i = this.cJ;
        int i2 = this.ac;
        canvas.drawLine(i * 0.3f, i2 * 0.3f, i * 0.7f, i2 * 0.7f, this.Sf);
        int i3 = this.cJ;
        int i4 = this.ac;
        canvas.drawLine(i3 * 0.7f, i4 * 0.3f, i3 * 0.3f, i4 * 0.7f, this.Sf);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.cJ = i;
        this.ac = i2;
        int i5 = this.hm;
        this.CJ = new RectF(i5, i5, this.cJ - i5, this.ac - i5);
    }

    public void Qhi(cJ cJVar) {
        this.Qhi = cJVar;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ac acVar = this.Qhi;
        if (acVar != null) {
            acVar.Tgh();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ac acVar = this.Qhi;
        if (acVar != null) {
            acVar.ROR();
        }
    }
}
