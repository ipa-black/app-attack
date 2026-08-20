package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.Movie;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.ROR;
import java.io.File;
/* loaded from: classes2.dex */
public class GifView extends ImageView {
    private volatile boolean ABk;
    private int CJ;
    private int Gm;
    private int Qhi;
    private boolean ROR;
    private float Sf;
    private boolean Tgh;
    private float WAv;
    private long ac;
    private Movie cJ;
    private AnimatedImageDrawable fl;
    private float hm;
    private boolean iMK;
    private boolean pA;
    private int zc;

    public GifView(Context context) {
        super(context);
        this.Tgh = Build.VERSION.SDK_INT >= 28;
        this.ROR = false;
        this.iMK = true;
        this.pA = true;
        Qhi();
    }

    void Qhi() {
        if (this.Tgh) {
            return;
        }
        setLayerType(1, null);
    }

    public void Qhi(int i, boolean z) {
        this.ABk = z;
        this.Qhi = i;
        if (i != -1) {
            if (!this.Tgh) {
                this.cJ = Qhi(i);
            } else {
                this.fl = cJ(i);
            }
        }
    }

    public void Qhi(byte[] bArr, boolean z) {
        this.ABk = z;
        if (bArr != null) {
            if (!this.Tgh) {
                this.cJ = Qhi(bArr);
            } else {
                this.fl = cJ(bArr);
            }
            cJ();
        }
    }

    public void setRepeatConfig(boolean z) {
        AnimatedImageDrawable animatedImageDrawable;
        this.pA = z;
        if (z) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT < 28 || (animatedImageDrawable = this.fl) == null) {
                return;
            }
            animatedImageDrawable.setRepeatCount(0);
        } catch (Exception e2) {
            ABk.Qhi("GifView", "setRepeatConfig error", e2);
        }
    }

    private Movie Qhi(int i) {
        try {
            return Movie.decodeStream(getResources().openRawResource(i));
        } catch (Throwable unused) {
            return null;
        }
    }

    private Movie Qhi(byte[] bArr) {
        try {
            return Movie.decodeByteArray(bArr, 0, bArr.length);
        } catch (Throwable unused) {
            return null;
        }
    }

    private AnimatedImageDrawable cJ(int i) {
        if (i != -1 && Build.VERSION.SDK_INT >= 28) {
            return Qhi(ImageDecoder.createSource(getResources(), i));
        }
        return null;
    }

    private AnimatedImageDrawable cJ(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return Qhi(ac(bArr));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
        if (r2 == null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.ImageDecoder.Source ac(byte[] r6) {
        /*
            r5 = this;
            r0 = 0
            android.content.Context r1 = r5.getContext()     // Catch: java.lang.Throwable -> L34
            boolean r2 = com.bytedance.sdk.openadsdk.multipro.cJ.ac()     // Catch: java.lang.Throwable -> L34
            if (r2 == 0) goto Le
            java.lang.String r2 = "GIF_AD_CACHE/"
            goto L10
        Le:
            java.lang.String r2 = "/GIF_CACHE/"
        L10:
            java.lang.String r3 = "TT_GIF_FILE"
            java.io.File r1 = Qhi(r1, r2, r3)     // Catch: java.lang.Throwable -> L34
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L34
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L34
            int r3 = r6.length     // Catch: java.lang.Throwable -> L32
            r4 = 0
            r2.write(r6, r4, r3)     // Catch: java.lang.Throwable -> L32
            int r6 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L32
            r3 = 28
            if (r6 < r3) goto L2e
            android.graphics.ImageDecoder$Source r6 = android.graphics.ImageDecoder.createSource(r1)     // Catch: java.lang.Throwable -> L32
            r2.close()     // Catch: java.lang.Throwable -> L2d
        L2d:
            return r6
        L2e:
            r2.close()     // Catch: java.lang.Throwable -> L40
            goto L40
        L32:
            r6 = move-exception
            goto L36
        L34:
            r6 = move-exception
            r2 = r0
        L36:
            java.lang.String r1 = "GifView"
            java.lang.String r3 = "GifView  getSourceByFile fail : "
            com.bytedance.sdk.component.utils.ABk.Qhi(r1, r3, r6)     // Catch: java.lang.Throwable -> L41
            if (r2 == 0) goto L40
            goto L2e
        L40:
            return r0
        L41:
            r6 = move-exception
            if (r2 == 0) goto L47
            r2.close()     // Catch: java.lang.Throwable -> L47
        L47:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.widget.GifView.ac(byte[]):android.graphics.ImageDecoder$Source");
    }

    private AnimatedImageDrawable Qhi(ImageDecoder.Source source) {
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        Drawable decodeDrawable = ImageDecoder.decodeDrawable(source);
        setImageDrawable(decodeDrawable);
        if (decodeDrawable instanceof AnimatedImageDrawable) {
            AnimatedImageDrawable animatedImageDrawable = (AnimatedImageDrawable) decodeDrawable;
            if (!this.ABk) {
                animatedImageDrawable.start();
            }
            return animatedImageDrawable;
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        Movie movie;
        int size;
        int size2;
        super.onMeasure(i, i2);
        if (this.Tgh || (movie = this.cJ) == null) {
            return;
        }
        int width = movie.width();
        int height = this.cJ.height();
        float max = 1.0f / Math.max((View.MeasureSpec.getMode(i) == 0 || width <= (size2 = View.MeasureSpec.getSize(i))) ? 1.0f : width / size2, (View.MeasureSpec.getMode(i2) == 0 || height <= (size = View.MeasureSpec.getSize(i2))) ? 1.0f : height / size);
        this.WAv = max;
        int i3 = (int) (width * max);
        this.Gm = i3;
        int i4 = (int) (height * max);
        this.zc = i4;
        setMeasuredDimension(i3, i4);
    }

    public static File Qhi(Context context, String str, String str2) {
        return ROR.Qhi(context, com.bytedance.sdk.openadsdk.multipro.cJ.ac(), str, str2);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.cJ != null && !this.Tgh) {
            this.Sf = (getWidth() - this.Gm) / 2.0f;
            this.hm = (getHeight() - this.zc) / 2.0f;
        }
        this.iMK = getVisibility() == 0;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.cJ != null && !this.Tgh) {
            try {
                if (!this.ABk) {
                    ac();
                    Qhi(canvas);
                    cJ();
                    return;
                }
                Qhi(canvas);
                return;
            } catch (Throwable th) {
                ABk.Qhi("GifView", "onDraw->Throwable->", th);
                return;
            }
        }
        super.onDraw(canvas);
    }

    private void cJ() {
        if (this.cJ == null || this.Tgh || !this.iMK) {
            return;
        }
        postInvalidateOnAnimation();
    }

    private void ac() {
        if (this.cJ == null) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.ac == 0) {
            this.ac = uptimeMillis;
        }
        int duration = this.cJ.duration();
        if (duration == 0) {
            duration = 1000;
        }
        if (!this.pA && Math.abs(duration - this.CJ) < 60) {
            this.CJ = duration;
            this.ABk = true;
            return;
        }
        this.CJ = (int) ((uptimeMillis - this.ac) % duration);
    }

    private void Qhi(Canvas canvas) {
        Movie movie = this.cJ;
        if (movie == null) {
            return;
        }
        movie.setTime(this.CJ);
        float f2 = this.WAv;
        if (f2 == 0.0f) {
            canvas.scale(1.0f, 1.0f);
            this.cJ.draw(canvas, 0.0f, 0.0f);
        } else {
            canvas.scale(f2, f2);
            Movie movie2 = this.cJ;
            float f3 = this.Sf;
            float f4 = this.WAv;
            movie2.draw(canvas, f3 / f4, this.hm / f4);
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (this.cJ != null) {
            this.iMK = i == 1;
            cJ();
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.cJ != null) {
            this.iMK = i == 0;
            cJ();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.cJ != null) {
            this.iMK = i == 0;
            cJ();
        }
    }
}
