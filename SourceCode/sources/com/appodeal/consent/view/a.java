package com.appodeal.consent.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LightingColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.appodeal.consent.R;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class a extends View {

    /* renamed from: a  reason: collision with root package name */
    public float f8144a;

    /* renamed from: b  reason: collision with root package name */
    public int f8145b;

    /* renamed from: c  reason: collision with root package name */
    public int f8146c;

    /* renamed from: d  reason: collision with root package name */
    public int f8147d;

    /* renamed from: e  reason: collision with root package name */
    public int f8148e;

    /* renamed from: f  reason: collision with root package name */
    public Bitmap f8149f;

    /* renamed from: g  reason: collision with root package name */
    public Bitmap f8150g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f8144a = 54.0f;
        setLayerType(1, null);
        this.f8145b = context.getResources().getColor(R.color.stack_consent_form_close_btn_main_color);
        this.f8146c = context.getResources().getColor(R.color.stack_consent_form_close_btn_background_color);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (this.f8149f != null) {
            float f2 = this.f8148e;
            float f3 = (this.f8144a * 2.0f) - f2;
            RectF rectF = new RectF(f2, f2, f3, f3);
            Paint paint = new Paint(7);
            paint.setColor(this.f8146c);
            paint.setStyle(Paint.Style.FILL);
            canvas.drawArc(rectF, 0.0f, 360.0f, false, paint);
            paint.setColor(this.f8145b);
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(5.0f);
            canvas.drawArc(rectF, 0.0f, 360.0f, false, paint);
            Paint paint2 = new Paint(7);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            Bitmap bitmap = this.f8149f;
            Intrinsics.checkNotNull(bitmap);
            float f4 = (int) (this.f8144a - (this.f8147d / 2));
            canvas.drawBitmap(bitmap, f4, f4, paint2);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f8144a = i / 2.0f;
        int max = Math.max(i, i2) / 4;
        this.f8148e = max;
        int sqrt = (int) (Math.sqrt(2.0d) * (this.f8144a - max));
        this.f8147d = sqrt;
        Bitmap bitmap = this.f8150g;
        if (bitmap == null || sqrt <= 0) {
            return;
        }
        Intrinsics.checkNotNull(bitmap);
        int i5 = this.f8147d;
        this.f8149f = Bitmap.createScaledBitmap(bitmap, i5, i5, true);
        Paint paint = new Paint();
        paint.setColorFilter(new LightingColorFilter(this.f8145b, 0));
        Bitmap bitmap2 = this.f8149f;
        Intrinsics.checkNotNull(bitmap2);
        Canvas canvas = new Canvas(bitmap2);
        Bitmap bitmap3 = this.f8149f;
        Intrinsics.checkNotNull(bitmap3);
        canvas.drawBitmap(bitmap3, 0.0f, 0.0f, paint);
    }

    public final void setImage(Bitmap bitmap) {
        int i;
        if (bitmap != null && (i = this.f8147d) > 0) {
            this.f8150g = bitmap;
            this.f8149f = Bitmap.createScaledBitmap(bitmap, i, i, true);
            Paint paint = new Paint();
            paint.setColorFilter(new LightingColorFilter(this.f8145b, 0));
            Bitmap bitmap2 = this.f8149f;
            Intrinsics.checkNotNull(bitmap2);
            Canvas canvas = new Canvas(bitmap2);
            Bitmap bitmap3 = this.f8149f;
            Intrinsics.checkNotNull(bitmap3);
            canvas.drawBitmap(bitmap3, 0.0f, 0.0f, paint);
        } else {
            this.f8150g = bitmap;
            this.f8149f = bitmap;
        }
        postInvalidate();
    }
}
