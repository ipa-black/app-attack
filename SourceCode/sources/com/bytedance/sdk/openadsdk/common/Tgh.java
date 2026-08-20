package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLoadingBar;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: LandingPageLoadingDefaultStyle.java */
/* loaded from: classes2.dex */
public class Tgh {
    private TTRoundRectImageView CJ;
    protected View Qhi = fl();
    private PAGLoadingBar ac;
    protected Context cJ;
    private PAGTextView fl;

    public Tgh(Context context) {
        this.cJ = context;
    }

    public View Qhi() {
        return this.Qhi;
    }

    public TTRoundRectImageView cJ() {
        return this.CJ;
    }

    public PAGTextView ac() {
        return this.fl;
    }

    private View fl() {
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(this.cJ);
        pAGLinearLayout.setGravity(1);
        pAGLinearLayout.setOrientation(1);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(this.cJ);
        this.CJ = tTRoundRectImageView;
        tTRoundRectImageView.setId(520093745);
        int cJ = zn.cJ(this.cJ, 64.0f);
        pAGLinearLayout.addView(this.CJ, new LinearLayout.LayoutParams(cJ, cJ));
        PAGTextView pAGTextView = new PAGTextView(this.cJ);
        this.fl = pAGTextView;
        pAGTextView.setId(520093746);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(zn.cJ(this.cJ, 219.0f), -2);
        layoutParams.topMargin = zn.cJ(this.cJ, 16.0f);
        this.fl.setLayoutParams(layoutParams);
        this.fl.setEllipsize(TextUtils.TruncateAt.END);
        this.fl.setGravity(17);
        this.fl.setMaxWidth(zn.cJ(this.cJ, 150.0f));
        this.fl.setMaxLines(2);
        this.fl.setTextColor(-1);
        this.fl.setTextSize(1, 16.0f);
        pAGLinearLayout.addView(this.fl);
        this.ac = new PAGLoadingBar(this.cJ);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(zn.cJ(this.cJ, 219.0f), zn.cJ(this.cJ, 6.0f));
        layoutParams2.topMargin = zn.cJ(this.cJ, 32.0f);
        pAGLinearLayout.addView(this.ac, layoutParams2);
        return pAGLinearLayout;
    }

    public void Qhi(int i) {
        this.ac.setProgress(i);
    }

    public void CJ() {
        this.Qhi = null;
        this.cJ = null;
    }
}
