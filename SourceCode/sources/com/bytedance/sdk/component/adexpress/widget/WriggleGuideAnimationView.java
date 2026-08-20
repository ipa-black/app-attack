package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.adsdk.lottie.LottieAnimationView;
import com.bytedance.sdk.component.adexpress.dynamic.ac.Gm;
import com.bytedance.sdk.component.utils.qMt;
/* loaded from: classes2.dex */
public class WriggleGuideAnimationView extends LinearLayout {
    private Qhi CJ;
    private TextView Qhi;
    private Gm ROR;
    private LottieAnimationView Tgh;
    private TextView ac;
    private qMt cJ;
    private LinearLayout fl;

    /* loaded from: classes2.dex */
    public interface Qhi {
    }

    public WriggleGuideAnimationView(Context context, View view, Gm gm) {
        super(context);
        this.ROR = gm;
        Qhi(context, view);
    }

    private void Qhi(Context context, View view) {
        setClipChildren(false);
        addView(view);
        this.fl = (LinearLayout) findViewById(2097610722);
        this.Qhi = (TextView) findViewById(2097610719);
        this.ac = (TextView) findViewById(2097610718);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) findViewById(2097610706);
        this.Tgh = lottieAnimationView;
        lottieAnimationView.setAnimation("lottie_json/twist_multi_angle.json");
        this.Tgh.setImageAssetsFolder("images/");
        this.Tgh.cJ(true);
    }

    public void setShakeText(String str) {
        this.ac.setText(str);
    }

    public LinearLayout getWriggleLayout() {
        return this.fl;
    }

    public View getWriggleProgressIv() {
        return this.Tgh;
    }

    public TextView getTopTextView() {
        return this.Qhi;
    }

    public void setOnShakeViewListener(Qhi qhi) {
        this.CJ = qhi;
    }

    public void Qhi() {
        postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    WriggleGuideAnimationView.this.Tgh.Qhi();
                } catch (Throwable unused) {
                }
            }
        }, 500L);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.cJ == null) {
                this.cJ = new qMt(getContext().getApplicationContext(), 2);
            }
            new Object() { // from class: com.bytedance.sdk.component.adexpress.widget.WriggleGuideAnimationView.2
            };
            Gm gm = this.ROR;
            if (gm != null) {
                gm.ac();
                this.ROR.fl();
                this.ROR.Tgh();
                this.ROR.Sf();
            }
            this.cJ.onResume();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            LottieAnimationView lottieAnimationView = this.Tgh;
            if (lottieAnimationView != null) {
                lottieAnimationView.ac();
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        qMt qmt = this.cJ;
        if (qmt == null || !z) {
            return;
        }
        qmt.onResume();
    }
}
