package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.ac;
import com.bytedance.sdk.openadsdk.core.widget.DSPAdChoice;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar2;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class PAGAppOpenHtmlLayout extends PAGAppOpenBaseLayout {
    Qhi ABk;

    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(View view, int i);
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout
    public PAGImageView getAdIconView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout
    public PAGTextView getAdTitleTextView() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout
    public TTRatingBar2 getScoreBar() {
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout
    public View getUserInfo() {
        return null;
    }

    public PAGAppOpenHtmlLayout(Context context, tP tPVar) {
        super(context);
        Qhi(context, tPVar);
    }

    private void Qhi(Context context, tP tPVar) {
        DspHtmlWebView dspHtmlWebView = new DspHtmlWebView(context);
        ac.Qhi().ac(dspHtmlWebView);
        dspHtmlWebView.Qhi(tPVar, new DspHtmlWebView.cJ() { // from class: com.bytedance.sdk.openadsdk.component.view.PAGAppOpenHtmlLayout.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
            public void Qhi(int i, int i2) {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
            public void f_() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
            public View Qhi() {
                if (PAGAppOpenHtmlLayout.this.Sf != null) {
                    return PAGAppOpenHtmlLayout.this.Sf.getTopDislike();
                }
                return null;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
            public View cJ() {
                return PAGAppOpenHtmlLayout.this;
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
            public void Qhi(View view, int i) {
                if (PAGAppOpenHtmlLayout.this.ABk != null) {
                    PAGAppOpenHtmlLayout.this.ABk.Qhi(view, i);
                }
            }
        }, "open_ad");
        addView(dspHtmlWebView, new ViewGroup.LayoutParams(-1, -1));
        dspHtmlWebView.hpZ();
        int cJ = zn.cJ(context, 9.0f);
        int cJ2 = zn.cJ(context, 10.0f);
        this.CJ = new PAGLogoView(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, zn.cJ(context, 14.0f));
        layoutParams.leftMargin = cJ2;
        layoutParams.bottomMargin = cJ2;
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        addView(this.CJ, layoutParams);
        this.zc = new DSPAdChoice(context);
        this.zc.setPadding(cJ, 0, cJ, 0);
        this.zc.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(zn.cJ(context, 32.0f), zn.cJ(context, 14.0f));
        layoutParams2.addRule(12);
        layoutParams2.addRule(11);
        layoutParams2.setMargins(0, 0, cJ2, cJ2);
        addView(this.zc, layoutParams2);
        if (this.Sf != null) {
            addView(this.Sf);
        }
    }

    public void setRenderListener(Qhi qhi) {
        this.ABk = qhi;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.ABk = null;
    }
}
