package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import com.applovin.impl.adview.i;
/* loaded from: classes.dex */
public final class r extends i {

    /* renamed from: c  reason: collision with root package name */
    private static final Paint f4481c = new Paint(1);

    /* renamed from: d  reason: collision with root package name */
    private static final Paint f4482d = new Paint(1);

    /* renamed from: e  reason: collision with root package name */
    private final float[] f4483e;

    /* renamed from: f  reason: collision with root package name */
    private Path f4484f;

    public r(Context context) {
        super(context);
        this.f4483e = new float[]{30.0f, 30.0f, 50.0f, 50.0f, 30.0f, 70.0f, 55.0f, 30.0f, 75.0f, 50.0f, 55.0f, 70.0f};
        f4481c.setARGB(80, 0, 0, 0);
        Paint paint = f4482d;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
    }

    private void a() {
        int i = 0;
        while (true) {
            float[] fArr = this.f4483e;
            if (i >= fArr.length) {
                Path path = new Path();
                this.f4484f = path;
                float[] fArr2 = this.f4483e;
                path.moveTo(fArr2[0], fArr2[1]);
                Path path2 = this.f4484f;
                float[] fArr3 = this.f4483e;
                path2.lineTo(fArr3[2], fArr3[3]);
                Path path3 = this.f4484f;
                float[] fArr4 = this.f4483e;
                path3.lineTo(fArr4[4], fArr4[5]);
                Path path4 = this.f4484f;
                float[] fArr5 = this.f4483e;
                path4.moveTo(fArr5[6], fArr5[7]);
                Path path5 = this.f4484f;
                float[] fArr6 = this.f4483e;
                path5.lineTo(fArr6[8], fArr6[9]);
                Path path6 = this.f4484f;
                float[] fArr7 = this.f4483e;
                path6.lineTo(fArr7[10], fArr7[11]);
                return;
            }
            fArr[i] = fArr[i] * 0.3f * this.f4420a;
            i++;
        }
    }

    @Override // com.applovin.impl.adview.i
    public void a(int i) {
        setViewScale(i / 30.0f);
        a();
    }

    protected float getCenter() {
        return getSize() / 2.0f;
    }

    protected float getStrokeWidth() {
        return this.f4420a * 2.0f;
    }

    @Override // com.applovin.impl.adview.i
    public i.a getStyle() {
        return i.a.TRANSPARENT_SKIP;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, f4481c);
        Paint paint = f4482d;
        paint.setStrokeWidth(getStrokeWidth());
        canvas.drawPath(this.f4484f, paint);
    }
}
