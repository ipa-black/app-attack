package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.CJ.MQ;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
/* loaded from: classes2.dex */
public class DynamicDislikeFeedBack extends DynamicBaseWidgetImp {
    public DynamicDislikeFeedBack(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            this.pA = new ImageView(context);
            ((ImageView) this.pA).setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.ROR = this.Sf;
        } else {
            this.pA = new TextView(context);
        }
        this.pA.setTag(3);
        addView(this.pA, getWidgetLayoutParams());
        dynamicRootView.setDislikeView(this.pA);
        if (dynamicRootView.getRenderRequest() != null) {
            if (dynamicRootView.getRenderRequest().Sf() && dynamicRootView.getRenderRequest().CQU()) {
                return;
            }
            this.pA.setVisibility(8);
            setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        super.hm();
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            Drawable Qhi = MQ.Qhi(getContext(), this.zc);
            if (Qhi != null) {
                ((ImageView) this.pA).setBackground(Qhi);
            }
            ((ImageView) this.pA).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int CJ = com.bytedance.sdk.component.utils.MQ.CJ(getContext(), "tt_reward_full_feedback");
            if (CJ > 0) {
                ((ImageView) this.pA).setImageResource(CJ);
            }
            return true;
        }
        ((TextView) this.pA).setText(getText());
        this.pA.setTextAlignment(this.zc.Sf());
        ((TextView) this.pA).setTextColor(this.zc.ROR());
        ((TextView) this.pA).setTextSize(this.zc.fl());
        this.pA.setBackground(getBackgroundDrawable());
        if (!this.zc.EBS()) {
            ((TextView) this.pA).setMaxLines(1);
            ((TextView) this.pA).setGravity(17);
            ((TextView) this.pA).setEllipsize(TextUtils.TruncateAt.END);
        } else {
            int bxS = this.zc.bxS();
            if (bxS > 0) {
                ((TextView) this.pA).setLines(bxS);
                ((TextView) this.pA).setEllipsize(TextUtils.TruncateAt.END);
            }
        }
        this.pA.setPadding((int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.ac()), (int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.cJ()), (int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.CJ()), (int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.Qhi()));
        ((TextView) this.pA).setGravity(17);
        return true;
    }

    public String getText() {
        return com.bytedance.sdk.component.utils.MQ.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), "tt_reward_feedback");
    }
}
