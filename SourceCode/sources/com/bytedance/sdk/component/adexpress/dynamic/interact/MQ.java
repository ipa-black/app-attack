package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.DynamicUnlockView;
/* compiled from: UnlockInteract.java */
/* loaded from: classes2.dex */
public class MQ implements hm<DynamicUnlockView> {
    private final DynamicUnlockView Qhi;

    public MQ(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        int i;
        DynamicUnlockView dynamicUnlockView = new DynamicUnlockView(context);
        this.Qhi = dynamicUnlockView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 81;
        if (sf.dIT() > 0) {
            i = sf.dIT();
        } else {
            i = com.bytedance.sdk.component.adexpress.fl.cJ() ? 0 : 120;
        }
        layoutParams.bottomMargin = (int) CQU.Qhi(context, i);
        dynamicUnlockView.setLayoutParams(layoutParams);
        dynamicUnlockView.setClipChildren(false);
        dynamicUnlockView.setText(sf.Dq());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void Qhi() {
        DynamicUnlockView dynamicUnlockView = this.Qhi;
        if (dynamicUnlockView != null) {
            dynamicUnlockView.Qhi();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void cJ() {
        DynamicUnlockView dynamicUnlockView = this.Qhi;
        if (dynamicUnlockView != null) {
            dynamicUnlockView.cJ();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    /* renamed from: CJ */
    public DynamicUnlockView ac() {
        return this.Qhi;
    }
}
