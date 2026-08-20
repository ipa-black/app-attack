package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Movie;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.sdk.component.utils.ABk;
/* loaded from: classes2.dex */
public class GifView extends ImageView {
    private boolean ABk;
    private AnimatedImageDrawable CJ;
    private int Gm;
    private Movie Qhi;
    private float ROR;
    private float Sf;
    private boolean Tgh;
    private int WAv;
    private int ac;
    private long cJ;
    private boolean fl;
    private float hm;
    private boolean iMK;
    private volatile boolean zc;

    public GifView(Context context) {
        super(context);
        this.fl = Build.VERSION.SDK_INT >= 28;
        this.Tgh = false;
        this.ABk = true;
        this.iMK = true;
        Qhi();
    }

    void Qhi() {
        if (this.fl) {
            return;
        }
        setLayerType(1, null);
    }

    private void setDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        setImageDrawable(drawable);
        if (Build.VERSION.SDK_INT >= 28 && (drawable instanceof AnimatedImageDrawable)) {
            AnimatedImageDrawable animatedImageDrawable = (AnimatedImageDrawable) drawable;
            this.CJ = animatedImageDrawable;
            if (!this.zc) {
                animatedImageDrawable.start();
            }
            if (!this.iMK) {
                animatedImageDrawable.setRepeatCount(0);
            }
        }
        cJ();
    }

    public void setRepeatConfig(boolean z) {
        AnimatedImageDrawable animatedImageDrawable;
        this.iMK = z;
        if (z) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT < 28 || (animatedImageDrawable = this.CJ) == null) {
                return;
            }
            animatedImageDrawable.setRepeatCount(0);
        } catch (Exception e2) {
            ABk.Qhi("GifView", "setRepeatConfig error", e2);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        Movie movie;
        int size;
        int size2;
        super.onMeasure(i, i2);
        if (this.fl || (movie = this.Qhi) == null) {
            return;
        }
        int width = movie.width();
        int height = this.Qhi.height();
        float max = 1.0f / Math.max((View.MeasureSpec.getMode(i) == 0 || width <= (size2 = View.MeasureSpec.getSize(i))) ? 1.0f : width / size2, (View.MeasureSpec.getMode(i2) == 0 || height <= (size = View.MeasureSpec.getSize(i2))) ? 1.0f : height / size);
        this.hm = max;
        int i3 = (int) (width * max);
        this.WAv = i3;
        int i4 = (int) (height * max);
        this.Gm = i4;
        setMeasuredDimension(i3, i4);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.Qhi != null && !this.fl) {
            this.ROR = (getWidth() - this.WAv) / 2.0f;
            this.Sf = (getHeight() - this.Gm) / 2.0f;
        }
        this.ABk = getVisibility() == 0;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.Qhi != null && !this.fl) {
            try {
                if (!this.zc) {
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
        if (this.Qhi == null || this.fl || !this.ABk) {
            return;
        }
        postInvalidateOnAnimation();
    }

    private void ac() {
        if (this.Qhi == null) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.cJ == 0) {
            this.cJ = uptimeMillis;
        }
        int duration = this.Qhi.duration();
        if (duration == 0) {
            duration = 1000;
        }
        if (!this.iMK && Math.abs(duration - this.ac) < 60) {
            this.ac = duration;
            this.zc = true;
            return;
        }
        this.ac = (int) ((uptimeMillis - this.cJ) % duration);
    }

    private void Qhi(Canvas canvas) {
        Movie movie = this.Qhi;
        if (movie == null) {
            return;
        }
        movie.setTime(this.ac);
        float f2 = this.hm;
        if (f2 == 0.0f) {
            canvas.scale(1.0f, 1.0f);
            this.Qhi.draw(canvas, 0.0f, 0.0f);
        } else {
            canvas.scale(f2, f2);
            Movie movie2 = this.Qhi;
            float f3 = this.ROR;
            float f4 = this.hm;
            movie2.draw(canvas, f3 / f4, this.Sf / f4);
        }
        canvas.restore();
    }

    @Override // android.view.View
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (this.Qhi != null) {
            this.ABk = i == 1;
            cJ();
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.Qhi != null) {
            this.ABk = i == 0;
            cJ();
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.Qhi != null) {
            this.ABk = i == 0;
            cJ();
        }
    }
}
