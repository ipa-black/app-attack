package com.bytedance.sdk.openadsdk.core.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RotateDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.ExoPlayer;
/* loaded from: classes2.dex */
public class PAGProgressBar extends FrameLayout {
    private Drawable CJ;
    private int Qhi;
    private ValueAnimator ROR;
    private boolean Sf;
    private boolean Tgh;
    private Drawable ac;
    private int cJ;
    private Drawable fl;

    public void setProgress(int i) {
        this.cJ = i;
        Drawable drawable = this.ac;
        if (drawable != null) {
            drawable.setLevel((int) ((i * 10000.0f) / this.Qhi));
        }
    }

    public void setMax(int i) {
        this.Qhi = i;
    }

    public void setProgressDrawable(Drawable drawable) {
        this.CJ = drawable;
        setBackground(drawable);
        Drawable drawable2 = this.CJ;
        if (drawable2 instanceof LayerDrawable) {
            int numberOfLayers = ((LayerDrawable) drawable2).getNumberOfLayers();
            for (int i = 0; i < numberOfLayers; i++) {
                Drawable drawable3 = ((LayerDrawable) this.CJ).getDrawable(i);
                if ((drawable3 instanceof ScaleDrawable) || (drawable3 instanceof ClipDrawable)) {
                    this.ac = drawable3;
                }
            }
        }
        Drawable drawable4 = this.CJ;
        if (drawable4 instanceof RotateDrawable) {
            this.ac = drawable4;
        }
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        this.fl = drawable;
        setProgressDrawable(drawable);
        if (this.Tgh && this.ROR == null) {
            Qhi();
        }
    }

    public PAGProgressBar(Context context) {
        super(context);
        this.Qhi = 100;
    }

    public PAGProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Qhi = 100;
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        super.setLayoutParams(Qhi.Qhi(this, layoutParams));
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.Tgh = true;
        if (this.fl != null) {
            Qhi();
        }
    }

    private void Qhi() {
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 10000);
        this.ROR = ofInt;
        ofInt.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        this.ROR.setRepeatCount(-1);
        this.ROR.setInterpolator(new LinearInterpolator());
        this.ROR.setRepeatMode(1);
        this.ROR.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PAGProgressBar.this.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        this.ROR.start();
        setMax(10000);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.Tgh = false;
        ValueAnimator valueAnimator = this.ROR;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.ROR.removeAllUpdateListeners();
            this.ROR = null;
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            if (this.Sf) {
                this.Sf = false;
                ValueAnimator valueAnimator = this.ROR;
                if (valueAnimator != null) {
                    valueAnimator.resume();
                } else {
                    Qhi();
                }
            }
        } else if (this.ROR == null || this.Sf) {
        } else {
            this.Sf = true;
            this.ROR.pause();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }
}
