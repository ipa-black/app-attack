package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import com.bytedance.sdk.component.adexpress.widget.TTRatingBar2;
/* loaded from: classes2.dex */
public class DynamicStarView extends DynamicBaseWidgetImp {
    private int Qhi;

    public DynamicStarView(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        this.Qhi = 0;
        this.pA = new TTRatingBar2(context, null);
        this.pA.setTag(Integer.valueOf(getClickArea()));
        addView(this.pA, getWidgetLayoutParams());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        int Qhi = (int) ((CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.fl()) * 5.0f) + CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.ac() + CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.CJ())));
        if (this.ROR > Qhi && 4 == this.zc.Sf()) {
            this.Qhi = (this.ROR - Qhi) / 2;
        }
        this.ROR = Qhi;
        return new FrameLayout.LayoutParams(this.ROR, this.Sf);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void Tgh() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.ROR, this.Sf);
        layoutParams.topMargin = this.WAv;
        layoutParams.leftMargin = this.hm + this.Qhi;
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        super.hm();
        double ABk = this.zc.ABk();
        if (com.bytedance.sdk.component.adexpress.fl.cJ() && (ABk < 0.0d || ABk > 5.0d || (this.iMK != null && this.iMK.getRenderRequest() != null && this.iMK.getRenderRequest().WAv() != 4))) {
            this.pA.setVisibility(8);
            return true;
        }
        double d2 = (ABk < 0.0d || ABk > 5.0d) ? 5.0d : ABk;
        this.pA.setVisibility(0);
        ((TTRatingBar2) this.pA).Qhi(d2, this.zc.ROR(), (int) this.zc.fl(), ((int) CQU.Qhi(this.Gm, this.zc.cJ())) + ((int) CQU.Qhi(this.Gm, this.zc.Qhi())) + ((int) CQU.Qhi(this.Gm, this.zc.fl())));
        return true;
    }
}
