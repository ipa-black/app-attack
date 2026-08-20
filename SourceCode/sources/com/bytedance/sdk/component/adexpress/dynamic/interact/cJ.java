package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.DynamicBrushMaskView;
/* compiled from: BrushMaskInteract.java */
/* loaded from: classes2.dex */
public class cJ implements hm<DynamicBrushMaskView> {
    private DynamicBrushMaskView Qhi;

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void Qhi() {
    }

    public cJ(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        int i;
        this.Qhi = new DynamicBrushMaskView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        if (sf.dIT() > 0) {
            i = sf.dIT();
        } else {
            i = com.bytedance.sdk.component.adexpress.fl.cJ() ? 0 : 120;
        }
        layoutParams.bottomMargin = (int) CQU.Qhi(context, i);
        this.Qhi.setLayoutParams(layoutParams);
        this.Qhi.setClipChildren(false);
        this.Qhi.setBrushText(sf.Dq());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void cJ() {
        DynamicBrushMaskView dynamicBrushMaskView = this.Qhi;
        if (dynamicBrushMaskView != null) {
            dynamicBrushMaskView.cJ();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    /* renamed from: CJ */
    public DynamicBrushMaskView ac() {
        return this.Qhi;
    }
}
