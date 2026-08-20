package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.ClickSlideUpView;
/* compiled from: ClickSlideUpInteract.java */
/* loaded from: classes2.dex */
public class Tgh extends tP<ClickSlideUpView> {
    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.tP
    protected void CJ() {
    }

    public Tgh(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        super(context, dynamicBaseWidget, sf);
        Qhi(sf);
    }

    private void Qhi(com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        this.Qhi = new ClickSlideUpView(this.cJ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) CQU.Qhi(this.cJ, sf.dIT());
        this.Qhi.setLayoutParams(layoutParams);
        this.Qhi.setSlideText(this.CJ.Dq());
        if (this.Qhi instanceof ClickSlideUpView) {
            ((ClickSlideUpView) this.Qhi).setButtonText(this.CJ.WAv());
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
