package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.core.view.ViewCompat;
/* compiled from: DynamicShadowDrawable.java */
/* loaded from: classes2.dex */
public class ac extends Drawable {
    private RectF CJ;
    private Paint Qhi;
    private int ac;
    private int cJ;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public ac(int i, int i2) {
        this.ac = i;
        this.cJ = i2;
        Paint paint = new Paint();
        this.Qhi = paint;
        paint.setColor(0);
        this.Qhi.setAntiAlias(true);
        this.Qhi.setShadowLayer(i2, 0.0f, 0.0f, ViewCompat.MEASURED_STATE_MASK);
        this.Qhi.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        int i5 = this.cJ;
        this.CJ = new RectF(i + i5, i2 + i5, i3 - i5, i4 - i5);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        RectF rectF = this.CJ;
        int i = this.ac;
        canvas.drawRoundRect(rectF, i, i, this.Qhi);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.Qhi.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.Qhi.setColorFilter(colorFilter);
    }
}
