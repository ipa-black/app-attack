package com.explorestack.iab.vast.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.IabElement;
import com.explorestack.iab.utils.IabElementStyle;
import com.explorestack.iab.utils.Utils;
/* loaded from: classes2.dex */
public class CircleCountdownView extends View implements IabElement {

    /* renamed from: a  reason: collision with root package name */
    public Bitmap f9647a;

    /* renamed from: b  reason: collision with root package name */
    public int f9648b;

    /* renamed from: c  reason: collision with root package name */
    public int f9649c;

    /* renamed from: d  reason: collision with root package name */
    public int f9650d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9651e;

    /* renamed from: f  reason: collision with root package name */
    public float f9652f;

    /* renamed from: g  reason: collision with root package name */
    public float f9653g;

    /* renamed from: h  reason: collision with root package name */
    public final RectF f9654h;
    public final RectF i;
    public float j;
    public float k;
    public float l;
    public Paint m;
    public Paint n;
    public Rect o;
    public RectF p;
    public Paint q;
    public Paint r;
    public float s;
    public int t;

    public CircleCountdownView(Context context) {
        super(context);
        this.f9649c = Assets.mainAssetsColor;
        this.f9650d = Assets.backgroundColor;
        this.f9651e = false;
        this.f9652f = 0.0f;
        this.f9653g = 0.071428575f;
        this.f9654h = new RectF();
        this.i = new RectF();
        this.j = 54.0f;
        this.k = 54.0f;
        this.l = 5.0f;
        this.s = 100.0f;
        a(context);
    }

    public CircleCountdownView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9649c = Assets.mainAssetsColor;
        this.f9650d = Assets.backgroundColor;
        this.f9651e = false;
        this.f9652f = 0.0f;
        this.f9653g = 0.071428575f;
        this.f9654h = new RectF();
        this.i = new RectF();
        this.j = 54.0f;
        this.k = 54.0f;
        this.l = 5.0f;
        this.s = 100.0f;
        a(context);
    }

    public final float a(float f2, boolean z) {
        float width = this.f9654h.width();
        if (z) {
            width -= this.l * 2.0f;
        }
        float sqrt = (float) ((width / 2.0f) * Math.sqrt(2.0d));
        return sqrt - ((f2 * sqrt) * 2.0f);
    }

    public final void a() {
        float min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        float f2 = min / 2.0f;
        float width = (getWidth() / 2.0f) - f2;
        float height = (getHeight() / 2.0f) - f2;
        this.f9654h.set(width, height, width + min, min + height);
        this.j = this.f9654h.centerX();
        this.k = this.f9654h.centerY();
        RectF rectF = this.i;
        RectF rectF2 = this.f9654h;
        float f3 = rectF2.left;
        float f4 = this.l / 2.0f;
        rectF.set(f3 + f4, rectF2.top + f4, rectF2.right - f4, rectF2.bottom - f4);
    }

    public final void a(Context context) {
        setLayerType(1, null);
        this.l = Utils.dpToPx(context, 3.0f);
    }

    public final void a(Canvas canvas) {
        if (this.q == null) {
            Paint paint = new Paint(7);
            this.q = paint;
            paint.setStyle(Paint.Style.FILL);
            this.q.setAntiAlias(true);
        }
        if (this.o == null) {
            this.o = new Rect();
        }
        if (this.p == null) {
            this.p = new RectF();
        }
        float a2 = a(this.f9652f, this.f9651e);
        float f2 = a2 / 2.0f;
        float f3 = this.j - f2;
        float f4 = this.k - f2;
        this.o.set(0, 0, this.f9647a.getWidth(), this.f9647a.getHeight());
        this.p.set(f3, f4, f3 + a2, a2 + f4);
        this.q.setColorFilter(new PorterDuffColorFilter(this.f9649c, PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(this.f9647a, this.o, this.p, this.q);
        if (this.f9651e) {
            if (this.r == null) {
                Paint paint2 = new Paint(1);
                this.r = paint2;
                paint2.setStyle(Paint.Style.STROKE);
            }
            this.r.setStrokeWidth(this.l);
            this.r.setColor(this.f9649c);
            canvas.drawArc(this.i, 0.0f, 360.0f, false, this.r);
        }
    }

    public final void b(Canvas canvas) {
        if (this.m == null) {
            this.m = new Paint(1);
        }
        float f2 = 360.0f - ((this.s * 360.0f) * 0.01f);
        this.m.setColor(this.f9650d);
        this.m.setStyle(Paint.Style.FILL);
        canvas.drawArc(this.f9654h, 0.0f, 360.0f, false, this.m);
        this.m.setColor(this.f9649c);
        this.m.setStyle(Paint.Style.STROKE);
        this.m.setStrokeWidth(this.l);
        canvas.drawArc(this.i, 270.0f, f2, false, this.m);
    }

    public final void c(Canvas canvas) {
        if (this.n == null) {
            Paint paint = new Paint(1);
            this.n = paint;
            paint.setAntiAlias(true);
            this.n.setStyle(Paint.Style.FILL);
            this.n.setTextAlign(Paint.Align.CENTER);
        }
        String valueOf = String.valueOf(this.t);
        this.n.setColor(this.f9649c);
        this.n.setTypeface(Typeface.create(Typeface.DEFAULT, this.f9648b));
        this.n.setTextSize(a(this.f9653g, true));
        canvas.drawText(valueOf, this.j, this.k - ((this.n.descent() + this.n.ascent()) / 2.0f), this.n);
    }

    public void changePercentage(float f2, int i) {
        if (this.f9647a == null || f2 == 100.0f) {
            this.s = f2;
            this.t = i;
            postInvalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.t == 0 && this.f9647a == null) {
            return;
        }
        b(canvas);
        if (this.f9647a != null) {
            a(canvas);
        } else {
            c(canvas);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a();
    }

    public void setColors(int i, int i2) {
        this.f9649c = i;
        this.f9650d = i2;
        a();
    }

    public void setImage(Bitmap bitmap) {
        this.f9647a = bitmap;
        if (bitmap != null) {
            this.s = 100.0f;
        }
        postInvalidate();
    }

    @Override // com.explorestack.iab.utils.IabElement
    public void setStyle(IabElementStyle iabElementStyle) {
        this.f9648b = iabElementStyle.getFontStyle().intValue();
        this.f9649c = iabElementStyle.getStrokeColor().intValue();
        this.f9650d = iabElementStyle.getFillColor().intValue();
        this.f9651e = iabElementStyle.isOutlined().booleanValue();
        this.l = iabElementStyle.getStrokeWidth(getContext()).floatValue();
        setPadding(iabElementStyle.getPaddingLeft(getContext()).intValue(), iabElementStyle.getPaddingTop(getContext()).intValue(), iabElementStyle.getPaddingRight(getContext()).intValue(), iabElementStyle.getPaddingBottom(getContext()).intValue());
        setAlpha(iabElementStyle.getOpacity().floatValue());
        a();
        postInvalidate();
    }
}
