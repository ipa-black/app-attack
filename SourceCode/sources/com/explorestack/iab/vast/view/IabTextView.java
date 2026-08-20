package com.explorestack.iab.vast.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.IabElement;
import com.explorestack.iab.utils.IabElementStyle;
/* loaded from: classes2.dex */
public class IabTextView extends TextView implements IabElement {

    /* renamed from: a  reason: collision with root package name */
    public final RectF f9655a;

    /* renamed from: b  reason: collision with root package name */
    public GradientDrawable f9656b;

    /* renamed from: c  reason: collision with root package name */
    public Paint f9657c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9658d;

    public IabTextView(Context context) {
        super(context);
        this.f9655a = new RectF();
        this.f9658d = false;
        a(context);
    }

    public IabTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9655a = new RectF();
        this.f9658d = false;
        a(context);
    }

    public void a(Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.f9656b = gradientDrawable;
        gradientDrawable.setColor(Assets.backgroundColor);
        this.f9656b.setShape(0);
        setBackgroundDrawable(this.f9656b);
        setGravity(17);
        setMaxLines(1);
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f9658d || this.f9657c == null) {
            return;
        }
        float height = getHeight() / 2.0f;
        canvas.drawRoundRect(this.f9655a, height, height, this.f9657c);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            float size = (View.MeasureSpec.getSize(i2) - getCompoundPaddingTop()) - getCompoundPaddingRight();
            if (getTextSize() != size) {
                setTextSize(0, size);
            }
        }
        if (mode == 1073741824 && getText() != null) {
            int size2 = (View.MeasureSpec.getSize(i) - getCompoundPaddingLeft()) - getCompoundPaddingRight();
            float measureText = getPaint().measureText(getText(), 0, getText().length());
            float f2 = size2;
            if (f2 < measureText) {
                float textSize = (int) (getTextSize() * (f2 / measureText));
                if (getTextSize() != textSize) {
                    setTextSize(0, textSize);
                }
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        Paint paint;
        super.onSizeChanged(i, i2, i3, i4);
        GradientDrawable gradientDrawable = this.f9656b;
        if (gradientDrawable != null) {
            gradientDrawable.setCornerRadius(i2 / 2.0f);
        }
        if (!this.f9658d || (paint = this.f9657c) == null) {
            return;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        float f2 = 0.0f + strokeWidth;
        this.f9655a.set(f2, f2, i - strokeWidth, i2 - strokeWidth);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        GradientDrawable gradientDrawable = this.f9656b;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(i);
        }
    }

    @Override // com.explorestack.iab.utils.IabElement
    public void setStyle(IabElementStyle iabElementStyle) {
        boolean booleanValue = iabElementStyle.isOutlined().booleanValue();
        this.f9658d = booleanValue;
        if (booleanValue) {
            Paint paint = new Paint(1);
            this.f9657c = paint;
            paint.setStyle(Paint.Style.STROKE);
            this.f9657c.setColor(iabElementStyle.getStrokeColor().intValue());
            this.f9657c.setStrokeWidth(iabElementStyle.getStrokeWidth(getContext()).floatValue());
        }
        setTextColor(iabElementStyle.getStrokeColor().intValue());
        setBackgroundColor(iabElementStyle.getFillColor().intValue());
        setTextSize(0, iabElementStyle.getFontSize(getContext()).floatValue());
        setTypeface(Typeface.create(Typeface.DEFAULT, iabElementStyle.getFontStyle().intValue()));
        setAlpha(iabElementStyle.getOpacity().floatValue());
        setPadding(iabElementStyle.getPaddingLeft(getContext()).intValue(), iabElementStyle.getPaddingTop(getContext()).intValue(), iabElementStyle.getPaddingRight(getContext()).intValue(), iabElementStyle.getPaddingBottom(getContext()).intValue());
    }
}
