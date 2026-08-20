package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.CJ.Dww;
import com.bytedance.sdk.component.adexpress.dynamic.ac.hm;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class DynamicTimeOuterContainerWidgetImp extends DynamicBaseWidgetImp implements com.bytedance.sdk.component.adexpress.dynamic.ac {
    private boolean EBS;
    private int MQ;
    int Qhi;
    boolean cJ;
    private int qMt;

    public DynamicTimeOuterContainerWidgetImp(Context context, DynamicRootView dynamicRootView, hm hmVar) {
        super(context, dynamicRootView, hmVar);
        this.qMt = 0;
        setTag(Integer.valueOf(getClickArea()));
        Qhi();
        dynamicRootView.setTimeOutListener(this);
        if (dynamicRootView.getRenderRequest() == null || dynamicRootView.getRenderRequest().CQU()) {
            return;
        }
        if (this.pA != null) {
            this.pA.setVisibility(8);
        }
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp
    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(-2, -2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidget
    public void Tgh() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        if (this.cJ) {
            layoutParams.leftMargin = this.hm;
        } else {
            layoutParams.leftMargin = this.hm + this.qMt;
        }
        if (this.EBS && this.zc != null) {
            layoutParams.leftMargin = ((this.hm + this.qMt) - ((int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.ac()))) - ((int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.CJ()));
        }
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            layoutParams.topMargin = this.WAv - ((int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.cJ()));
        } else {
            layoutParams.topMargin = this.WAv;
        }
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.fl
    public boolean hm() {
        if (Dww.cJ(this.iMK.getRenderRequest().CJ())) {
            return true;
        }
        super.hm();
        setPadding((int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.ac()), (int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.cJ()), (int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.CJ()), (int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.Qhi()));
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.EBS && this.zc != null) {
            setMeasuredDimension(this.MQ + ((int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.ac())) + ((int) CQU.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), this.zc.CJ())), this.Sf);
        } else if (this.cJ) {
            setMeasuredDimension(this.ROR, this.Sf);
        } else {
            setMeasuredDimension(this.Qhi, this.Sf);
        }
    }

    private void Qhi() {
        List<hm> Gm = this.ABk.Gm();
        if (Gm == null || Gm.size() <= 0) {
            return;
        }
        Iterator<hm> it = Gm.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            hm next = it.next();
            if (TextUtils.equals("skip-with-time-skip-btn", next.WAv().cJ())) {
                this.MQ = (int) CQU.Qhi(this.Gm, next.Sf() + (com.bytedance.sdk.component.adexpress.fl.cJ() ? next.ABk() : 0));
                this.Qhi = this.ROR - this.MQ;
            }
        }
        this.qMt = this.ROR - this.Qhi;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.ac
    public void Qhi(CharSequence charSequence, boolean z, int i, boolean z2) {
        if (z2 && this.EBS != z2) {
            this.EBS = z2;
            Tgh();
            return;
        }
        if (z && this.cJ != z) {
            this.cJ = z;
            Tgh();
        }
        this.cJ = z;
    }
}
