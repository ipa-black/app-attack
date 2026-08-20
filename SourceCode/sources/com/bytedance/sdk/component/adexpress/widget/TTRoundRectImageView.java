package com.bytedance.sdk.component.adexpress.widget;

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
import android.widget.ImageView;
/* loaded from: classes2.dex */
public class TTRoundRectImageView extends ImageView {
    private Matrix CJ;
    private Paint Qhi;
    private int ac;
    private int cJ;

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
        Paint paint = new Paint();
        this.Qhi = paint;
        paint.setAntiAlias(true);
        this.Qhi.setFilterBitmap(true);
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

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            Bitmap Qhi = Qhi(drawable);
            if (Qhi != null) {
                Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                BitmapShader bitmapShader = new BitmapShader(Qhi, tileMode, tileMode);
                float f2 = 1.0f;
                if (Qhi.getWidth() != getWidth() || Qhi.getHeight() != getHeight()) {
                    f2 = Math.max((getWidth() * 1.0f) / Qhi.getWidth(), (getHeight() * 1.0f) / Qhi.getHeight());
                }
                this.CJ.setScale(f2, f2);
                bitmapShader.setLocalMatrix(this.CJ);
                this.Qhi.setShader(bitmapShader);
                canvas.drawRoundRect(new RectF(0.0f, 0.0f, getWidth(), getHeight()), this.cJ, this.ac, this.Qhi);
                return;
            }
            super.onDraw(canvas);
            return;
        }
        super.onDraw(canvas);
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
