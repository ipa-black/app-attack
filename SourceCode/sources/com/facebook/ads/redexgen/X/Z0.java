package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
/* loaded from: assets/audience_network.dex */
public class Z0 implements C2T {
    public final /* synthetic */ C1249Yz A00;

    public Z0(C1249Yz c1249Yz) {
        this.A00 = c1249Yz;
    }

    @Override // com.facebook.ads.redexgen.X.C2T
    public final void A4w(Canvas canvas, RectF rectF, float f2, Paint paint) {
        float f3 = f2 * 2.0f;
        float width = (rectF.width() - f3) - 1.0f;
        float height = (rectF.height() - f3) - 1.0f;
        Canvas canvas2 = canvas;
        Paint paint2 = paint;
        if (f2 >= 1.0f) {
            float f4 = f2 + 0.5f;
            this.A00.A00.set(-f4, -f4, f4, f4);
            int save = canvas2.save();
            canvas2.translate(rectF.left + f4, rectF.top + f4);
            canvas2.drawArc(this.A00.A00, 180.0f, 90.0f, true, paint2);
            canvas2.translate(width, 0.0f);
            canvas2.rotate(90.0f);
            canvas2.drawArc(this.A00.A00, 180.0f, 90.0f, true, paint2);
            canvas2.translate(height, 0.0f);
            canvas2.rotate(90.0f);
            canvas2.drawArc(this.A00.A00, 180.0f, 90.0f, true, paint2);
            canvas2.translate(width, 0.0f);
            canvas2.rotate(90.0f);
            canvas2 = canvas2;
            canvas2.drawArc(this.A00.A00, 180.0f, 90.0f, true, paint2);
            canvas2.restoreToCount(save);
            float innerWidth = rectF.top;
            float innerHeight = (rectF.right - f4) + 1.0f;
            float roundedCornerRadius = rectF.top + f4;
            canvas2.drawRect((rectF.left + f4) - 1.0f, innerWidth, innerHeight, roundedCornerRadius, paint2);
            float innerWidth2 = rectF.bottom - f4;
            float innerHeight2 = (rectF.right - f4) + 1.0f;
            float roundedCornerRadius2 = rectF.bottom;
            paint2 = paint2;
            canvas2.drawRect((rectF.left + f4) - 1.0f, innerWidth2, innerHeight2, roundedCornerRadius2, paint2);
        }
        float f5 = rectF.left;
        float innerWidth3 = rectF.top + f2;
        float innerHeight3 = rectF.right;
        canvas2.drawRect(f5, innerWidth3, innerHeight3, rectF.bottom - f2, paint2);
    }
}
