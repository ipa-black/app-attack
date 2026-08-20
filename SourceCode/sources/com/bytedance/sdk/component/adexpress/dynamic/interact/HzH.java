package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.SlideRightView;
/* compiled from: SlideRightInteract.java */
/* loaded from: classes2.dex */
public class HzH implements hm {
    private com.bytedance.sdk.component.adexpress.dynamic.ac.Sf CJ;
    private SlideRightView Qhi;
    private DynamicBaseWidget ac;
    private Context cJ;

    public HzH(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        this.cJ = context;
        this.ac = dynamicBaseWidget;
        this.CJ = sf;
        CJ();
    }

    private void CJ() {
        this.Qhi = new SlideRightView(this.cJ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, (int) CQU.Qhi(this.cJ, 120.0f));
        layoutParams.gravity = 17;
        this.Qhi.setLayoutParams(layoutParams);
        this.Qhi.setClipChildren(false);
        this.Qhi.setGuideText(this.CJ.Dq());
        DynamicBaseWidget dynamicBaseWidget = this.ac;
        if (dynamicBaseWidget != null) {
            this.Qhi.setOnClickListener((View.OnClickListener) dynamicBaseWidget.getDynamicClickListener());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void Qhi() {
        SlideRightView slideRightView = this.Qhi;
        if (slideRightView != null) {
            slideRightView.Qhi();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void cJ() {
        SlideRightView slideRightView = this.Qhi;
        if (slideRightView != null) {
            slideRightView.cJ();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public ViewGroup ac() {
        return this.Qhi;
    }
}
