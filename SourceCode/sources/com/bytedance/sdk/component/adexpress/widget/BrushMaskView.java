package com.bytedance.sdk.component.adexpress.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import com.bytedance.sdk.component.utils.ABk;
/* loaded from: classes2.dex */
public class BrushMaskView extends View {
    private static final String Qhi = "BrushMaskView";
    private Canvas CJ;
    private Paint ROR;
    private Path Sf;
    private BitmapDrawable Tgh;
    private Paint WAv;
    private Bitmap ac;
    private Paint cJ;
    private Paint fl;
    private Path hm;

    public BrushMaskView(Context context) {
        super(context);
        Qhi(context);
    }

    private void Qhi(Context context) {
        Paint paint = new Paint();
        this.cJ = paint;
        paint.setAntiAlias(true);
        this.cJ.setDither(true);
        setMaskColor(-1426063361);
        Paint paint2 = new Paint();
        this.fl = paint2;
        paint2.setAntiAlias(true);
        this.fl.setDither(true);
        Paint paint3 = new Paint();
        this.WAv = paint3;
        paint3.setColor(-7829368);
        this.WAv.setAlpha(100);
        this.WAv.setAntiAlias(true);
        this.WAv.setDither(true);
        this.WAv.setStyle(Paint.Style.STROKE);
        this.WAv.setStrokeCap(Paint.Cap.ROUND);
        setWatermark(-1);
        Paint paint4 = new Paint();
        this.ROR = paint4;
        paint4.setAntiAlias(true);
        this.ROR.setDither(true);
        this.ROR.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.ROR.setStyle(Paint.Style.STROKE);
        this.ROR.setStrokeCap(Paint.Cap.ROUND);
        setEraserSize(60.0f);
        this.Sf = new Path();
        this.hm = new Path();
    }

    public void setEraserSize(float f2) {
        this.ROR.setStrokeWidth(f2);
        this.WAv.setStrokeWidth(f2);
    }

    public void setMaskColor(int i) {
        this.cJ.setColor(i);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(Qhi(i), Qhi(i2));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Bitmap bitmap = this.ac;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.fl);
        }
    }

    public void Qhi(float f2, float f3) {
        cJ(f2, f3);
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Qhi(i, i2);
    }

    private void Qhi(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            this.ac = createBitmap;
            Canvas canvas = this.CJ;
            if (canvas == null) {
                this.CJ = new Canvas(this.ac);
            } else {
                canvas.setBitmap(createBitmap);
            }
            this.CJ.drawRoundRect(new RectF(0.0f, 0.0f, i, i2), 120.0f, 120.0f, this.cJ);
            if (this.Tgh != null) {
                this.Tgh.setBounds(new Rect(0, 0, i, i2));
                this.Tgh.draw(this.CJ);
            }
        } catch (Exception e2) {
            ABk.Qhi(Qhi, e2.getMessage());
        }
    }

    private int Qhi(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        if (mode == Integer.MIN_VALUE) {
            return Math.min(0, size);
        }
        return 0;
    }

    private void cJ(float f2, float f3) {
        this.Sf.reset();
        this.hm.reset();
        this.Sf.moveTo(f2, f3);
        this.hm.moveTo(f2, f3);
    }

    public void setWatermark(int i) {
        if (i == -1) {
            this.Tgh = null;
        } else {
            this.Tgh = new BitmapDrawable(BitmapFactory.decodeResource(getResources(), i));
        }
    }

    public void Qhi() {
        Qhi(getWidth(), getHeight());
        invalidate();
    }

    public void cJ() {
        ac();
    }

    public void ac() {
        final int width = getWidth();
        final int height = getHeight();
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setDuration(400L);
        valueAnimator.setIntValues(0, width);
        valueAnimator.setInterpolator(new TimeInterpolator() { // from class: com.bytedance.sdk.component.adexpress.widget.BrushMaskView.1
            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f2) {
                int i = (int) (width * f2);
                if (BrushMaskView.this.CJ != null) {
                    Canvas canvas = BrushMaskView.this.CJ;
                    int i2 = height;
                    canvas.drawRect(0.0f, i2 / 2, i - 50, i2 / 2, BrushMaskView.this.ROR);
                    BrushMaskView.this.CJ.drawCircle(i, height / 2, 10.0f, BrushMaskView.this.ROR);
                }
                BrushMaskView.this.postInvalidate();
                return f2;
            }
        });
        valueAnimator.start();
    }
}
