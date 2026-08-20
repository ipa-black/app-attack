package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import java.util.List;
/* loaded from: classes2.dex */
public class DynamicSkipCountDownContainer extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.ac {
    private int MQ;
    private int Qhi;
    private int cJ;

    public DynamicSkipCountDownContainer(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        setTag(Integer.valueOf(getClickArea()));
        dynamicRootView.setTimeOutListener(this);
        Qhi();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        setBackground(getBackgroundDrawable());
        setPadding((int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.ac()), (int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.cJ()), (int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.CJ()), (int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.Qhi()));
        return true;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void Tgh() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = this.hm;
        layoutParams.topMargin = this.WAv;
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.MQ == 0) {
            setMeasuredDimension(this.cJ, this.Sf);
        } else {
            setMeasuredDimension(this.Qhi, this.Sf);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ac
    public void Qhi(CharSequence charSequence, boolean z, int i, boolean z2) {
        this.MQ = i;
    }

    private void Qhi() {
        List<hm> Gm = this.ABk.Gm();
        if (Gm == null || Gm.size() <= 0) {
            return;
        }
        for (hm hmVar : Gm) {
            if (hmVar.WAv().Qhi() == 21) {
                this.Qhi = (int) (this.ROR - CQU.Qhi(this.Gm, hmVar.Sf()));
            }
            if (hmVar.WAv().Qhi() == 20) {
                this.cJ = (int) (this.ROR - CQU.Qhi(this.Gm, hmVar.Sf()));
            }
        }
    }
}
