package com.applovin.impl.adview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.core.view.ViewCompat;
import com.applovin.impl.adview.i;
/* loaded from: classes.dex */
public final class w extends i {

    /* renamed from: c  reason: collision with root package name */
    private static final Paint f4496c = new Paint(1);

    /* renamed from: d  reason: collision with root package name */
    private static final Paint f4497d = new Paint(1);

    /* renamed from: e  reason: collision with root package name */
    private static final Paint f4498e = new Paint(1);

    public w(Context context) {
        super(context);
        f4496c.setColor(-1);
        f4497d.setColor(ViewCompat.MEASURED_STATE_MASK);
        Paint paint = f4498e;
        paint.setColor(-1);
        paint.setStyle(Paint.Style.STROKE);
    }

    protected float getCenter() {
        return getSize() / 2.0f;
    }

    protected float getCrossOffset() {
        return this.f4420a * 10.0f;
    }

    protected float getInnerCircleOffset() {
        return this.f4420a * 2.0f;
    }

    protected float getInnerCircleRadius() {
        return getCenter() - getInnerCircleOffset();
    }

    protected float getStrokeWidth() {
        return this.f4420a * 3.0f;
    }

    @Override // com.applovin.impl.adview.i
    public i.a getStyle() {
        return i.a.WHITE_ON_BLACK;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float center = getCenter();
        canvas.drawCircle(center, center, center, f4496c);
        canvas.drawCircle(center, center, getInnerCircleRadius(), f4497d);
        float crossOffset = getCrossOffset();
        float size = getSize() - crossOffset;
        Paint paint = f4498e;
        paint.setStrokeWidth(getStrokeWidth());
        canvas.drawLine(crossOffset, crossOffset, size, size, paint);
        canvas.drawLine(crossOffset, size, size, crossOffset, paint);
    }
}
