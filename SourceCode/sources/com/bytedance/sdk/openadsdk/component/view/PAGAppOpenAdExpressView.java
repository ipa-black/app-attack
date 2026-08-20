package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.cJ.pA;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.ugen.ac;
import com.bytedance.sdk.openadsdk.core.ugen.ac.cJ;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class PAGAppOpenAdExpressView extends NativeExpressView {
    private fl.Qhi CJ;
    boolean Qhi;
    private com.bytedance.sdk.openadsdk.component.Tgh.Qhi ac;
    private FrameLayout cJ;

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi(int i, String str) {
    }

    public PAGAppOpenAdExpressView(Context context, tP tPVar, AdSlot adSlot, String str) {
        super(context, tPVar, adSlot, str, true, true);
        this.Qhi = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void Tgh() {
        this.iMK = true;
        this.cJ = new FrameLayout(this.Sf);
        if (!ac.Qhi(this.Gm)) {
            addView(this.cJ, new FrameLayout.LayoutParams(-1, -1));
        }
        super.Tgh();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public int getDynamicShowType() {
        if (this.aP == null) {
            return 1;
        }
        return super.getDynamicShowType();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.cJ.hpZ
    public void Qhi(com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar, pA pAVar) {
        this.aP = flVar;
        if (pAVar != null && pAVar.ac()) {
            cJ(pAVar);
        }
        super.Qhi(flVar, pAVar);
    }

    public void cJ(final pA pAVar) {
        if (pAVar == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.view.PAGAppOpenAdExpressView.1
            @Override // java.lang.Runnable
            public void run() {
                PAGAppOpenAdExpressView.this.ac(pAVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac(pA pAVar) {
        if (pAVar == null) {
            return;
        }
        if (pAVar.Qhi() != null) {
            if (this.Qhi) {
                pAVar.Qhi().setTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.Tgh, 1);
                ((FrameLayout) pAVar.Qhi()).removeAllViews();
                FrameLayout frameLayout = (FrameLayout) pAVar.Qhi();
                this.cJ = frameLayout;
                ((FrameLayout.LayoutParams) frameLayout.getLayoutParams()).gravity = 17;
                this.Qhi = false;
                return;
            }
            return;
        }
        double Tgh = pAVar.Tgh();
        double ROR = pAVar.ROR();
        double Sf = pAVar.Sf();
        double hm = pAVar.hm();
        int cJ = zn.cJ(this.Sf, (float) Tgh);
        int cJ2 = zn.cJ(this.Sf, (float) ROR);
        int cJ3 = zn.cJ(this.Sf, (float) Sf);
        int cJ4 = zn.cJ(this.Sf, (float) hm);
        if ((hm == 0.0d || Sf == 0.0d) && this.aP.ac() != 7) {
            return;
        }
        if (this.aP.ac() == 7 && (pAVar instanceof cJ)) {
            FrameLayout hpZ = ((cJ) pAVar).hpZ();
            if (hpZ != null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 17;
                hpZ.addView(this.cJ, layoutParams);
                return;
            }
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.cJ.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(cJ3, cJ4);
        }
        layoutParams2.width = cJ3;
        layoutParams2.height = cJ4;
        layoutParams2.topMargin = cJ2;
        layoutParams2.leftMargin = cJ;
        layoutParams2.setMarginStart(layoutParams2.leftMargin);
        layoutParams2.setMarginEnd(layoutParams2.rightMargin);
        this.cJ.setLayoutParams(layoutParams2);
    }

    public void setExpressVideoListenerProxy(fl.Qhi qhi) {
        this.CJ = qhi;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi() {
        com.bytedance.sdk.openadsdk.component.Tgh.Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.Qhi(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void cJ() {
        super.cJ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi(int i) {
        super.Qhi(i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void fl() {
        com.bytedance.sdk.openadsdk.component.Tgh.Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.cJ(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.cJ.hm
    public void Qhi(View view, int i, com.bytedance.sdk.component.adexpress.ac acVar) {
        if (i != -1 && acVar != null && i == 3) {
            fl();
        } else {
            super.Qhi(view, i, acVar);
        }
    }

    public void setTopListener(com.bytedance.sdk.openadsdk.component.Tgh.Qhi qhi) {
        this.ac = qhi;
    }

    public FrameLayout getVideoFrameLayout() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    protected int getRenderTimeout() {
        return com.bytedance.sdk.openadsdk.component.ROR.Qhi.Qhi(this.Gm, HzH.CJ().ROR(String.valueOf(this.Gm.Hy())));
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    protected void Qhi(iMK.Qhi qhi) {
        qhi.fl(com.bytedance.sdk.openadsdk.component.ROR.Qhi.cJ());
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    protected void Qhi(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.component.ROR.Qhi.Qhi(jSONObject, this.Gm == null ? 0 : this.Gm.Hy());
    }
}
