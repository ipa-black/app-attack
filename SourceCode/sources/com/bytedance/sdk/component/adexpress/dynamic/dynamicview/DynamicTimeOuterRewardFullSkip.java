package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.CJ.MQ;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
/* loaded from: classes2.dex */
public class DynamicTimeOuterRewardFullSkip extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.ac {
    private boolean Qhi;

    public DynamicTimeOuterRewardFullSkip(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        if (dynamicRootView.getRenderRequest() != null) {
            this.Qhi = dynamicRootView.getRenderRequest().ABk();
        }
        this.ROR = this.Sf;
        this.pA = new ImageView(context);
        this.pA.setTag(Integer.valueOf(getClickArea()));
        addView(this.pA, getWidgetLayoutParams());
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().CQU()) {
            return;
        }
        this.pA.setVisibility(8);
        setVisibility(8);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        Drawable ac;
        super.hm();
        ((ImageView) this.pA).setScaleType(ImageView.ScaleType.CENTER_CROP);
        Drawable Qhi = MQ.Qhi(getContext(), this.zc);
        if (Qhi != null) {
            ((ImageView) this.pA).setBackground(Qhi);
        }
        if (this.Qhi) {
            ac = com.bytedance.sdk.component.utils.MQ.ac(getContext(), "tt_close_btn");
        } else {
            ac = com.bytedance.sdk.component.utils.MQ.ac(getContext(), "tt_skip_btn");
            if (ac != null) {
                ac.setAutoMirrored(true);
            }
        }
        if (ac != null) {
            ((ImageView) this.pA).setImageDrawable(ac);
        }
        setVisibility(8);
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ac
    public void Qhi(CharSequence charSequence, boolean z, int i, boolean z2) {
        int i2 = 0;
        if (!z && !z2) {
            i2 = 8;
        }
        setVisibility(i2);
    }
}
