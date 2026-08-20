package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpView;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpView2;
/* compiled from: ClickSlideUpInteract2.java */
/* loaded from: classes2.dex */
public class ROR extends tP<ClickSlideUpView> {
    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.tP
    protected void CJ() {
    }

    public ROR(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        super(context, dynamicBaseWidget, sf);
        Qhi(sf);
    }

    private void Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        this.Qhi = new ClickSlideUpView2(this.cJ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 81;
        this.Qhi.setLayoutParams(layoutParams);
        if (this.Qhi instanceof ClickSlideUpView2) {
            ((ClickSlideUpView2) this.Qhi).setButtonText(this.CJ.Dq());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.tP, com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void Qhi() {
        this.Qhi.Qhi();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.tP, com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void cJ() {
        this.Qhi.cJ();
    }
}
