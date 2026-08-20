package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.ABk;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.utils.MQ;
/* loaded from: classes2.dex */
public class DynamicLogoAd extends DynamicBaseWidgetImp {
    public DynamicLogoAd(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        this.pA = new TextView(context);
        this.pA.setTag(Integer.valueOf(getClickArea()));
        addView(this.pA, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        super.hm();
        this.pA.setTextAlignment(this.zc.Sf());
        ((TextView) this.pA).setTextColor(this.zc.ROR());
        ((TextView) this.pA).setTextSize(this.zc.fl());
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            ((TextView) this.pA).setIncludeFontPadding(false);
            ((TextView) this.pA).setTextSize(Math.min(((CQU.cJ(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.Sf) - this.zc.cJ()) - this.zc.Qhi()) - 0.5f, this.zc.fl()));
            ((TextView) this.pA).setText(MQ.Qhi(getContext(), "tt_logo_en"));
            return true;
        } else if (Qhi()) {
            if (ABk.cJ()) {
                ((TextView) this.pA).setText(ABk.Qhi());
                return true;
            }
            ((TextView) this.pA).setText(ABk.Qhi(this.zc.cJ));
            return true;
        } else {
            ((TextView) this.pA).setText(MQ.cJ(getContext(), "tt_logo_cn"));
            return true;
        }
    }

    private boolean Qhi() {
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.zc.cJ) && this.zc.cJ.contains("adx:")) || ABk.cJ();
    }
}
