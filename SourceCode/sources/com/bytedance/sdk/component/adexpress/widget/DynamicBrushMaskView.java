package com.bytedance.sdk.component.adexpress.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.ac.Qhi;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
/* loaded from: classes2.dex */
public class DynamicBrushMaskView extends FrameLayout {
    private Context CJ;
    private RelativeLayout Qhi;
    private ImageView ROR;
    private FrameLayout Sf;
    private ImageView Tgh;
    private volatile boolean WAv;
    private TextView ac;
    private BrushMaskView cJ;
    private ObjectAnimator fl;
    private volatile boolean hm;

    public DynamicBrushMaskView(Context context) {
        super(context);
        this.WAv = false;
        this.CJ = context;
        addView(Qhi.fl(context));
        ac();
    }

    public void setBrushText(String str) {
        if (this.ac == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.ac.setText(str);
    }

    private void ac() {
        this.cJ = (BrushMaskView) findViewById(2097610740);
        this.Qhi = (RelativeLayout) findViewById(2097610737);
        this.Tgh = (ImageView) findViewById(2097610739);
        this.Sf = (FrameLayout) findViewById(2097610741);
        this.ROR = (ImageView) findViewById(2097610736);
        this.Sf.setClipChildren(false);
        this.ac = (TextView) findViewById(2097610738);
        if (this.cJ != null) {
            this.cJ.setWatermark(MQ.CJ(this.CJ, "tt_splash_brush_bg"));
            this.cJ.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (DynamicBrushMaskView.this.fl == null || !DynamicBrushMaskView.this.fl.isStarted()) {
                            DynamicBrushMaskView.this.CJ();
                        }
                    } catch (Exception e2) {
                        e2.getMessage();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ() {
        if (this.cJ != null) {
            this.hm = false;
            int Qhi = CQU.Qhi(this.CJ);
            int i = (Qhi * 336) / 375;
            int i2 = (i * 80) / 336;
            this.Sf.setLayoutParams(new RelativeLayout.LayoutParams(i, i2));
            float f2 = i;
            final float f3 = f2 - (f2 / 3.0f);
            this.cJ.setEraserSize((this.cJ.getHeight() * 3) / 5.0f);
            float Qhi2 = CQU.Qhi(getContext(), 15.0f);
            final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) f3, i2 / 2);
            int i3 = i2 / 4;
            layoutParams.topMargin = i3;
            float f4 = f2 / 6.0f;
            layoutParams.leftMargin = (int) f4;
            layoutParams.setMarginStart(layoutParams.leftMargin);
            layoutParams.setMarginEnd(layoutParams.rightMargin);
            this.Tgh.setLayoutParams(layoutParams);
            int i4 = (Qhi * 58) / 375;
            this.ROR.setLayoutParams(new RelativeLayout.LayoutParams(500, 500));
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i4, (i4 * 76) / 58);
            layoutParams2.topMargin = (int) (i3 + Qhi2);
            layoutParams2.leftMargin = (int) (f4 - (Qhi2 * 1.5f));
            layoutParams2.setMarginStart(layoutParams2.leftMargin);
            layoutParams2.setMarginEnd(layoutParams2.rightMargin);
            this.Qhi.setLayoutParams(layoutParams2);
            this.cJ.Qhi(this.cJ.getWidth() / 6.0f, this.cJ.getHeight() / 2.0f);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.Qhi, "translationX", 0.0f, f3);
            this.fl = ofFloat;
            ofFloat.setDuration(1000L);
            this.fl.setRepeatMode(1);
            this.fl.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float animatedFraction = valueAnimator.getAnimatedFraction();
                    if (DynamicBrushMaskView.this.Tgh != null) {
                        layoutParams.width = (int) (f3 * animatedFraction);
                        DynamicBrushMaskView.this.Tgh.setLayoutParams(layoutParams);
                    }
                }
            });
            this.fl.addListener(new AnimatorListenerAdapter() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    if (DynamicBrushMaskView.this.cJ != null) {
                        if (DynamicBrushMaskView.this.Tgh != null) {
                            layoutParams.width = 0;
                            DynamicBrushMaskView.this.Tgh.setLayoutParams(layoutParams);
                        }
                        if (DynamicBrushMaskView.this.hm) {
                            return;
                        }
                        DynamicBrushMaskView.this.WAv = true;
                        DynamicBrushMaskView.this.cJ.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                DynamicBrushMaskView.this.WAv = false;
                                if (DynamicBrushMaskView.this.hm) {
                                    return;
                                }
                                DynamicBrushMaskView.this.fl.start();
                            }
                        }, 100L);
                    }
                }
            });
            ObjectAnimator objectAnimator = this.fl;
            if (objectAnimator == null || objectAnimator.isStarted() || this.fl.isRunning() || this.WAv) {
                return;
            }
            this.fl.start();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            try {
                ObjectAnimator objectAnimator = this.fl;
                if (objectAnimator == null || !(objectAnimator.isStarted() || this.fl.isRunning() || this.WAv)) {
                    BrushMaskView brushMaskView = this.cJ;
                    if (brushMaskView != null) {
                        brushMaskView.Qhi();
                    }
                    RelativeLayout relativeLayout = this.Qhi;
                    if (relativeLayout != null) {
                        relativeLayout.setVisibility(0);
                    }
                    CJ();
                }
            } catch (Exception e2) {
                ABk.Qhi("DynamicBrushMaskView", e2.getMessage());
            }
        }
    }

    public void Qhi() {
        if (this.hm) {
            return;
        }
        this.hm = true;
        ObjectAnimator objectAnimator = this.fl;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            RelativeLayout relativeLayout = this.Qhi;
            if (relativeLayout != null) {
                relativeLayout.clearAnimation();
                this.Qhi.setVisibility(4);
            }
            this.cJ.Qhi();
        }
        BrushMaskView brushMaskView = this.cJ;
        if (brushMaskView != null) {
            brushMaskView.setEraserSize(brushMaskView.getHeight());
            BrushMaskView brushMaskView2 = this.cJ;
            brushMaskView2.Qhi(0.0f, brushMaskView2.getHeight() / 2.0f);
            this.cJ.cJ();
        }
    }

    public void cJ() {
        clearAnimation();
    }
}
