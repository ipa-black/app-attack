package com.bytedance.sdk.component.adexpress.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.qMt;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class ShakeAnimationView extends LinearLayout {
    private qMt CJ;
    private int Gm;
    private TextView Qhi;
    private Qhi ROR;
    private LinearLayout Sf;
    private TextView Tgh;
    private int WAv;
    private ImageView ac;
    private TextView cJ;
    private TextView fl;
    private int hm;
    private JSONObject zc;

    /* loaded from: classes2.dex */
    public interface Qhi {
    }

    public ShakeAnimationView(Context context, View view, int i, int i2, int i3, JSONObject jSONObject) {
        super(context);
        this.hm = i;
        this.WAv = i2;
        this.Gm = i3;
        this.zc = jSONObject;
        Qhi(context, view);
    }

    protected void Qhi(Context context, View view) {
        addView(view);
        this.Sf = (LinearLayout) findViewById(2097610727);
        this.ac = (ImageView) findViewById(2097610725);
        this.Qhi = (TextView) findViewById(2097610724);
        this.cJ = (TextView) findViewById(2097610726);
        this.fl = (TextView) findViewById(2097610723);
        this.Tgh = (TextView) findViewById(2097610728);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.Sf.setBackground(gradientDrawable);
    }

    public void setShakeText(String str) {
        if (TextUtils.isEmpty(str)) {
            this.fl.setVisibility(8);
            this.Tgh.setVisibility(8);
            return;
        }
        this.fl.setText(str);
    }

    public LinearLayout getShakeLayout() {
        return this.Sf;
    }

    public void setOnShakeViewListener(Qhi qhi) {
        this.ROR = qhi;
    }

    public void Qhi() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(300L);
        ofFloat.start();
        postDelayed(new AnonymousClass1(), 500L);
    }

    /* renamed from: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Runnable {
        AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ShakeAnimationView.this.ac != null) {
                final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
                rotateAnimation.setInterpolator(new cJ(null));
                rotateAnimation.setDuration(1000L);
                rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        ShakeAnimationView.this.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ShakeAnimationView.this.ac.startAnimation(rotateAnimation);
                            }
                        }, 250L);
                    }
                });
                ShakeAnimationView.this.ac.startAnimation(rotateAnimation);
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class cJ implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            return f2 <= 0.25f ? (f2 * (-2.0f)) + 0.5f : f2 <= 0.5f ? (f2 * 4.0f) - 1.0f : f2 <= 0.75f ? (f2 * (-4.0f)) + 3.0f : (f2 * 2.0f) - 1.5f;
        }

        private cJ() {
        }

        /* synthetic */ cJ(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.CJ == null) {
                this.CJ = new qMt(getContext().getApplicationContext(), 1);
            }
            new Object() { // from class: com.bytedance.sdk.component.adexpress.widget.ShakeAnimationView.2
            };
            this.CJ.onResume();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        qMt qmt = this.CJ;
        if (qmt == null || !z) {
            return;
        }
        qmt.onResume();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
