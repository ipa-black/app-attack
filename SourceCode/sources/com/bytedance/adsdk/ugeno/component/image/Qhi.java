package com.bytedance.adsdk.ugeno.component.image;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import java.util.HashSet;
/* compiled from: RoundedDrawable.java */
/* loaded from: classes2.dex */
public class Qhi extends Drawable {
    private Shader.TileMode ABk;
    private final Bitmap CJ;
    private final RectF Gm;
    private boolean HzH;
    private ImageView.ScaleType MQ;
    private final int ROR;
    private final RectF Sf;
    private final int Tgh;
    private final Matrix WAv;
    private final RectF ac;
    private final Paint fl;
    private final Paint hm;
    private final boolean[] hpZ;
    private boolean iMK;
    private float kYc;
    private float pA;
    private ColorStateList tP;
    private Shader.TileMode zc;
    private final RectF Qhi = new RectF();
    private final RectF cJ = new RectF();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public Qhi(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.ac = rectF;
        this.Sf = new RectF();
        this.WAv = new Matrix();
        this.Gm = new RectF();
        this.zc = Shader.TileMode.CLAMP;
        this.ABk = Shader.TileMode.CLAMP;
        this.iMK = true;
        this.pA = 0.0f;
        this.hpZ = new boolean[]{true, true, true, true};
        this.HzH = false;
        this.kYc = 0.0f;
        this.tP = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        this.MQ = ImageView.ScaleType.FIT_CENTER;
        this.CJ = bitmap;
        int width = bitmap.getWidth();
        this.Tgh = width;
        int height = bitmap.getHeight();
        this.ROR = height;
        rectF.set(0.0f, 0.0f, width, height);
        Paint paint = new Paint();
        this.fl = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.hm = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.tP.getColorForState(getState(), ViewCompat.MEASURED_STATE_MASK));
        paint2.setStrokeWidth(this.kYc);
    }

    public static Qhi Qhi(Bitmap bitmap) {
        if (bitmap != null) {
            return new Qhi(bitmap);
        }
        return null;
    }

    public static Drawable Qhi(Drawable drawable) {
        if (drawable == null || (drawable instanceof Qhi)) {
            return drawable;
        }
        if (drawable instanceof LayerDrawable) {
            Drawable.ConstantState constantState = drawable.mutate().getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i = 0; i < numberOfLayers; i++) {
                layerDrawable.setDrawableByLayerId(layerDrawable.getId(i), Qhi(layerDrawable.getDrawable(i)));
            }
            return layerDrawable;
        }
        Bitmap cJ = cJ(drawable);
        return cJ != null ? new Qhi(cJ) : drawable;
    }

    public static Bitmap cJ(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (Throwable unused) {
            Log.w("RoundedDrawable", "Failed to create bitmap from drawable!");
            return null;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.tP.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.tP.getColorForState(iArr, 0);
        if (this.hm.getColor() != colorForState) {
            this.hm.setColor(colorForState);
            return true;
        }
        return super.onStateChange(iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RoundedDrawable.java */
    /* renamed from: com.bytedance.adsdk.ugeno.component.image.Qhi$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Qhi;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            Qhi = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Qhi[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Qhi[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                Qhi[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Qhi[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Qhi[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                Qhi[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private void Qhi() {
        float width;
        float height;
        int i = AnonymousClass1.Qhi[this.MQ.ordinal()];
        if (i == 1) {
            this.Sf.set(this.Qhi);
            RectF rectF = this.Sf;
            float f2 = this.kYc;
            rectF.inset(f2 / 2.0f, f2 / 2.0f);
            this.WAv.reset();
            this.WAv.setTranslate((int) (((this.Sf.width() - this.Tgh) * 0.5f) + 0.5f), (int) (((this.Sf.height() - this.ROR) * 0.5f) + 0.5f));
        } else if (i == 2) {
            this.Sf.set(this.Qhi);
            RectF rectF2 = this.Sf;
            float f3 = this.kYc;
            rectF2.inset(f3 / 2.0f, f3 / 2.0f);
            this.WAv.reset();
            float f4 = 0.0f;
            if (this.Tgh * this.Sf.height() > this.Sf.width() * this.ROR) {
                width = this.Sf.height() / this.ROR;
                height = 0.0f;
                f4 = (this.Sf.width() - (this.Tgh * width)) * 0.5f;
            } else {
                width = this.Sf.width() / this.Tgh;
                height = (this.Sf.height() - (this.ROR * width)) * 0.5f;
            }
            this.WAv.setScale(width, width);
            Matrix matrix = this.WAv;
            float f5 = this.kYc;
            matrix.postTranslate(((int) (f4 + 0.5f)) + (f5 / 2.0f), ((int) (height + 0.5f)) + (f5 / 2.0f));
        } else if (i == 3) {
            this.WAv.reset();
            float min = (((float) this.Tgh) > this.Qhi.width() || ((float) this.ROR) > this.Qhi.height()) ? Math.min(this.Qhi.width() / this.Tgh, this.Qhi.height() / this.ROR) : 1.0f;
            this.WAv.setScale(min, min);
            this.WAv.postTranslate((int) (((this.Qhi.width() - (this.Tgh * min)) * 0.5f) + 0.5f), (int) (((this.Qhi.height() - (this.ROR * min)) * 0.5f) + 0.5f));
            this.Sf.set(this.ac);
            this.WAv.mapRect(this.Sf);
            RectF rectF3 = this.Sf;
            float f6 = this.kYc;
            rectF3.inset(f6 / 2.0f, f6 / 2.0f);
            this.WAv.setRectToRect(this.ac, this.Sf, Matrix.ScaleToFit.FILL);
        } else if (i == 5) {
            this.Sf.set(this.ac);
            this.WAv.setRectToRect(this.ac, this.Qhi, Matrix.ScaleToFit.END);
            this.WAv.mapRect(this.Sf);
            RectF rectF4 = this.Sf;
            float f7 = this.kYc;
            rectF4.inset(f7 / 2.0f, f7 / 2.0f);
            this.WAv.setRectToRect(this.ac, this.Sf, Matrix.ScaleToFit.FILL);
        } else if (i == 6) {
            this.Sf.set(this.ac);
            this.WAv.setRectToRect(this.ac, this.Qhi, Matrix.ScaleToFit.START);
            this.WAv.mapRect(this.Sf);
            RectF rectF5 = this.Sf;
            float f8 = this.kYc;
            rectF5.inset(f8 / 2.0f, f8 / 2.0f);
            this.WAv.setRectToRect(this.ac, this.Sf, Matrix.ScaleToFit.FILL);
        } else if (i != 7) {
            this.Sf.set(this.ac);
            this.WAv.setRectToRect(this.ac, this.Qhi, Matrix.ScaleToFit.CENTER);
            this.WAv.mapRect(this.Sf);
            RectF rectF6 = this.Sf;
            float f9 = this.kYc;
            rectF6.inset(f9 / 2.0f, f9 / 2.0f);
            this.WAv.setRectToRect(this.ac, this.Sf, Matrix.ScaleToFit.FILL);
        } else {
            this.Sf.set(this.Qhi);
            RectF rectF7 = this.Sf;
            float f10 = this.kYc;
            rectF7.inset(f10 / 2.0f, f10 / 2.0f);
            this.WAv.reset();
            this.WAv.setRectToRect(this.ac, this.Sf, Matrix.ScaleToFit.FILL);
        }
        this.cJ.set(this.Sf);
        this.iMK = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.Qhi.set(rect);
        Qhi();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.iMK) {
            BitmapShader bitmapShader = new BitmapShader(this.CJ, this.zc, this.ABk);
            if (this.zc == Shader.TileMode.CLAMP && this.ABk == Shader.TileMode.CLAMP) {
                bitmapShader.setLocalMatrix(this.WAv);
            }
            this.fl.setShader(bitmapShader);
            this.iMK = false;
        }
        if (this.HzH) {
            if (this.kYc > 0.0f) {
                canvas.drawOval(this.cJ, this.fl);
                canvas.drawOval(this.Sf, this.hm);
                return;
            }
            canvas.drawOval(this.cJ, this.fl);
        } else if (Qhi(this.hpZ)) {
            float f2 = this.pA;
            if (this.kYc > 0.0f) {
                canvas.drawRoundRect(this.cJ, f2, f2, this.fl);
                canvas.drawRoundRect(this.Sf, f2, f2, this.hm);
                Qhi(canvas);
                cJ(canvas);
                return;
            }
            canvas.drawRoundRect(this.cJ, f2, f2, this.fl);
            Qhi(canvas);
        } else {
            canvas.drawRect(this.cJ, this.fl);
            if (this.kYc > 0.0f) {
                canvas.drawRect(this.Sf, this.hm);
            }
        }
    }

    private void Qhi(Canvas canvas) {
        if (cJ(this.hpZ) || this.pA == 0.0f) {
            return;
        }
        float f2 = this.cJ.left;
        float f3 = this.cJ.top;
        float width = this.cJ.width() + f2;
        float height = this.cJ.height() + f3;
        float f4 = this.pA;
        if (!this.hpZ[0]) {
            this.Gm.set(f2, f3, f2 + f4, f3 + f4);
            canvas.drawRect(this.Gm, this.fl);
        }
        if (!this.hpZ[1]) {
            this.Gm.set(width - f4, f3, width, f4);
            canvas.drawRect(this.Gm, this.fl);
        }
        if (!this.hpZ[2]) {
            this.Gm.set(width - f4, height - f4, width, height);
            canvas.drawRect(this.Gm, this.fl);
        }
        if (this.hpZ[3]) {
            return;
        }
        this.Gm.set(f2, height - f4, f4 + f2, height);
        canvas.drawRect(this.Gm, this.fl);
    }

    private void cJ(Canvas canvas) {
        if (cJ(this.hpZ) || this.pA == 0.0f) {
            return;
        }
        float f2 = this.cJ.left;
        float f3 = this.cJ.top;
        float width = f2 + this.cJ.width();
        float height = f3 + this.cJ.height();
        float f4 = this.pA;
        float f5 = this.kYc / 2.0f;
        if (!this.hpZ[0]) {
            canvas.drawLine(f2 - f5, f3, f2 + f4, f3, this.hm);
            canvas.drawLine(f2, f3 - f5, f2, f3 + f4, this.hm);
        }
        if (!this.hpZ[1]) {
            canvas.drawLine((width - f4) - f5, f3, width, f3, this.hm);
            canvas.drawLine(width, f3 - f5, width, f3 + f4, this.hm);
        }
        if (!this.hpZ[2]) {
            canvas.drawLine((width - f4) - f5, height, width + f5, height, this.hm);
            canvas.drawLine(width, height - f4, width, height, this.hm);
        }
        if (this.hpZ[3]) {
            return;
        }
        canvas.drawLine(f2 - f5, height, f2 + f4, height, this.hm);
        canvas.drawLine(f2, height - f4, f2, height, this.hm);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.fl.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.fl.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.fl.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.fl.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.fl.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.fl.setFilterBitmap(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.Tgh;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.ROR;
    }

    public Qhi Qhi(float f2, float f3, float f4, float f5) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f2));
        hashSet.add(Float.valueOf(f3));
        hashSet.add(Float.valueOf(f4));
        hashSet.add(Float.valueOf(f5));
        hashSet.remove(Float.valueOf(0.0f));
        if (hashSet.size() > 1) {
            throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
        }
        if (!hashSet.isEmpty()) {
            float floatValue = ((Float) hashSet.iterator().next()).floatValue();
            if (Float.isInfinite(floatValue) || Float.isNaN(floatValue) || floatValue < 0.0f) {
                throw new IllegalArgumentException("Invalid radius value: ".concat(String.valueOf(floatValue)));
            }
            this.pA = floatValue;
        } else {
            this.pA = 0.0f;
        }
        boolean[] zArr = this.hpZ;
        zArr[0] = f2 > 0.0f;
        zArr[1] = f3 > 0.0f;
        zArr[2] = f4 > 0.0f;
        zArr[3] = f5 > 0.0f;
        return this;
    }

    public Qhi Qhi(float f2) {
        this.kYc = f2;
        this.hm.setStrokeWidth(f2);
        return this;
    }

    public Qhi Qhi(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.tP = colorStateList;
        this.hm.setColor(colorStateList.getColorForState(getState(), ViewCompat.MEASURED_STATE_MASK));
        return this;
    }

    public Qhi Qhi(boolean z) {
        this.HzH = z;
        return this;
    }

    public Qhi Qhi(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.MQ != scaleType) {
            this.MQ = scaleType;
            Qhi();
        }
        return this;
    }

    public Qhi Qhi(Shader.TileMode tileMode) {
        if (this.zc != tileMode) {
            this.zc = tileMode;
            this.iMK = true;
            invalidateSelf();
        }
        return this;
    }

    public Qhi cJ(Shader.TileMode tileMode) {
        if (this.ABk != tileMode) {
            this.ABk = tileMode;
            this.iMK = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean Qhi(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return true;
            }
        }
        return false;
    }

    private static boolean cJ(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return false;
            }
        }
        return true;
    }
}
