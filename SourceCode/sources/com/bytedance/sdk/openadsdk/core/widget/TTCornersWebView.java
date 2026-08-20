package com.bytedance.sdk.openadsdk.core.widget;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.webkit.WebView;
/* loaded from: classes2.dex */
public class TTCornersWebView extends WebView {
    private int CJ;
    private int Qhi;
    private int ac;
    private int cJ;
    private final float[] fl;

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.Qhi = getMeasuredWidth();
        this.cJ = getMeasuredHeight();
    }

    @Override // android.webkit.WebView, android.view.View
    public void onDraw(Canvas canvas) {
        this.ac = getScrollX();
        this.CJ = getScrollY();
        Path path = new Path();
        int i = this.CJ;
        path.addRoundRect(new RectF(0.0f, i, this.ac + this.Qhi, i + this.cJ), this.fl, Path.Direction.CW);
        canvas.clipPath(path);
        super.onDraw(canvas);
    }
}
