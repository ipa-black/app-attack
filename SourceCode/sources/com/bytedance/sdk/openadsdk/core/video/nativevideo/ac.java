package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bykv.vk.openvk.component.video.api.Qhi;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.bxS;
import com.bytedance.sdk.component.utils.hpZ;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.ROR.ROR;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.kYc;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.layout.TTVideoDetailLayout;
import com.bytedance.sdk.openadsdk.layout.TTVideoPlayLayoutForLiveLayout;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.google.android.exoplayer2.source.rtsp.RtspMediaSource;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.List;
/* compiled from: NativeVideoController.java */
/* loaded from: classes2.dex */
public class ac extends com.bytedance.sdk.openadsdk.core.video.Qhi.Qhi {
    private int Dq;
    private WeakReference<fl.InterfaceC0165fl> FQ;
    private boolean Hf;
    private final boolean Jma;
    private cJ MND;
    private WeakReference<Qhi> PAe;
    private int Qe;
    private final Runnable YB;
    private final bxS.Qhi cjC;
    private final Qhi.InterfaceC0166Qhi dIT;
    private final boolean es;
    private int ip;
    private Sf jPH;
    private final String js;
    private long lB;
    private long lG;
    private int xyz;
    private boolean yN;
    private final boolean zn;

    /* compiled from: NativeVideoController.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(int i);

        void Tgh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ac(int i, int i2) {
        boolean z = i == -1010 || i == -1007 || i == -1004 || i == -110 || i == 100 || i == 200;
        if (i2 == 1 || i2 == 700 || i2 == 800) {
            return true;
        }
        return z;
    }

    public void ROR(boolean z) {
        this.yN = z;
    }

    public void Qhi(final NativeVideoTsView.Qhi qhi) {
        if (!this.pA || this.ROR == null) {
            return;
        }
        this.ROR.Qhi(new NativeVideoTsView.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.2
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.Qhi
            public void Qhi(View view, int i) {
                NativeVideoTsView.Qhi qhi2 = qhi;
                if (qhi2 != null) {
                    qhi2.Qhi(view, i);
                }
            }
        });
    }

    public void Qhi(PAGNativeAd pAGNativeAd) {
        if (!this.pA || this.ROR == null) {
            return;
        }
        this.ROR.Qhi(pAGNativeAd);
    }

    public void Qhi(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return;
        }
        this.ip = i;
        this.xyz = i2;
    }

    public void Qhi(cJ cJVar) {
        this.MND = cJVar;
    }

    private void Qhi(Context context) {
        ViewGroup tTVideoDetailLayout;
        if (this.pA) {
            tTVideoDetailLayout = new TTVideoPlayLayoutForLiveLayout(context);
        } else {
            tTVideoDetailLayout = new TTVideoDetailLayout(context);
        }
        ViewGroup viewGroup = tTVideoDetailLayout;
        if (this.pA) {
            this.ROR = new Tgh(context, viewGroup, true, 17, this.Sf, this, bxS());
        } else {
            this.ROR = new fl(context, viewGroup, true, 17, this.Sf, this, false);
        }
        this.ROR.Qhi(this);
    }

    public ac(Context context, ViewGroup viewGroup, tP tPVar, String str, boolean z, boolean z2, boolean z3, Sf sf) {
        super(context, tPVar, viewGroup);
        this.lB = 0L;
        this.lG = 0L;
        this.yN = true;
        this.ip = 0;
        this.xyz = 0;
        this.dIT = new Qhi.InterfaceC0166Qhi() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1
            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void ac(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void cJ(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i) {
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
                ac.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(ac.this.Sf, 5);
                            if (ac.this.aP != null) {
                                ac.this.aP.Qhi(9);
                            }
                        } catch (Exception unused) {
                        }
                        ac.this.js();
                    }
                });
                if (ac.this.Sf.cJP() == null || ac.this.Sf.cJP().Qhi() == null) {
                    return;
                }
                ac.this.Sf.cJP().Qhi().CJ(ac.this.hm);
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, long j) {
                ac.this.Dww = false;
                ac.this.ac.removeCallbacks(ac.this.YB);
                ac.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ac.this.ROR != null) {
                            ac.this.ROR.cJ();
                        }
                        if (!ac.this.pA || ac.this.PAe == null || ac.this.PAe.get() == null) {
                            return;
                        }
                        ((Qhi) ac.this.PAe.get()).Tgh();
                    }
                });
                ac.this.lB();
                com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(ac.this.Sf, 0);
                if (ac.this.aP != null) {
                    ac.this.aP.ac();
                }
                ac acVar = ac.this;
                acVar.Qhi(acVar.jPH);
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void cJ(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
                ac.this.ac.removeCallbacks(ac.this.YB);
                ac.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ac.this.FQ != null && ac.this.FQ.get() != null) {
                            ac.this.FQ.get();
                        }
                        if (ac.this.ROR != null) {
                            ac.this.ROR.cJ();
                        }
                    }
                });
                if (ac.this.Jma) {
                    return;
                }
                ac acVar = ac.this;
                acVar.Qhi(acVar.jPH);
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, final com.bykv.vk.openvk.component.video.api.ac.Qhi qhi2) {
                ABk.Qhi(ac.this.Qhi, "onError: " + qhi2.Qhi() + ", " + qhi2.cJ() + ", " + qhi2.ac());
                ac.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        int Qhi2 = qhi2.Qhi();
                        int cJ = qhi2.cJ();
                        if (!ac.this.pM() || cJ == -1004) {
                            if (ac.this.ac(Qhi2, cJ)) {
                                ABk.Qhi(ac.this.Qhi, "Play video error，show result page、、、、、、、");
                                ac.this.ROR.Qhi2(ac.this.Sf, (WeakReference<Context>) null, false);
                                ac.this.ac(true);
                                ac.this.CJ();
                            }
                            if (ac.this.ROR != null) {
                                ac.this.ROR.cJ();
                            }
                            if (ac.this.Eh != null) {
                                ac.this.Eh.cJ(ac.this.lG, com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(ac.this.hm, ac.this.NFd));
                            }
                            if (ac.this.FQ == null || ac.this.FQ.get() == null || ac.this.pM()) {
                                return;
                            }
                            ((fl.InterfaceC0165fl) ac.this.FQ.get()).Qhi(Qhi2, cJ);
                        }
                    }
                });
                ac.this.Qhi(qhi2);
                com.bytedance.sdk.openadsdk.core.ROR.Qhi cJP = ac.this.Sf.cJP();
                if (cJP != null && cJP.Qhi() != null) {
                    cJP.Qhi().Qhi(com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi.GENERAL_LINEAR_AD_ERROR);
                }
                com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(ac.this.Sf, 6);
                if (ac.this.aP != null) {
                    ac.this.aP.Qhi(14);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, boolean z4) {
                ac.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ac.this.ROR != null) {
                            ac.this.ROR.cJ();
                        }
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i, int i2) {
                com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        ac.this.es();
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i, int i2, int i3) {
                ac.this.Dww = true;
                ac.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ac.this.ROR != null) {
                            ac.this.ROR.HzH();
                            ac.this.ac.postDelayed(ac.this.YB, RtspMediaSource.DEFAULT_TIMEOUT_MS);
                        }
                    }
                });
                com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(ac.this.Sf, 2);
                if (ac.this.aP != null) {
                    ac.this.aP.Qhi(4);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i) {
                ac.this.Dww = false;
                ac.this.ac.removeCallbacks(ac.this.YB);
                ac.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1.8
                    @Override // java.lang.Runnable
                    public void run() {
                        ac.this.ROR.cJ();
                    }
                });
                com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(ac.this.Sf, 0);
                if (ac.this.aP != null) {
                    ac.this.aP.Qhi(5);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, final long j, final long j2) {
                if (Math.abs(j - ac.this.hm) < 50) {
                    return;
                }
                ac acVar = ac.this;
                acVar.Qhi(acVar.jPH);
                ac.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.1.9
                    @Override // java.lang.Runnable
                    public void run() {
                        ac.this.Qhi(j, j2);
                        ac.this.cJ(j, j2);
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void CJ(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
                com.bytedance.sdk.openadsdk.core.ROR.Qhi cJP = ac.this.Sf.cJP();
                if (cJP != null && cJP.Qhi() != null) {
                    cJP.Qhi().cJ(ac.this.hm);
                }
                com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(ac.this.Sf, 3);
                if (ac.this.aP != null) {
                    ac.this.aP.Qhi(0);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void fl(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
                com.bytedance.sdk.openadsdk.core.ROR.Qhi cJP = ac.this.Sf.cJP();
                if (cJP != null && cJP.Qhi() != null) {
                    cJP.Qhi().ac(ac.this.hm);
                }
                if (ac.this.aP != null) {
                    ac.this.aP.Qhi(1);
                }
            }
        };
        this.Qe = 0;
        this.YB = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.4
            @Override // java.lang.Runnable
            public void run() {
                if (ac.this.ROR != null) {
                    ac.this.ROR.Qhi2(ac.this.Sf, (WeakReference<Context>) null, false);
                    ac.this.ROR.cJ();
                    ac.this.ac(true);
                    ABk.Qhi(ac.this.Qhi, "Show result page after error.......showAdCard");
                }
            }
        };
        this.cjC = new bxS.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.6
            @Override // com.bytedance.sdk.component.utils.bxS.Qhi
            public void Qhi(Context context2, Intent intent, boolean z4, final int i) {
                lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ac.this.fl(i);
                    }
                });
            }
        };
        this.Hf = false;
        this.Dq = hpZ.ac(context);
        Qhi(z);
        this.js = str;
        try {
            this.ip = viewGroup.getWidth();
            this.xyz = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        Qhi(context);
        this.Jma = true;
        this.zn = z2;
        this.es = z3;
        if (sf != null) {
            this.jPH = sf;
        }
    }

    public ROR Qhi(View view, List<Pair<View, FriendlyObstructionPurpose>> list) {
        if (this.Sf.IC()) {
            if (this.aP == null) {
                this.aP = ROR.Qhi();
            }
            this.aP.Qhi(view, this.Sf.cJP().iMK());
            if (list != null && list.size() > 0) {
                for (Pair<View, FriendlyObstructionPurpose> pair : list) {
                    if (pair != null) {
                        this.aP.Qhi((View) pair.first, pair.second == null ? FriendlyObstructionPurpose.OTHER : (FriendlyObstructionPurpose) pair.second);
                    }
                }
            }
            return this.aP;
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.Qhi.Qhi, com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(fl.InterfaceC0165fl interfaceC0165fl) {
        this.FQ = new WeakReference<>(interfaceC0165fl);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        if (this.Tgh != null) {
            ApmHelper.reportCustomError("", "twice playVideoUrl", new IllegalStateException());
            return true;
        } else if (TextUtils.isEmpty(acVar.ABk())) {
            ABk.Qhi(this.Qhi, "[video] play video stop , because no video info");
            return false;
        } else {
            ac(false);
            acVar.ABk();
            cJ(acVar);
            NFd();
            if (this.aP != null) {
                this.aP.Qhi(false, 0.0f);
            }
            if (!kYc.cJ(this.js) || this.hm <= 0) {
                this.hm = acVar.ROR();
            }
            if (acVar.ROR() <= 0) {
                this.qMt = false;
                this.MQ.set(false);
            } else {
                this.hm = acVar.ROR();
                this.WAv = Math.max(this.WAv, this.hm);
            }
            if (this.ROR != null) {
                this.ROR.Qhi();
                if (this.Qe == 0) {
                    this.ROR.ROR();
                }
                this.ROR.ac(acVar.fl(), acVar.Tgh());
                this.ROR.ac(this.CQU);
                this.ROR.Qhi(acVar.fl(), acVar.Tgh());
            }
            if (this.Tgh == null) {
                this.Tgh = new com.bytedance.sdk.openadsdk.core.video.ac.ac();
                this.Tgh.Qhi(this.dIT);
            }
            tP();
            this.lG = 0L;
            try {
                ac(acVar);
                return true;
            } catch (Exception e2) {
                ABk.Qhi(this.Qhi, "[video] invoke NativeVideoController#playVideo cause exception :".concat(String.valueOf(e2)));
                return false;
            }
        }
    }

    private void ac(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        acVar.ac(0);
        this.Tgh.Qhi(acVar);
        this.lB = System.currentTimeMillis();
        this.ROR.ac(8);
        this.ROR.ac(0);
        Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.3
            @Override // java.lang.Runnable
            public void run() {
                if (ac.this.Tgh == null) {
                    return;
                }
                ac.this.lB = System.currentTimeMillis();
                ac.this.ROR.CJ(0);
                ac.this.Tgh.Qhi(true, ac.this.hm, ac.this.hpZ);
            }
        });
        if (this.pA) {
            kYc();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void js() {
        this.Qe++;
        if (this.ROR == null) {
            return;
        }
        this.ROR.cJ();
        if (this.Eh != null) {
            this.Eh.Qhi(this.lG, com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(this.hm, this.NFd));
        }
        this.lG = System.currentTimeMillis() - this.lB;
        if (this.yN) {
            this.ROR.Qhi2(this.Sf, (WeakReference<Context>) null, true);
        }
        if (!this.qMt) {
            this.qMt = true;
            cJ(this.NFd, this.NFd);
            long j = this.NFd;
            this.hm = j;
            this.WAv = j;
            cJ(this.jPH);
        }
        if (!this.pA && this.tP) {
            fl(this.ROR, null);
        }
        this.iMK = true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void cJ() {
        if (this.ROR != null) {
            this.ROR.Qhi();
        }
        if (this.ROR != null) {
            this.ROR.kYc();
        }
        zn();
    }

    public void Sf(boolean z) {
        if (this.ROR != null) {
            this.ROR.Qhi();
        }
        if (this.ROR != null && z) {
            this.ROR.kYc();
        }
        zn();
    }

    private void zn() {
        new Object[]{"resumeVideo:  mIsSurfaceValid = ", Boolean.valueOf(this.ABk)};
        if (this.Tgh != null) {
            if (this.Tgh.ROR()) {
                if (this.ABk) {
                    qMt();
                } else {
                    cJ(this.sDy);
                }
                new Object[]{"resumeVideo: isPaused = true , mIsSurfaceValid = ", Boolean.valueOf(this.ABk)};
            } else {
                this.Tgh.Qhi(false, this.hm, this.hpZ);
            }
        }
        if (this.MQ.get()) {
            Eh();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void ac() {
        Qhi(true, 3);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(boolean z, int i) {
        if (!this.qMt && this.MQ.get()) {
            if (z) {
                hpZ.Qhi qhi = new hpZ.Qhi();
                qhi.Qhi(fl());
                qhi.ac(Sf());
                qhi.cJ(Tgh());
                qhi.ac(i);
                qhi.CJ(ROR());
                com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(this.ROR, qhi, this.jPH);
                this.qMt = false;
            } else {
                aP();
            }
        }
        CJ();
        if (this.aP != null) {
            this.aP.CJ();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void CJ() {
        if (this.Tgh != null) {
            this.Tgh.zc();
            this.Tgh = null;
        }
        if (this.yN) {
            if (!"embeded_ad".equals(this.js)) {
                this.ROR.Qhi2(this.Sf, (WeakReference<Context>) null, true);
            } else {
                this.ROR.MQ();
            }
            this.ac.removeCallbacksAndMessages(null);
            this.zc.clear();
            if (this.pA) {
                lG();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
        if (r1 > 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0061, code lost:
        r2 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void es() {
        /*
            r8 = this;
            com.bykv.vk.openvk.component.video.api.renderview.cJ r0 = r8.yN()     // Catch: java.lang.Throwable -> L8c
            if (r0 == 0) goto L6d
            com.bytedance.sdk.openadsdk.core.video.ac.ac r0 = r8.Tgh     // Catch: java.lang.Throwable -> L8c
            if (r0 == 0) goto L6d
            android.view.ViewGroup r0 = r8.CQU     // Catch: java.lang.Throwable -> L8c
            if (r0 != 0) goto L10
            goto L6d
        L10:
            com.bytedance.sdk.openadsdk.core.video.ac.ac r0 = r8.Tgh     // Catch: java.lang.Throwable -> L8c
            int r0 = r0.CJ()     // Catch: java.lang.Throwable -> L8c
            com.bytedance.sdk.openadsdk.core.video.ac.ac r1 = r8.Tgh     // Catch: java.lang.Throwable -> L8c
            int r1 = r1.fl()     // Catch: java.lang.Throwable -> L8c
            android.view.ViewGroup r2 = r8.CQU     // Catch: java.lang.Throwable -> L8c
            int r2 = r2.getWidth()     // Catch: java.lang.Throwable -> L8c
            android.view.ViewGroup r3 = r8.CQU     // Catch: java.lang.Throwable -> L8c
            int r3 = r3.getHeight()     // Catch: java.lang.Throwable -> L8c
            if (r2 <= 0) goto L6c
            if (r3 <= 0) goto L6c
            if (r1 <= 0) goto L6c
            if (r0 > 0) goto L31
            goto L6c
        L31:
            if (r0 != r1) goto L3a
            if (r2 <= r3) goto L37
            r0 = r3
            goto L38
        L37:
            r0 = r2
        L38:
            r1 = r0
            goto L56
        L3a:
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r6 = 1065353216(0x3f800000, float:1.0)
            if (r0 <= r1) goto L4b
            float r0 = (float) r0     // Catch: java.lang.Throwable -> L8c
            float r0 = r0 * r6
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L8c
            float r0 = r0 / r1
            double r6 = (double) r2     // Catch: java.lang.Throwable -> L8c
            double r6 = r6 * r4
            double r0 = (double) r0     // Catch: java.lang.Throwable -> L8c
            double r6 = r6 / r0
            int r0 = (int) r6     // Catch: java.lang.Throwable -> L8c
            r1 = r2
            goto L56
        L4b:
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L8c
            float r1 = r1 * r6
            float r0 = (float) r0     // Catch: java.lang.Throwable -> L8c
            float r1 = r1 / r0
            double r6 = (double) r3     // Catch: java.lang.Throwable -> L8c
            double r6 = r6 * r4
            double r0 = (double) r1     // Catch: java.lang.Throwable -> L8c
            double r6 = r6 / r0
            int r0 = (int) r6     // Catch: java.lang.Throwable -> L8c
            r1 = r0
            r0 = r3
        L56:
            if (r0 > r3) goto L5c
            if (r0 > 0) goto L5b
            goto L5c
        L5b:
            r3 = r0
        L5c:
            if (r1 > r2) goto L62
            if (r1 > 0) goto L61
            goto L62
        L61:
            r2 = r1
        L62:
            com.bytedance.sdk.component.utils.CQU r0 = r8.ac     // Catch: java.lang.Throwable -> L8c
            com.bytedance.sdk.openadsdk.core.video.nativevideo.ac$5 r1 = new com.bytedance.sdk.openadsdk.core.video.nativevideo.ac$5     // Catch: java.lang.Throwable -> L8c
            r1.<init>()     // Catch: java.lang.Throwable -> L8c
            r0.post(r1)     // Catch: java.lang.Throwable -> L8c
        L6c:
            return
        L6d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L8c
            java.lang.String r1 = "[step-1] >>>>> mContextRef="
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L8c
            android.content.Context r1 = r8.Gm     // Catch: java.lang.Throwable -> L8c
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L8c
            java.lang.String r1 = ",getIRenderView() ="
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Throwable -> L8c
            com.bykv.vk.openvk.component.video.api.renderview.cJ r1 = r8.yN()     // Catch: java.lang.Throwable -> L8c
            r0.append(r1)     // Catch: java.lang.Throwable -> L8c
            com.bytedance.sdk.openadsdk.core.video.ac.ac r0 = r8.Tgh     // Catch: java.lang.Throwable -> L8c
            com.bytedance.sdk.openadsdk.core.video.ac.ac r0 = r8.Tgh     // Catch: java.lang.Throwable -> L8c
            return
        L8c:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "[step-11] >>>>> changeVideoSize error !!!!! ："
            r1.<init>(r2)
            r1.append(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.nativevideo.ac.es():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bykv.vk.openvk.component.video.api.renderview.cJ yN() {
        if (this.Gm.getResources().getConfiguration().orientation != 1 || this.ROR == null) {
            return null;
        }
        return this.ROR.ABk();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.cJ
    public void Qhi(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, View view) {
        if (this.Tgh == null) {
            return;
        }
        if (this.Tgh.Tgh()) {
            Qhi();
            this.ROR.cJ(true, false);
            this.ROR.Tgh();
        } else if (!this.Tgh.ROR()) {
            if (this.ROR != null) {
                this.ROR.ac(this.CQU);
            }
            CJ(this.hm);
            if (this.ROR != null) {
                this.ROR.cJ(false, false);
            }
        } else {
            Sf(false);
            if (this.ROR != null) {
                this.ROR.cJ(false, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(long j, long j2) {
        this.Sf.ac(j);
        this.hm = j;
        this.NFd = j2;
        this.ROR.Qhi(j, j2);
        this.ROR.Qhi(com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(j, j2));
        try {
            if (this.Eh != null) {
                this.Eh.Qhi(j, j2);
            }
        } catch (Throwable th) {
            ABk.Qhi(this.Qhi, "onProgressUpdate error: ", th);
        }
        com.bytedance.sdk.openadsdk.core.ROR.Qhi cJP = this.Sf.cJP();
        if (cJP == null || cJP.Qhi() == null) {
            return;
        }
        cJP.Qhi().Qhi(j, j2, this.aP);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.Qhi.Qhi
    public void Qhi(com.bykv.vk.openvk.component.video.api.CJ.ac acVar, View view, boolean z) {
        Tgh(!this.tP);
        if (this.Gm instanceof Activity) {
            if (this.ROR != null) {
                this.ROR.cJ(this.CQU);
                this.ROR.ac(false);
            }
            Qhi(1);
            fl.cJ cJVar = this.pM != null ? this.pM.get() : null;
            if (cJVar != null) {
                cJVar.Qhi(this.tP);
            }
        }
    }

    private boolean cJ(int i, int i2) {
        if (i2 == 0) {
            Qhi();
            this.HzH = true;
            if (this.ROR != null) {
                this.ROR.Qhi2(this.Sf, (WeakReference<Context>) null, false);
            }
        }
        if (i2 != 4 && i2 != 0) {
            if (this.ROR != null) {
                this.ROR.Qhi();
            }
            Qhi();
            this.HzH = true;
            this.kYc = false;
            if (this.ROR != null) {
                return this.ROR.Qhi(i, this.Sf.FQ(), this.es);
            }
        } else if (i2 == 4) {
            this.HzH = false;
            if (this.ROR != null) {
                this.ROR.pA();
            }
        }
        return true;
    }

    private void CJ(int i) {
        if (this.Dq == i) {
            return;
        }
        this.Dq = i;
        if (i != 4 && i != 0) {
            this.kYc = false;
        }
        if (!this.kYc && !pA() && this.zn) {
            cJ(2, i);
        }
        WeakReference<Qhi> weakReference = this.PAe;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.PAe.get().Qhi(this.Dq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fl(int i) {
        CJ(i);
        if (i == 4) {
            this.HzH = false;
        }
    }

    public void ac(int i) {
        CJ(i);
        if (i == 4) {
            this.HzH = false;
            cJ();
        }
    }

    public void kYc() {
        if (this.Hf || !this.EBS) {
            return;
        }
        Context applicationContext = HzH.Qhi().getApplicationContext();
        this.Hf = true;
        bxS.Qhi(this.cjC, applicationContext);
    }

    public void lG() {
        if (this.Hf && this.EBS) {
            this.Hf = false;
            bxS.Qhi(this.cjC);
        }
    }

    public void Qhi(Qhi qhi) {
        this.PAe = new WeakReference<>(qhi);
    }

    public void Jma() {
        if (this.aP != null) {
            this.aP.Qhi(13);
        }
    }
}
