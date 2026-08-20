package com.bytedance.adsdk.ugeno.component.image;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.ac;
import com.bytedance.adsdk.ugeno.core.IAnimation;
/* loaded from: classes2.dex */
public class RoundImageView extends ImageView implements IAnimation {
    static final /* synthetic */ boolean cJ = true;
    private boolean ABk;
    private Drawable Gm;
    private ImageView.ScaleType HzH;
    private ac MQ;
    private ColorStateList ROR;
    private float Sf;
    private Drawable Tgh;
    private boolean WAv;
    private float ac;
    private final float[] fl;
    private ColorFilter hm;
    private int hpZ;
    private boolean iMK;
    private Shader.TileMode kYc;
    private int pA;
    private Shader.TileMode tP;
    private boolean zc;
    public static final Shader.TileMode Qhi = Shader.TileMode.CLAMP;
    private static final ImageView.ScaleType[] CJ = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    public RoundImageView(Context context) {
        super(context);
        this.fl = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.ROR = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        this.Sf = 0.0f;
        this.hm = null;
        this.WAv = false;
        this.zc = false;
        this.ABk = false;
        this.iMK = false;
        Shader.TileMode tileMode = Qhi;
        this.kYc = tileMode;
        this.tP = tileMode;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.HzH;
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (!cJ && scaleType == null) {
            throw new AssertionError();
        }
        if (this.HzH != scaleType) {
            this.HzH = scaleType;
            switch (AnonymousClass1.Qhi[scaleType.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    super.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                default:
                    super.setScaleType(scaleType);
                    break;
            }
            ac();
            Qhi(false);
            invalidate();
        }
    }

    /* renamed from: com.bytedance.adsdk.ugeno.component.image.RoundImageView$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
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
                Qhi[ImageView.ScaleType.FIT_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Qhi[ImageView.ScaleType.FIT_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                Qhi[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.pA = 0;
        this.Gm = Qhi.Qhi(drawable);
        ac();
        super.setImageDrawable(this.Gm);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.pA = 0;
        this.Gm = Qhi.Qhi(bitmap);
        ac();
        super.setImageDrawable(this.Gm);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        if (this.pA != i) {
            this.pA = i;
            this.Gm = Qhi();
            ac();
            super.setImageDrawable(this.Gm);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    private Drawable Qhi() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i = this.pA;
        if (i != 0) {
            try {
                drawable = resources.getDrawable(i);
            } catch (Exception e2) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.pA, e2);
                this.pA = 0;
            }
        }
        return Qhi.Qhi(drawable);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        if (this.hpZ != i) {
            this.hpZ = i;
            Drawable cJ2 = cJ();
            this.Tgh = cJ2;
            setBackgroundDrawable(cJ2);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        ColorDrawable colorDrawable = new ColorDrawable(i);
        this.Tgh = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    private Drawable cJ() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i = this.hpZ;
        if (i != 0) {
            try {
                drawable = resources.getDrawable(i);
            } catch (Exception e2) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.hpZ, e2);
                this.hpZ = 0;
            }
        }
        return Qhi.Qhi(drawable);
    }

    private void ac() {
        Qhi(this.Gm, this.HzH);
    }

    private void Qhi(boolean z) {
        if (this.iMK) {
            if (z) {
                this.Tgh = Qhi.Qhi(this.Tgh);
            }
            Qhi(this.Tgh, ImageView.ScaleType.FIT_XY);
        }
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.hm != colorFilter) {
            this.hm = colorFilter;
            this.zc = true;
            this.WAv = true;
            CJ();
            invalidate();
        }
    }

    private void CJ() {
        Drawable drawable = this.Gm;
        if (drawable == null || !this.WAv) {
            return;
        }
        Drawable mutate = drawable.mutate();
        this.Gm = mutate;
        if (this.zc) {
            mutate.setColorFilter(this.hm);
        }
    }

    private void Qhi(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof Qhi) {
            Qhi qhi = (Qhi) drawable;
            qhi.Qhi(scaleType).Qhi(this.Sf).Qhi(this.ROR).Qhi(this.ABk).Qhi(this.kYc).cJ(this.tP);
            float[] fArr = this.fl;
            if (fArr != null) {
                qhi.Qhi(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            CJ();
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i = 0; i < numberOfLayers; i++) {
                Qhi(layerDrawable.getDrawable(i), scaleType);
            }
        }
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.Tgh = drawable;
        Qhi(true);
        super.setBackgroundDrawable(this.Tgh);
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float f2 = 0.0f;
        for (float f3 : this.fl) {
            f2 = Math.max(f3, f2);
        }
        return f2;
    }

    public void setCornerRadiusDimen(int i) {
        float dimension = getResources().getDimension(i);
        Qhi(dimension, dimension, dimension, dimension);
    }

    public void setCornerRadius(float f2) {
        Qhi(f2, f2, f2, f2);
    }

    public void Qhi(float f2, float f3, float f4, float f5) {
        float[] fArr = this.fl;
        if (fArr[0] == f2 && fArr[1] == f3 && fArr[2] == f5 && fArr[3] == f4) {
            return;
        }
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[3] = f4;
        fArr[2] = f5;
        ac();
        Qhi(false);
        invalidate();
    }

    public float getBorderWidth() {
        return this.Sf;
    }

    public void setBorderWidth(int i) {
        setBorderWidth(getResources().getDimension(i));
    }

    public void setBorderWidth(float f2) {
        if (this.Sf == f2) {
            return;
        }
        this.Sf = f2;
        ac();
        Qhi(false);
        invalidate();
    }

    public int getBorderColor() {
        return this.ROR.getDefaultColor();
    }

    public void setBorderColor(int i) {
        setBorderColor(ColorStateList.valueOf(i));
    }

    public ColorStateList getBorderColors() {
        return this.ROR;
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.ROR.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        }
        this.ROR = colorStateList;
        ac();
        Qhi(false);
        if (this.Sf > 0.0f) {
            invalidate();
        }
    }

    public void setOval(boolean z) {
        this.ABk = z;
        ac();
        Qhi(false);
        invalidate();
    }

    public Shader.TileMode getTileModeX() {
        return this.kYc;
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.kYc == tileMode) {
            return;
        }
        this.kYc = tileMode;
        ac();
        Qhi(false);
        invalidate();
    }

    public Shader.TileMode getTileModeY() {
        return this.tP;
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.tP == tileMode) {
            return;
        }
        this.tP = tileMode;
        ac();
        Qhi(false);
        invalidate();
    }

    public void Qhi(ac acVar) {
        this.MQ = acVar;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        ac acVar = this.MQ;
        if (acVar != null) {
            int[] Qhi2 = acVar.Qhi(i, i2);
            super.onMeasure(Qhi2[0], Qhi2[1]);
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ac acVar = this.MQ;
        if (acVar != null) {
            acVar.Qhi(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ac acVar = this.MQ;
        if (acVar != null) {
            acVar.Qhi(canvas, this);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ac acVar = this.MQ;
        if (acVar != null) {
            acVar.cJ(i, i2, i3, i3);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ac acVar = this.MQ;
        if (acVar != null) {
            acVar.Tgh();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ac acVar = this.MQ;
        if (acVar != null) {
            acVar.ROR();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.IAnimation
    public float getRipple() {
        return this.ac;
    }

    @Override // com.bytedance.adsdk.ugeno.core.IAnimation
    public void setRipple(float f2) {
        this.ac = f2;
        postInvalidate();
    }
}
