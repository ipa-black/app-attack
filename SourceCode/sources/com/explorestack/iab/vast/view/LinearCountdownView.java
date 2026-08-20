package com.explorestack.iab.vast.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.IabElement;
import com.explorestack.iab.utils.IabElementStyle;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2.dex */
public class LinearCountdownView extends View implements IabElement {

    /* renamed from: a  reason: collision with root package name */
    public final Paint f9659a;

    /* renamed from: b  reason: collision with root package name */
    public float f9660b;

    /* renamed from: c  reason: collision with root package name */
    public float f9661c;

    /* renamed from: d  reason: collision with root package name */
    public int f9662d;

    /* renamed from: e  reason: collision with root package name */
    public int f9663e;

    public LinearCountdownView(Context context) {
        super(context);
        this.f9659a = new Paint(1);
        this.f9660b = 0.0f;
        this.f9661c = 15.0f;
        this.f9662d = Assets.mainAssetsColor;
        this.f9663e = 0;
        a();
    }

    public LinearCountdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9659a = new Paint(1);
        this.f9660b = 0.0f;
        this.f9661c = 15.0f;
        this.f9662d = Assets.mainAssetsColor;
        this.f9663e = 0;
        a();
    }

    public final void a() {
        this.f9661c = Utils.dpToPx(getContext(), 4.0f);
    }

    public void changePercentage(float f2) {
        this.f9660b = f2;
        postInvalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
        float measuredHeight = (getMeasuredHeight() / 2.0f) + getPaddingTop();
        this.f9659a.setStrokeWidth(this.f9661c);
        this.f9659a.setColor(this.f9663e);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + width, measuredHeight, this.f9659a);
        this.f9659a.setColor(this.f9662d);
        canvas.drawLine(getPaddingLeft(), measuredHeight, getPaddingLeft() + ((width * this.f9660b) / 100.0f), measuredHeight, this.f9659a);
    }

    @Override // com.explorestack.iab.utils.IabElement
    public void setStyle(IabElementStyle iabElementStyle) {
        this.f9662d = iabElementStyle.getStrokeColor().intValue();
        this.f9663e = iabElementStyle.getFillColor().intValue();
        this.f9661c = iabElementStyle.getStrokeWidth(getContext()).floatValue();
        setAlpha(iabElementStyle.getOpacity().floatValue());
        postInvalidate();
    }
}
