package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
/* compiled from: CoverDrawable.java */
/* loaded from: classes2.dex */
public class cJ extends GradientDrawable {
    protected Path Qhi;
    private final Paint cJ;

    public cJ() {
        this.Qhi = new Path();
        Paint paint = new Paint(1);
        this.cJ = paint;
        paint.setColor(-1);
    }

    public cJ(GradientDrawable.Orientation orientation, int[] iArr) {
        super(orientation, iArr);
        this.Qhi = new Path();
        Paint paint = new Paint(1);
        this.cJ = paint;
        paint.setColor(-1);
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Path path = this.Qhi;
        if (path == null || path.isEmpty()) {
            Qhi(canvas);
            return;
        }
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), this.cJ, 31);
        Qhi(canvas);
        this.cJ.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(this.Qhi, this.cJ);
        this.cJ.setXfermode(null);
        canvas.restoreToCount(saveLayer);
    }

    protected void Qhi(Canvas canvas) {
        super.draw(canvas);
    }

    public void Qhi(int i, int i2, int i3, int i4) {
        this.Qhi.addRect(i, i2, i3, i4, Path.Direction.CW);
        invalidateSelf();
    }
}
