package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class NativeExpressVideoView extends NativeExpressView implements fl.ac, fl.InterfaceC0165fl, ABk {
    int CJ;
    private com.bytedance.sdk.openadsdk.apiImpl.feed.ac Jma;
    private ExpressVideoView NFd;
    int Qhi;
    int ROR;
    boolean Tgh;
    boolean ac;
    boolean cJ;
    boolean fl;
    private long lB;
    private long lG;
    private com.bytedance.sdk.openadsdk.multipro.cJ.Qhi sDy;

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void cJ() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void fl() {
    }

    public NativeExpressVideoView(Context context, tP tPVar, AdSlot adSlot, String str) {
        super(context, tPVar, adSlot, str, false, true);
        this.Qhi = 1;
        this.cJ = false;
        this.ac = true;
        this.fl = true;
        this.Tgh = true;
        this.ROR = -1;
        ROR();
    }

    protected void ROR() {
        this.zc = new FrameLayout(this.Sf);
        int Hy = this.Gm != null ? this.Gm.Hy() : 0;
        this.CJ = Hy;
        CJ(Hy);
        hpZ();
        addView(this.zc, new FrameLayout.LayoutParams(-1, -1));
        if (getWebView() != null) {
            getWebView().setBackgroundColor(0);
        }
    }

    private void hpZ() {
        try {
            this.sDy = new com.bytedance.sdk.openadsdk.multipro.cJ.Qhi();
            ExpressVideoView expressVideoView = new ExpressVideoView(this.Sf, this.Gm, this.hm, this.CQU);
            this.NFd = expressVideoView;
            expressVideoView.setShouldCheckNetChange(false);
            this.NFd.setControllerStatusCallBack(new NativeVideoTsView.cJ() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.1
                @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.cJ
                public void Qhi(boolean z, long j, long j2, long j3, boolean z2) {
                    NativeExpressVideoView.this.sDy.Qhi = z;
                    NativeExpressVideoView.this.sDy.fl = j;
                    NativeExpressVideoView.this.sDy.Tgh = j2;
                    NativeExpressVideoView.this.sDy.ROR = j3;
                    NativeExpressVideoView.this.sDy.CJ = z2;
                }
            });
            this.NFd.setVideoAdLoadListener(this);
            this.NFd.setVideoAdInteractionListener(this);
            if ("embeded_ad".equals(this.hm)) {
                this.NFd.setIsAutoPlay(this.cJ ? this.WAv.isAutoPlay() : this.ac);
            } else if ("open_ad".equals(this.hm)) {
                this.NFd.setIsAutoPlay(true);
            } else {
                this.NFd.setIsAutoPlay(this.ac);
            }
            if ("open_ad".equals(this.hm)) {
                this.NFd.setIsQuiet(true);
            } else {
                this.EBS = com.bytedance.sdk.openadsdk.core.HzH.CJ().ac(String.valueOf(this.CJ));
                this.NFd.setIsQuiet(this.EBS);
            }
            this.NFd.CJ();
        } catch (Exception unused) {
            this.NFd = null;
        }
    }

    void CJ(int i) {
        int cJ = com.bytedance.sdk.openadsdk.core.HzH.CJ().cJ(i);
        if (3 == cJ) {
            this.cJ = false;
            this.ac = false;
        } else if (4 == cJ) {
            this.cJ = true;
        } else {
            int ac = com.bytedance.sdk.component.utils.hpZ.ac(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
            if (1 == cJ) {
                this.cJ = false;
                this.ac = js.CJ(ac);
            } else if (2 == cJ) {
                if (js.fl(ac) || js.CJ(ac) || js.Tgh(ac)) {
                    this.cJ = false;
                    this.ac = true;
                }
            } else if (5 == cJ && (js.CJ(ac) || js.Tgh(ac))) {
                this.cJ = false;
                this.ac = true;
            }
        }
        if (this.ac) {
            return;
        }
        this.Qhi = 3;
    }

    public com.bytedance.sdk.openadsdk.multipro.cJ.Qhi getVideoModel() {
        return this.sDy;
    }

    private void setShowAdInteractionView(boolean z) {
        ExpressVideoView expressVideoView = this.NFd;
        if (expressVideoView != null) {
            expressVideoView.setShowAdInteractionView(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.cJ.hpZ
    public void Qhi(com.bytedance.sdk.component.adexpress.cJ.fl<? extends View> flVar, com.bytedance.sdk.component.adexpress.cJ.pA pAVar) {
        this.aP = flVar;
        this.ROR = flVar.ac();
        if ((this.aP instanceof kYc) && ((kYc) this.aP).hpZ() != null) {
            ((kYc) this.aP).hpZ().Qhi((ABk) this);
        }
        if (pAVar != null && pAVar.ac()) {
            cJ(pAVar);
        }
        super.Qhi(flVar, pAVar);
    }

    private void cJ(final com.bytedance.sdk.component.adexpress.cJ.pA pAVar) {
        if (pAVar == null) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.2
            @Override // java.lang.Runnable
            public void run() {
                NativeExpressVideoView.this.ac(pAVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac(com.bytedance.sdk.component.adexpress.cJ.pA pAVar) {
        double Tgh = pAVar.Tgh();
        double ROR = pAVar.ROR();
        double Sf = pAVar.Sf();
        double hm = pAVar.hm();
        if ((Sf == 0.0d || hm == 0.0d) && this.ROR != 7) {
            return;
        }
        int cJ = zn.cJ(this.Sf, (float) Tgh);
        int cJ2 = zn.cJ(this.Sf, (float) ROR);
        int cJ3 = zn.cJ(this.Sf, (float) Sf);
        int cJ4 = zn.cJ(this.Sf, (float) hm);
        float min = Math.min(Math.min(zn.cJ(this.Sf, pAVar.zc()), zn.cJ(this.Sf, pAVar.ABk())), Math.min(zn.cJ(this.Sf, pAVar.iMK()), zn.cJ(this.Sf, pAVar.pA())));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.zc.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(cJ3, cJ4);
        }
        layoutParams.width = cJ3;
        layoutParams.height = cJ4;
        layoutParams.topMargin = cJ2;
        layoutParams.leftMargin = cJ;
        layoutParams.setMarginStart(layoutParams.leftMargin);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        this.zc.setLayoutParams(layoutParams);
        this.zc.removeAllViews();
        if (this.NFd != null) {
            if (this.ROR == 7 && (pAVar instanceof com.bytedance.sdk.openadsdk.core.ugen.ac.cJ)) {
                FrameLayout hpZ = ((com.bytedance.sdk.openadsdk.core.ugen.ac.cJ) pAVar).hpZ();
                if (hpZ != null) {
                    hpZ.removeAllViews();
                    hpZ.addView(this.NFd, new FrameLayout.LayoutParams(-1, -1));
                }
            } else if (pAVar.Qhi() != null) {
                if (this.Tgh) {
                    pAVar.Qhi().setTag(com.bytedance.sdk.component.adexpress.dynamic.Qhi.Tgh, 1);
                    ((FrameLayout) pAVar.Qhi()).removeAllViews();
                    ((FrameLayout) pAVar.Qhi()).addView(this.NFd, new FrameLayout.LayoutParams(-1, -1));
                    this.Tgh = false;
                }
            } else {
                this.zc.addView(this.NFd);
            }
            zn.cJ(this.zc, min);
            this.NFd.Qhi(0L, true, false);
            CJ(this.CJ);
            if (!com.bytedance.sdk.component.utils.hpZ.CJ(this.Sf) && !this.ac && this.fl) {
                this.NFd.fl();
            }
            if (TextUtils.equals("embeded_ad", this.hm)) {
                return;
            }
            setShowAdInteractionView(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi(boolean z) {
        ExpressVideoView expressVideoView = this.NFd;
        if (expressVideoView != null) {
            expressVideoView.setIsQuiet(z);
            setSoundMute(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi(int i) {
        ExpressVideoView expressVideoView = this.NFd;
        if (expressVideoView == null) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.NativeExpressVideoView", "onChangeVideoState,ExpressVideoView is null !!!!!!!!!!!!");
        } else if (i == 1) {
            expressVideoView.Qhi(0L, true, false);
        } else if (i == 2 || i == 3) {
            expressVideoView.setCanInterruptVideoPlay(true);
            this.NFd.performClick();
        } else if (i == 4) {
            expressVideoView.getNativeVideoController().CJ();
        } else if (i != 5) {
        } else {
            expressVideoView.Qhi(0L, true, false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.component.adexpress.cJ.hm
    public void Qhi(View view, int i, com.bytedance.sdk.component.adexpress.ac acVar) {
        if (i == -1 || acVar == null) {
            return;
        }
        if (i == 11) {
            try {
                ExpressVideoView expressVideoView = this.NFd;
                if (expressVideoView != null) {
                    expressVideoView.setCanInterruptVideoPlay(true);
                    this.NFd.performClick();
                    if (this.ABk) {
                        this.NFd.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.Ug).setVisibility(0);
                        return;
                    }
                    return;
                }
                return;
            } catch (Exception unused) {
                return;
            }
        }
        super.Qhi(view, i, acVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public long ac() {
        return this.lB;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public int CJ() {
        ExpressVideoView expressVideoView;
        if (this.Qhi == 3 && (expressVideoView = this.NFd) != null) {
            expressVideoView.CJ();
        }
        ExpressVideoView expressVideoView2 = this.NFd;
        if (expressVideoView2 == null || !expressVideoView2.getNativeVideoController().hpZ()) {
            return this.Qhi;
        }
        return 1;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void e_() {
        this.fl = false;
        this.Qhi = 2;
        com.bytedance.sdk.openadsdk.apiImpl.feed.ac acVar = this.Jma;
        if (acVar != null) {
            acVar.Qhi(null);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void h_() {
        this.fl = false;
        this.ABk = true;
        this.Qhi = 3;
        com.bytedance.sdk.openadsdk.apiImpl.feed.ac acVar = this.Jma;
        if (acVar != null) {
            acVar.cJ(null);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void i_() {
        this.fl = false;
        this.ABk = false;
        this.Qhi = 2;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void Qhi(long j, long j2) {
        this.fl = false;
        int i = this.Qhi;
        if (i != 5 && i != 3 && j > this.lB) {
            this.Qhi = 2;
        }
        this.lB = j;
        this.lG = j2;
        if (this.Eh != null && this.Eh.cJ() != null) {
            this.Eh.cJ().setTimeUpdate(((int) (j2 - j)) / 1000);
        }
        if (this.aP instanceof com.bytedance.sdk.openadsdk.core.ugen.ac.ac) {
            ((com.bytedance.sdk.openadsdk.core.ugen.ac.ac) this.aP).setTimeUpdate(((int) (j2 - j)) / 1000);
        }
        cJ(j, j2);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void j_() {
        this.fl = false;
        this.Qhi = 5;
        if (this.Eh != null && this.Eh.cJ() != null) {
            this.Eh.cJ().d_();
        }
        com.bytedance.sdk.openadsdk.apiImpl.feed.ac acVar = this.Jma;
        if (acVar != null) {
            acVar.ac(null);
        }
        if (this.aP instanceof com.bytedance.sdk.openadsdk.core.ugen.ac.ac) {
            ((com.bytedance.sdk.openadsdk.core.ugen.ac.ac) this.aP).d_();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.InterfaceC0165fl
    public void Qhi(int i, int i2) {
        this.lB = this.lG;
        this.Qhi = 4;
        com.bytedance.sdk.openadsdk.apiImpl.feed.ac acVar = this.Jma;
        if (acVar != null) {
            acVar.Qhi(i, i2);
        }
    }

    protected ExpressVideoView getExpressVideoView() {
        return this.NFd;
    }

    public com.bykv.vk.openvk.component.video.api.CJ.fl getVideoController() {
        ExpressVideoView expressVideoView = this.NFd;
        if (expressVideoView != null) {
            return expressVideoView.getNativeVideoController();
        }
        return null;
    }

    public void setVideoAdListener(com.bytedance.sdk.openadsdk.apiImpl.feed.ac acVar) {
        this.Jma = acVar;
    }

    public com.bytedance.sdk.openadsdk.apiImpl.feed.ac getVideoAdListener() {
        return this.Jma;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView, com.bytedance.sdk.openadsdk.core.nativeexpress.ABk
    public void Qhi(int i, String str) {
        this.kYc = i;
        this.tP = str;
    }

    private void cJ(long j, long j2) {
        int abs = (int) Math.abs(this.kYc - j);
        if (this.kYc < 0 || abs > 500 || this.kYc > j2 || abs >= 500 || this.MQ.contains(this.tP)) {
            return;
        }
        if (this.kYc > j) {
            postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView.3
                @Override // java.lang.Runnable
                public void run() {
                    NativeExpressVideoView.this.NFd.setCanInterruptVideoPlay(true);
                    NativeExpressVideoView.this.NFd.performClick();
                    NativeExpressVideoView nativeExpressVideoView = NativeExpressVideoView.this;
                    nativeExpressVideoView.cJ(nativeExpressVideoView.kYc, NativeExpressVideoView.this.tP);
                }
            }, abs);
        } else {
            this.NFd.setCanInterruptVideoPlay(true);
            this.NFd.performClick();
            cJ(this.kYc, this.tP);
        }
        this.MQ.add(this.tP);
    }
}
