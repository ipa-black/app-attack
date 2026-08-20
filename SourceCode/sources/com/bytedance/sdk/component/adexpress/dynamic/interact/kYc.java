package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.SlideUp3DView;
/* compiled from: SlideUp3DInteract.java */
/* loaded from: classes2.dex */
public class kYc implements hm<SlideUp3DView> {
    private com.bytedance.sdk.component.adexpress.dynamic.ac.Sf CJ;
    private SlideUp3DView Qhi;
    private DynamicBaseWidget ac;
    private Context cJ;

    public kYc(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        this.cJ = context;
        this.ac = dynamicBaseWidget;
        this.CJ = sf;
        CJ();
    }

    protected void CJ() {
        this.Qhi = new SlideUp3DView(this.cJ);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) CQU.Qhi(this.cJ, 250.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) CQU.Qhi(this.cJ, 120.0f);
        this.Qhi.setLayoutParams(layoutParams);
        this.Qhi.setGuideText(this.CJ.Dq());
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void Qhi() {
        this.Qhi.cJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    public void cJ() {
        this.Qhi.ac();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.interact.hm
    /* renamed from: fl */
    public SlideUp3DView ac() {
        return this.Qhi;
    }
}
