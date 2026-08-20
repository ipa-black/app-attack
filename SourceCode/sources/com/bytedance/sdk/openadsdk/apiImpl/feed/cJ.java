package com.bytedance.sdk.openadsdk.apiImpl.feed;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.hpZ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.multipro.cJ.Qhi;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.List;
/* compiled from: PAGFeedNativeVideoAdImpl.java */
/* loaded from: classes2.dex */
public class cJ extends hm implements fl.ac, fl.InterfaceC0165fl, Qhi.InterfaceC0239Qhi {
    private long ABk;
    private boolean Gm;
    private ac Sf;
    private boolean WAv;
    private final com.bytedance.sdk.openadsdk.multipro.cJ.Qhi hm;
    private AdSlot zc;

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void i_() {
    }

    public cJ(Context context, tP tPVar, int i, AdSlot adSlot) {
        super(context, tPVar, i, true);
        this.WAv = false;
        this.Gm = true;
        this.fl = i;
        this.zc = adSlot;
        this.hm = new com.bytedance.sdk.openadsdk.multipro.cJ.Qhi();
        Qhi(this.Tgh);
        Qhi("embeded_ad");
        this.CJ.Qhi(this);
    }

    public cJ(Context context, tP tPVar, int i, AdSlot adSlot, Qhi qhi, hpZ hpz) {
        super(context, tPVar, i, false);
        this.WAv = false;
        this.Gm = true;
        this.CJ = qhi;
        this.Qhi = hpz;
        this.fl = i;
        this.zc = adSlot;
        this.hm = new com.bytedance.sdk.openadsdk.multipro.cJ.Qhi();
        Qhi(this.Tgh);
        Qhi("embeded_ad");
        qhi.Qhi(this);
    }

    public View fl() {
        NativeVideoTsView nativeVideoTsView;
        if (this.cJ != null && this.ac != null) {
            if (tP.fl(this.cJ)) {
                try {
                    nativeVideoTsView = new NativeVideoTsView(this.ac, this.cJ, this.Qhi.Qhi());
                    if (this.cJ != null && this.cJ.IC()) {
                        com.bytedance.sdk.openadsdk.core.ROR.ROR Qhi = nativeVideoTsView.Qhi((List<Pair<View, FriendlyObstructionPurpose>>) null);
                        if (this.CJ != null) {
                            this.CJ.Qhi(Qhi);
                        }
                    }
                    this.Qhi.Qhi(nativeVideoTsView.getNativeVideoController());
                    if (this.CJ != null) {
                        this.CJ.Qhi(nativeVideoTsView);
                    }
                    nativeVideoTsView.setVideoAdClickListenerTTNativeAd(this);
                    nativeVideoTsView.setAdCreativeClickListener(new NativeVideoTsView.Qhi() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.cJ.1
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.Qhi
                        public void Qhi(View view, int i) {
                            if (cJ.this.Qhi != null) {
                                cJ.this.Qhi.Qhi(view, i);
                            }
                        }
                    });
                    nativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.cJ() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.cJ.2
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.cJ
                        public void Qhi(boolean z, long j, long j2, long j3, boolean z2) {
                            cJ.this.hm.Qhi = z;
                            cJ.this.hm.fl = j;
                            cJ.this.hm.Tgh = j2;
                            cJ.this.hm.ROR = j3;
                            cJ.this.hm.CJ = z2;
                        }
                    });
                    nativeVideoTsView.setVideoAdLoadListener(this);
                    nativeVideoTsView.setVideoAdInteractionListener(this);
                    if (5 == this.fl) {
                        nativeVideoTsView.setIsAutoPlay(this.WAv ? this.zc.isAutoPlay() : this.Gm);
                    } else {
                        nativeVideoTsView.setIsAutoPlay(this.Gm);
                    }
                    nativeVideoTsView.setIsQuiet(HzH.CJ().ac(String.valueOf(this.Tgh)));
                } catch (Exception e2) {
                    ApmHelper.reportCustomError("", "getAdView null", e2);
                }
                if (!tP.fl(this.cJ) && nativeVideoTsView != null && nativeVideoTsView.Qhi(0L, true, false)) {
                    return nativeVideoTsView;
                }
                ApmHelper.reportCustomError(this.cJ.gga() + "," + nativeVideoTsView, "getAdView null", new RuntimeException());
            }
            nativeVideoTsView = null;
            if (!tP.fl(this.cJ)) {
            }
            ApmHelper.reportCustomError(this.cJ.gga() + "," + nativeVideoTsView, "getAdView null", new RuntimeException());
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0050, code lost:
        if (com.bytedance.sdk.openadsdk.utils.js.Tgh(r0) != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void Qhi(int r5) {
        /*
            r4 = this;
            com.bytedance.sdk.openadsdk.core.settings.ROR r0 = com.bytedance.sdk.openadsdk.core.HzH.CJ()
            int r5 = r0.cJ(r5)
            android.content.Context r0 = com.bytedance.sdk.openadsdk.core.HzH.Qhi()
            int r0 = com.bytedance.sdk.component.utils.hpZ.ac(r0)
            r1 = 3
            r2 = 0
            if (r1 != r5) goto L19
            r4.WAv = r2
            r4.Gm = r2
            goto L54
        L19:
            r1 = 1
            if (r1 != r5) goto L25
            boolean r3 = com.bytedance.sdk.openadsdk.utils.js.CJ(r0)
            if (r3 == 0) goto L25
            r4.WAv = r2
            goto L52
        L25:
            r3 = 2
            if (r3 != r5) goto L3d
            boolean r5 = com.bytedance.sdk.openadsdk.utils.js.fl(r0)
            if (r5 != 0) goto L3a
            boolean r5 = com.bytedance.sdk.openadsdk.utils.js.CJ(r0)
            if (r5 != 0) goto L3a
            boolean r5 = com.bytedance.sdk.openadsdk.utils.js.Tgh(r0)
            if (r5 == 0) goto L54
        L3a:
            r4.WAv = r2
            goto L52
        L3d:
            r2 = 4
            if (r2 != r5) goto L43
            r4.WAv = r1
            goto L54
        L43:
            r2 = 5
            if (r2 != r5) goto L54
            boolean r5 = com.bytedance.sdk.openadsdk.utils.js.CJ(r0)
            if (r5 != 0) goto L52
            boolean r5 = com.bytedance.sdk.openadsdk.utils.js.Tgh(r0)
            if (r5 == 0) goto L54
        L52:
            r4.Gm = r1
        L54:
            com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi r5 = r4.CJ
            if (r5 == 0) goto L5f
            com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi r5 = r4.CJ
            boolean r0 = r4.WAv
            r5.Qhi(r0)
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.apiImpl.feed.cJ.Qhi(int):void");
    }

    public void Qhi(ac acVar) {
        this.Sf = acVar;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.InterfaceC0165fl
    public void Qhi(int i, int i2) {
        ac acVar = this.Sf;
        if (acVar != null) {
            acVar.Qhi(i, i2);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void e_() {
        ac acVar = this.Sf;
        if (acVar != null) {
            acVar.Qhi(this);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void h_() {
        ac acVar = this.Sf;
        if (acVar != null) {
            acVar.cJ(this);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void Qhi(long j, long j2) {
        this.ABk = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl.ac
    public void j_() {
        ac acVar = this.Sf;
        if (acVar != null) {
            acVar.ac(this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.multipro.cJ.Qhi.InterfaceC0239Qhi
    public com.bytedance.sdk.openadsdk.multipro.cJ.Qhi Tgh() {
        return this.hm;
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.hm
    protected void Qhi(String str) {
        super.Qhi(str);
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.hm, com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void showPrivacyActivity() {
        if (this.CJ != null) {
            this.CJ.zc();
        }
    }
}
