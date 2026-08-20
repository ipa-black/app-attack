package com.bytedance.sdk.openadsdk.layout;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.hm;
/* loaded from: classes2.dex */
public abstract class TTInteractionStyleBaseFrameLayout extends PAGFrameLayout {
    protected PAGTextView CJ;
    protected PAGFrameLayout Qhi;
    protected PAGTextView Tgh;
    protected TTRoundRectImageView ac;
    protected PAGImageView cJ;
    protected PAGTextView fl;

    protected abstract void Qhi(Context context);

    public TTInteractionStyleBaseFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Qhi(context);
    }

    public FrameLayout getTtAdContainer() {
        return this.Qhi;
    }

    public ImageView getTtFullImg() {
        return this.cJ;
    }

    public TTRoundRectImageView getTtFullAdIcon() {
        return this.ac;
    }

    public TextView getTtFullAdAppName() {
        return this.CJ;
    }

    public TextView getTtFullAdDesc() {
        return this.fl;
    }

    public TextView getTtFullAdDownload() {
        return this.Tgh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PAGFrameLayout fl(Context context) {
        return new PAGFrameLayout(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PAGImageView Tgh(Context context) {
        PAGImageView pAGImageView = new PAGImageView(context);
        pAGImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        return pAGImageView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TTRoundRectImageView ROR(Context context) {
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        tTRoundRectImageView.setScaleType(ImageView.ScaleType.FIT_XY);
        tTRoundRectImageView.setBackgroundColor(0);
        return tTRoundRectImageView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PAGTextView cJ(Context context) {
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView.setMaxLines(1);
        pAGTextView.setTextColor(Color.parseColor("#FF999999"));
        pAGTextView.setTextSize(2, 16.0f);
        return pAGTextView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PAGTextView ac(Context context) {
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        pAGTextView.setMaxLines(1);
        pAGTextView.setSingleLine();
        pAGTextView.setTextColor(Color.parseColor("#FF999999"));
        pAGTextView.setTextSize(2, 12.0f);
        return pAGTextView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PAGTextView CJ(Context context) {
        PAGTextView pAGTextView = new PAGTextView(context);
        pAGTextView.setBackground(hm.Qhi(context, "tt_backup_btn_1"));
        pAGTextView.setGravity(17);
        pAGTextView.setText(MQ.cJ(context, "tt_video_download_apk"));
        pAGTextView.setTextColor(-1);
        pAGTextView.setTextSize(2, 14.0f);
        return pAGTextView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PAGLogoView Sf(Context context) {
        PAGLogoView pAGLogoView = new PAGLogoView(context);
        pAGLogoView.setId(520093739);
        return pAGLogoView;
    }
}
