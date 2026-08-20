package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
/* loaded from: classes2.dex */
public class TTRoundRectImageView extends PAGImageView {
    private final Matrix CJ;
    private final Paint Qhi;
    private BitmapShader Tgh;
    private int ac;
    private int cJ;
    private final RectF fl;

    public TTRoundRectImageView(Context context) {
        this(context, null);
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTRoundRectImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.cJ = 25;
        this.ac = 25;
        this.fl = new RectF();
        Paint paint = new Paint();
        this.Qhi = paint;
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        this.CJ = new Matrix();
    }

    public void setXRound(int i) {
        this.cJ = i;
        postInvalidate();
    }

    public void setYRound(int i) {
        this.ac = i;
        postInvalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.fl.set(0.0f, 0.0f, i, i2);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap Qhi;
        Drawable drawable = getDrawable();
        if (drawable == null) {
            super.onDraw(canvas);
            return;
        }
        if (this.Tgh == null && (Qhi = Qhi(drawable)) != null) {
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            this.Tgh = new BitmapShader(Qhi, tileMode, tileMode);
            float f2 = 1.0f;
            if (Qhi.getWidth() != getWidth() || Qhi.getHeight() != getHeight()) {
                f2 = Math.max((getWidth() * 1.0f) / Qhi.getWidth(), (getHeight() * 1.0f) / Qhi.getHeight());
            }
            this.CJ.setScale(f2, f2);
            this.Tgh.setLocalMatrix(this.CJ);
        }
        BitmapShader bitmapShader = this.Tgh;
        if (bitmapShader != null) {
            this.Qhi.setShader(bitmapShader);
            canvas.drawRoundRect(this.fl, this.cJ, this.ac, this.Qhi);
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        super.unscheduleDrawable(drawable);
        this.Tgh = null;
    }

    private Bitmap Qhi(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int width = drawable.getIntrinsicWidth() <= 0 ? getWidth() : drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight() <= 0 ? getHeight() : drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return createBitmap;
    }
}
