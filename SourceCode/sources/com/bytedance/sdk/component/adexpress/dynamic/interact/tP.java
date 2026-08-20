package com.bytedance.sdk.component.adexpress.dynamic.interact;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget;
import com.bytedance.sdk.component.adexpress.widget.SlideUpView;
/* compiled from: SlideUpInteract.java */
/* loaded from: classes2.dex */
public class tP<E extends SlideUpView> implements hm<E> {
    protected com.bytedance.sdk.component.adexpress.dynamic.ac.Sf CJ;
    protected SlideUpView Qhi;
    protected DynamicBaseWidget ac;
    protected Context cJ;
    protected int fl;

    public tP(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf, int i) {
        this.fl = i;
        this.cJ = context;
        this.ac = dynamicBaseWidget;
        this.CJ = sf;
        CJ();
    }

    public tP(Context context, DynamicBaseWidget dynamicBaseWidget, com.bytedance.sdk.component.adexpress.dynamic.ac.Sf sf) {
        this(context, dynamicBaseWidget, sf, 0);
    }

    protected void CJ() {
        this.Qhi = new SlideUpView(this.cJ, this.CJ.ip());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) CQU.Qhi(this.cJ, 200.0f));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = (int) CQU.Qhi(this.cJ, 100 - this.fl);
        this.Qhi.setLayoutParams(layoutParams);
        try {
            this.Qhi.setGuideText(this.CJ.Dq());
        } catch (Throwable unused) {
        }
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
    /* renamed from: fl */
    public E ac() {
        return (E) this.Qhi;
    }
}
