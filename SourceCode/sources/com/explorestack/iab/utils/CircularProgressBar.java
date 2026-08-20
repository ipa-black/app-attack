package com.explorestack.iab.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import androidx.core.internal.view.SupportMenu;
/* loaded from: classes2.dex */
public final class CircularProgressBar extends ProgressBar implements IabElement {

    /* renamed from: a  reason: collision with root package name */
    public b f9384a;

    /* renamed from: b  reason: collision with root package name */
    public final Paint f9385b;

    public CircularProgressBar(Context context) {
        super(context);
        Paint paint = new Paint(1);
        this.f9385b = paint;
        paint.setColor(0);
        a(context);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Paint paint = new Paint(1);
        this.f9385b = paint;
        paint.setColor(0);
        a(context);
    }

    public CircularProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Paint paint = new Paint(1);
        this.f9385b = paint;
        paint.setColor(0);
        a(context);
    }

    public void a(Context context) {
        float f2 = getResources().getDisplayMetrics().density;
        int dpToPx = Utils.dpToPx(context, 8.0f);
        setPadding(dpToPx, dpToPx, dpToPx, dpToPx);
        b bVar = new b(context);
        this.f9384a = bVar;
        bVar.c(f2 * 4.0f);
        this.f9384a.a(SupportMenu.CATEGORY_MASK);
        this.f9384a.a(Paint.Cap.ROUND);
        setIndeterminateDrawable(this.f9384a);
        setIndeterminate(true);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onDraw(Canvas canvas) {
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, Math.min(getWidth(), getHeight()) / 2.0f, this.f9385b);
        super.onDraw(canvas);
    }

    @Override // android.widget.ProgressBar, android.view.View
    public synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f9384a.a((Math.min((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) / 2.0f) - this.f9384a.a());
    }

    public void setColorSchemeColors(int... iArr) {
        this.f9384a.a(iArr);
    }

    public void setProgressBackgroundColor(int i) {
        this.f9385b.setColor(i);
    }

    @Override // com.explorestack.iab.utils.IabElement
    public void setStyle(IabElementStyle iabElementStyle) {
        this.f9384a.c(iabElementStyle.getStrokeWidth(getContext()).floatValue());
        this.f9384a.a(iabElementStyle.getStrokeColor().intValue());
        this.f9385b.setColor(iabElementStyle.getFillColor().intValue());
        postInvalidate();
    }
}
