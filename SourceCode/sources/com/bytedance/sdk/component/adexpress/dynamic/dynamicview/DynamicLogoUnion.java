package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.PorterDuff;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.utils.MQ;
/* loaded from: classes2.dex */
public class DynamicLogoUnion extends DynamicBaseWidgetImp {
    public DynamicLogoUnion(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        this.pA = new ImageView(context);
        this.pA.setTag(Integer.valueOf(getClickArea()));
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            this.Sf = Math.max(dynamicRootView.getLogoUnionHeight(), this.Sf);
        }
        addView(this.pA, getWidgetLayoutParams());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        super.hm();
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            ((ImageView) this.pA).setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        }
        ((ImageView) this.pA).setImageResource(MQ.CJ(getContext(), "tt_ad_logo"));
        ((ImageView) this.pA).setColorFilter(this.zc.ROR(), PorterDuff.Mode.SRC_IN);
        return true;
    }
}
