package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.CJ.MQ;
import com.bytedance.sdk.component.adexpress.CJ.pM;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
/* loaded from: classes2.dex */
public class DynamicMutedView extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.cJ {
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public boolean fl() {
        return true;
    }

    public DynamicMutedView(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        this.pA = new ImageView(context);
        this.pA.setTag(5);
        addView(this.pA, getWidgetLayoutParams());
        dynamicRootView.setMuteListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().CQU()) {
            return;
        }
        this.pA.setVisibility(8);
        setVisibility(8);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        super.hm();
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            ((ImageView) this.pA).setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else {
            ((ImageView) this.pA).setScaleType(ImageView.ScaleType.CENTER);
        }
        setSoundMute(this.iMK.cJ);
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            Drawable Qhi = MQ.Qhi(getContext(), this.zc);
            if (Qhi != null) {
                ((ImageView) this.pA).setBackground(Qhi);
                return true;
            }
            return true;
        }
        ((ImageView) this.pA).setBackgroundDrawable(pM.Qhi(0, Integer.valueOf(this.zc.aP()), new int[]{this.Sf / 2}, null, null, null));
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.cJ
    public void setSoundMute(boolean z) {
        int CJ;
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            if (z) {
                CJ = com.bytedance.sdk.component.utils.MQ.CJ(getContext(), "tt_reward_full_mute");
            } else {
                CJ = com.bytedance.sdk.component.utils.MQ.CJ(getContext(), "tt_reward_full_unmute");
            }
        } else if (z) {
            CJ = com.bytedance.sdk.component.utils.MQ.CJ(getContext(), "tt_mute");
        } else {
            CJ = com.bytedance.sdk.component.utils.MQ.CJ(getContext(), "tt_unmute");
        }
        ((ImageView) this.pA).setImageResource(CJ);
        if (((ImageView) this.pA).getDrawable() != null) {
            ((ImageView) this.pA).getDrawable().setAutoMirrored(true);
        }
    }
}
