package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.BluePressInteractView;
/* compiled from: BluePressInteract.java */
/* loaded from: classes2.dex */
public class Qhi implements hm {
    private BluePressInteractView Qhi;

    public Qhi(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        double oU = sf.oU();
        oU = oU == 0.0d ? 1.0d : oU;
        double pv = sf.pv();
        double d2 = pv != 0.0d ? pv : 1.0d;
        int dynamicWidth = (int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * oU);
        int dynamicWidth2 = (int) (dynamicBaseWidget.getDynamicWidth() * 0.32d * d2);
        this.Qhi = new BluePressInteractView(context, dynamicWidth, dynamicWidth2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(dynamicWidth, dynamicWidth2);
        layoutParams.gravity = 17;
        layoutParams.topMargin = (int) CQU.Qhi(context, sf.ots() - 7);
        layoutParams.leftMargin = (int) CQU.Qhi(context, sf.HLI() - 3);
        this.Qhi.setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void Qhi() {
        this.Qhi.Qhi();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void cJ() {
        this.Qhi.cJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public ViewGroup ac() {
        return this.Qhi;
    }
}
