package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
/* compiled from: BitmapCoverDrawable.java */
/* loaded from: classes2.dex */
public class Qhi extends cJ {
    private final Bitmap ac;
    private final Rect cJ = new Rect();
    private final Paint CJ = new Paint(1);

    public Qhi(Bitmap bitmap, cJ cJVar) {
        this.ac = bitmap;
        if (cJVar != null) {
            this.Qhi = cJVar.Qhi;
        }
    }

    @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        int height = rect.height();
        int width = rect.width();
        int width2 = this.ac.getWidth();
        int height2 = this.ac.getHeight();
        this.cJ.set(0, 0, width2, height2);
        if (height2 >= height && width2 >= width) {
            if (width2 > width) {
                this.cJ.left = (width2 - width) / 2;
                Rect rect2 = this.cJ;
                rect2.right = rect2.left + width;
            }
            if (height2 > height) {
                this.cJ.top = (height2 - height) / 2;
                Rect rect3 = this.cJ;
                rect3.bottom = rect3.top + height;
                return;
            }
            return;
        }
        float f2 = height;
        float f3 = f2 * 1.0f;
        float f4 = height2;
        float f5 = f3 / f4;
        float f6 = width;
        float f7 = 1.0f * f6;
        float f8 = width2;
        if (Math.max(f5, f7 / f8) > f5) {
            int i = (int) ((f3 / f6) * f8);
            this.cJ.top = (height2 - i) / 2;
            Rect rect4 = this.cJ;
            rect4.bottom = rect4.top + i;
            return;
        }
        int i2 = (int) ((f7 / f2) * f4);
        this.cJ.left = (width2 - i2) / 2;
        Rect rect5 = this.cJ;
        rect5.right = rect5.left + i2;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.cJ
    protected void Qhi(Canvas canvas) {
        canvas.drawBitmap(this.ac, this.cJ, getBounds(), this.CJ);
    }
}
