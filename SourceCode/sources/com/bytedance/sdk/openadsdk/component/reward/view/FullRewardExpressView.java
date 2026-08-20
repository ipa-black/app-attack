package com.bytedance.sdk.openadsdk.component.reward.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.cJ.pA;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.core.model.MQ;
import com.bytedance.sdk.openadsdk.core.nativeexpress.ABk;
import com.bytedance.sdk.openadsdk.core.nativeexpress.FullRewardExpressBackupView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.kYc;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class FullRewardExpressView extends NativeExpressView {
    public static float Qhi = 100.0f;
    private final com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi CJ;
    FullRewardExpressBackupView ac;
    ABk cJ;

    public FullRewardExpressView(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi, AdSlot adSlot, String str) {
        super(qhi.FQ, qhi.cJ, adSlot, str, qhi.dIT, !qhi.VnT);
        this.CJ = qhi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public void Tgh() {
        this.iMK = true;
        this.zc = new FrameLayout(this.Sf);
        if (!com.bytedance.sdk.openadsdk.core.ugen.ac.Qhi(this.Gm)) {
            addView(this.zc, new FrameLayout.LayoutParams(-1, -1));
        }
        super.Tgh();
        SSWebView webView = getWebView();
        if (webView != null) {
            webView.setBackgroundColor(0);
        }
        ROR();
    }

    private void ROR() {
        setBackupListener(new com.bytedance.sdk.component.adexpress.cJ.ac() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView.1
            @Override // com.bytedance.sdk.component.adexpress.cJ.ac
            public boolean Qhi(ViewGroup viewGroup, int i) {
                try {
                    ((NativeExpressView) viewGroup).zc();
                    FullRewardExpressView.this.ac = new FullRewardExpressBackupView(viewGroup.getContext());
                    FullRewardExpressView.this.ac.Qhi(FullRewardExpressView.this.Gm, (NativeExpressView) viewGroup, FullRewardExpressView.this.CJ.yN);
                    return true;
                } catch (Exception unused) {
                    return false;
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.cJ.hpZ
    public void Qhi(com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar, pA pAVar) {
        this.aP = flVar;
        if (this.Gm != null && this.Gm.Ewb()) {
            super.Qhi(flVar, pAVar);
            return;
        }
        if (flVar instanceof kYc) {
            kYc kyc = (kYc) flVar;
            if (kyc.hpZ() != null) {
                kyc.hpZ().Qhi((ABk) this);
            }
        }
        if (pAVar != null && pAVar.ac()) {
            cJ(pAVar);
        }
        super.Qhi(flVar, pAVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public boolean Qhi(pA pAVar) {
        if ((this.Gm instanceof MQ) && ((MQ) this.Gm).mvd() && pAVar.ac() && pAVar.cJ() == 1) {
            return false;
        }
        return super.Qhi(pAVar);
    }

    public void setExpressVideoListenerProxy(ABk aBk) {
        this.cJ = aBk;
    }

    public void cJ(final pA pAVar) {
        if (pAVar == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.FullRewardExpressView.2
            @Override // java.lang.Runnable
            public void run() {
                FullRewardExpressView.this.ac(pAVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac(pA pAVar) {
        if (pAVar == null) {
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
        if (this.aP.ac() == 7 && (pAVar instanceof com.bytedance.sdk.openadsdk.core.ugen.ac.cJ)) {
            FrameLayout hpZ = ((com.bytedance.sdk.openadsdk.core.ugen.ac.cJ) pAVar).hpZ();
            if (hpZ != null) {
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 17;
                hpZ.addView(this.zc, layoutParams);
                return;
            }
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.zc.getLayoutParams();
        if (layoutParams2 == null) {
            layoutParams2 = new FrameLayout.LayoutParams(cJ3, cJ4);
        }
        layoutParams2.width = cJ3;
        layoutParams2.height = cJ4;
        layoutParams2.topMargin = cJ2;
        layoutParams2.leftMargin = cJ;
        layoutParams2.setMarginStart(layoutParams2.leftMargin);
        layoutParams2.setMarginEnd(layoutParams2.rightMargin);
        this.zc.setLayoutParams(layoutParams2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi(boolean z) {
        ABk aBk = this.cJ;
        if (aBk != null) {
            aBk.Qhi(z);
        }
        setSoundMute(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi() {
        ABk aBk = this.cJ;
        if (aBk != null) {
            aBk.Qhi();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void cJ() {
        ABk aBk = this.cJ;
        if (aBk != null) {
            aBk.cJ();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi(int i) {
        ABk aBk = this.cJ;
        if (aBk != null) {
            aBk.Qhi(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public long ac() {
        ABk aBk = this.cJ;
        if (aBk != null) {
            return aBk.ac();
        }
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public int CJ() {
        ABk aBk = this.cJ;
        if (aBk != null) {
            return aBk.CJ();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void fl() {
        ABk aBk = this.cJ;
        if (aBk != null) {
            aBk.fl();
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

    public FrameLayout getVideoFrameLayout() {
        if (ABk()) {
            return this.ac.getVideoContainer();
        }
        return this.zc;
    }

    public View getBackupContainerBackgroundView() {
        if (ABk()) {
            return this.ac.getBackupContainerBackgroundView();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void cJ(int i) {
        ABk aBk = this.cJ;
        if (aBk != null) {
            aBk.cJ(i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi(int i, String str) {
        ABk aBk = this.cJ;
        if (aBk != null) {
            aBk.Qhi(i, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView
    public Tgh.Qhi ac(int i) {
        Tgh.Qhi ac = super.ac(i);
        if (this.CJ.VnT && this.CJ.Ura != null) {
            ac.cJ = this.CJ.Ura.hm;
        }
        return ac;
    }
}
