package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.applovin.impl.adview.i;
/* loaded from: classes.dex */
public final class q extends i {

    /* renamed from: c  reason: collision with root package name */
    private static final Paint f4479c = new Paint(1);

    /* renamed from: d  reason: collision with root package name */
    private static final Paint f4480d = new Paint(1);

    public q(Context context) {
        super(context);
        f4479c.setARGB(80, 0, 0, 0);
        Paint paint = f4480d;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // com.applovin.impl.adview.i
    public void a(int i) {
        setViewScale(i / 30.0f);
    }

    protected float getCenter() {
        return getSize() / 2.0f;
    }

    protected float getCrossOffset() {
        return this.f4420a * 8.0f;
    }

    protected float getStrokeWidth() {
        return this.f4420a * 2.0f;
    }

    @Override // com.applovin.impl.adview.i
    public i.a getStyle() {
        return i.a.WHITE_ON_TRANSPARENT;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, f4479c);
        float crossOffset = getCrossOffset();
        float size = getSize() - crossOffset;
        Paint paint = f4480d;
        paint.setStrokeWidth(getStrokeWidth());
        canvas.drawLine(crossOffset, crossOffset, size, size, paint);
        canvas.drawLine(crossOffset, size, size, crossOffset, paint);
    }
}
