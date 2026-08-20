package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class TTRatingBar2 extends View {
    private Drawable CJ;
    private final Path Qhi;
    private float Tgh;
    private int ac;
    private final boolean cJ;
    private Drawable fl;

    public TTRatingBar2(Context context) {
        this(context, false);
    }

    public TTRatingBar2(Context context, boolean z) {
        super(context);
        this.Qhi = new Path();
        this.cJ = z;
        Qhi();
    }

    private void Qhi() {
        Context context = getContext();
        this.CJ = MQ.ac(context, this.cJ ? "tt_star_thick_dark" : "tt_star_thick");
        this.fl = MQ.ac(context, "tt_star");
    }

    public void Qhi(double d2, int i) {
        int Qhi = (int) zn.Qhi(getContext(), i, false);
        this.ac = Qhi;
        this.CJ.setBounds(0, 0, Qhi, Qhi);
        Drawable drawable = this.fl;
        int i2 = this.ac;
        drawable.setBounds(0, 0, i2, i2);
        this.Tgh = ((float) d2) / 5.0f;
        cJ();
        requestLayout();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        cJ();
    }

    private void cJ() {
        int width = getWidth();
        int height = getHeight();
        if (this.Tgh <= 0.0f || width <= 0 || height <= 0) {
            return;
        }
        this.Qhi.reset();
        this.Qhi.addRect(new RectF(0.0f, 0.0f, width * this.Tgh, height), Path.Direction.CCW);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(this.ac * 5, 1073741824), View.MeasureSpec.makeMeasureSpec(this.ac, 1073741824));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.ac <= 0) {
            return;
        }
        int save = canvas.save();
        for (int i = 0; i < 5; i++) {
            this.CJ.draw(canvas);
            canvas.translate(this.ac, 0.0f);
        }
        canvas.restoreToCount(save);
        canvas.clipPath(this.Qhi);
        for (int i2 = 0; i2 < 5; i2++) {
            this.fl.draw(canvas);
            canvas.translate(this.ac, 0.0f);
        }
    }
}
