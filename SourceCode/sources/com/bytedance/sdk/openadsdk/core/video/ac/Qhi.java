package com.bytedance.sdk.openadsdk.core.video.ac;

import android.content.Context;
import android.text.TextUtils;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.core.ROR.ROR;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.model.HzH;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.ac.ac;
import com.bytedance.sdk.openadsdk.layout.TTVideoPlayLayoutForLiveLayout;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
/* compiled from: BaseVideoController.java */
/* loaded from: classes2.dex */
public class Qhi extends com.bytedance.sdk.openadsdk.core.video.Qhi.Qhi {
    private final int FQ;
    final ac.cJ Jma;
    private final Runnable PAe;
    private long es;
    private InterfaceC0234Qhi ip;
    private final Sf js;
    protected long lB;
    protected boolean lG;
    private boolean yN;
    private long zn;

    /* compiled from: BaseVideoController.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.video.ac.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0234Qhi {
        void Qhi(int i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.Qhi.Qhi
    public boolean Dww() {
        return true;
    }

    protected void kYc() {
    }

    public void lG() {
        this.Jma.Qhi((com.bykv.vk.openvk.component.video.api.Qhi) null, 0, 0);
    }

    protected void ROR(boolean z) {
        try {
            new StringBuilder("landingPageChangeVideoSize start.......").append(this.Sf.lB());
            if (!jPH() || z) {
                float CJ = this.Tgh.CJ();
                float fl = this.Tgh.fl();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) CJ, (int) fl);
                layoutParams.addRule(13);
                if (js() != null) {
                    if (js() instanceof TextureView) {
                        ((TextureView) js()).setLayoutParams(layoutParams);
                    } else if (js() instanceof SurfaceView) {
                        ((SurfaceView) js()).setLayoutParams(layoutParams);
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.CQU.getLayoutParams();
                    if (this.CQU.getHeight() > 0) {
                        float min = Math.min(this.CQU.getWidth() / CJ, this.CQU.getHeight() / fl);
                        if (layoutParams2 != null) {
                            layoutParams.width = (int) (CJ * min);
                            layoutParams.height = (int) (fl * min);
                            if (js() instanceof TextureView) {
                                ((TextureView) js()).setLayoutParams(layoutParams);
                            } else if (js() instanceof SurfaceView) {
                                ((SurfaceView) js()).setLayoutParams(layoutParams);
                            }
                            if (this.bxS.fl == 4) {
                                layoutParams2.width = layoutParams.width;
                                layoutParams2.height = layoutParams.height;
                                this.CQU.setLayoutParams(layoutParams2);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            ABk.Qhi(this.Qhi, "changeSize error", th);
        }
    }

    public Qhi(Context context, ViewGroup viewGroup, tP tPVar, Sf sf) {
        super(context, tPVar, viewGroup);
        this.zn = 0L;
        this.es = 0L;
        this.yN = false;
        this.lB = 0L;
        this.lG = false;
        this.Jma = new ac.cJ() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.1
            private boolean cJ = true;

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void cJ(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i) {
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
                String unused = Qhi.this.Qhi;
                Qhi.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.aP != null) {
                            try {
                                Qhi.this.aP.Qhi(9);
                            } catch (Exception unused2) {
                            }
                        }
                        Qhi.this.PAe();
                    }
                });
                com.bytedance.sdk.openadsdk.core.ROR.Qhi cJP = Qhi.this.Sf.cJP();
                if (cJP != null && cJP.Qhi() != null) {
                    long fl = Qhi.this.fl();
                    cJP.Qhi().CJ(fl);
                    cJP.Qhi().fl(fl);
                }
                Tgh.Qhi(Qhi.this.Sf, 5);
                if (Qhi.this.ip != null) {
                    Qhi.this.ip.Qhi(3);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, long j) {
                String unused = Qhi.this.Qhi;
                Qhi.this.Dww = false;
                Qhi.this.ac.removeCallbacks(Qhi.this.PAe);
                Qhi.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.ROR != null) {
                            Qhi.this.ROR.cJ();
                        }
                    }
                });
                if (!Qhi.this.MQ.get()) {
                    Qhi.this.lB = j;
                    Qhi qhi2 = Qhi.this;
                    qhi2.Qhi(qhi2.js);
                    Qhi.this.lB();
                }
                if (Qhi.this.aP != null) {
                    Qhi.this.aP.ac();
                }
                Tgh.Qhi(Qhi.this.Sf, 0);
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void cJ(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
                String unused = Qhi.this.Qhi;
                Qhi.this.ac.removeCallbacks(Qhi.this.PAe);
                Qhi.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.ROR != null) {
                            Qhi.this.ROR.cJ();
                        }
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, com.bykv.vk.openvk.component.video.api.ac.Qhi qhi2) {
                ABk.Qhi(Qhi.this.Qhi, "onError: " + qhi2.Qhi() + "," + qhi2.cJ() + "," + qhi2.ac());
                Qhi.this.ac.removeCallbacks(Qhi.this.PAe);
                Qhi.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.ROR != null) {
                            Qhi.this.ROR.cJ();
                        }
                        if (Qhi.this.Eh != null) {
                            Qhi.this.Eh.cJ(Qhi.this.es, com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(Qhi.this.hm, Qhi.this.NFd));
                        }
                    }
                });
                Qhi.this.Qhi(qhi2);
                Tgh.Qhi(Qhi.this.Sf, 6);
                if (Qhi.this.aP != null) {
                    Qhi.this.aP.Qhi(14);
                }
                if (Qhi.this.ip != null) {
                    Qhi.this.ip.Qhi(4);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, boolean z) {
                String unused = Qhi.this.Qhi;
                Qhi.this.ac.removeCallbacks(Qhi.this.PAe);
                Qhi.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.ROR != null) {
                            Qhi.this.ROR.cJ();
                        }
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void ac(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
                String unused = Qhi.this.Qhi;
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i, int i2) {
                String unused = Qhi.this.Qhi;
                Qhi.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.ip()) {
                            if (!HzH.cJ(Qhi.this.Sf) && Qhi.this.bxS.fl != 4) {
                                if (Qhi.this.Sf.aP() != 3) {
                                    if (Qhi.this.Sf.aP() == 0) {
                                        Qhi.this.dIT();
                                        return;
                                    } else {
                                        Qhi.this.MND();
                                        return;
                                    }
                                }
                                Qhi.this.ROR(true);
                                return;
                            }
                            Qhi.this.ROR(true);
                            return;
                        }
                        Qhi.this.xyz();
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i, int i2, int i3) {
                String unused = Qhi.this.Qhi;
                Qhi.this.Dww = true;
                Qhi.this.FQ();
                Qhi.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.ROR != null) {
                            Qhi.this.ROR.HzH();
                        }
                    }
                });
                Tgh.Qhi(Qhi.this.Sf, 3);
                if (Qhi.this.aP != null) {
                    Qhi.this.aP.Qhi(4);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, int i) {
                String unused = Qhi.this.Qhi;
                Qhi.this.Dww = false;
                Qhi.this.ac.removeCallbacks(Qhi.this.PAe);
                Qhi.this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.1.8
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Qhi.this.ROR != null) {
                            Qhi.this.ROR.cJ();
                        }
                    }
                });
                Tgh.Qhi(Qhi.this.Sf, 0);
                if (Qhi.this.aP != null) {
                    Qhi.this.aP.Qhi(5);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.Qhi qhi, long j, long j2) {
                if (Math.abs(j - Qhi.this.hm) < 50) {
                    return;
                }
                Qhi qhi2 = Qhi.this;
                qhi2.Qhi(qhi2.js);
                Qhi.this.Qhi(j, j2);
                Qhi.this.cJ(j, j2);
                com.bytedance.sdk.openadsdk.core.ROR.Qhi cJP = Qhi.this.Sf.cJP();
                if (cJP != null && cJP.Qhi() != null) {
                    cJP.Qhi().Qhi(j, j2, Qhi.this.aP);
                }
                if (!this.cJ || j2 - j >= 500) {
                    return;
                }
                this.cJ = false;
                Qhi(qhi);
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void CJ(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
                com.bytedance.sdk.openadsdk.core.ROR.Qhi cJP = Qhi.this.Sf.cJP();
                if (cJP != null && cJP.Qhi() != null) {
                    cJP.Qhi().cJ(Qhi.this.hm);
                }
                Tgh.Qhi(Qhi.this.Sf, 3);
                if (Qhi.this.aP != null) {
                    Qhi.this.aP.Qhi(0);
                }
                if (Qhi.this.ip != null) {
                    Qhi.this.ip.Qhi(2);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.Qhi.InterfaceC0166Qhi
            public void fl(com.bykv.vk.openvk.component.video.api.Qhi qhi) {
                Tgh.Qhi(Qhi.this.Sf, 0);
                if (Qhi.this.aP != null) {
                    Qhi.this.aP.Qhi(1);
                }
                if (Qhi.this.ip != null) {
                    Qhi.this.ip.Qhi(1);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.video.ac.ac.cJ
            public void Qhi(int i, int i2) {
                Qhi qhi = Qhi.this;
                qhi.cJ(qhi.js);
                Qhi.this.bxS.CJ = Qhi.this.Tgh.MQ();
                Qhi.this.NFd();
                Qhi.this.MQ.set(false);
                Qhi qhi2 = Qhi.this;
                qhi2.Qhi(qhi2.js);
            }
        };
        this.PAe = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.3
            @Override // java.lang.Runnable
            public void run() {
                if (Qhi.this.Eh != null) {
                    Qhi.this.kYc();
                    Qhi.this.Eh.Qhi();
                }
            }
        };
        this.js = sf;
        this.FQ = tPVar.Hy();
        if (tPVar.IC() && tPVar.cJP() != null && this.CQU != null) {
            if (this.aP == null) {
                this.aP = ROR.Qhi();
            }
            this.aP.Qhi(this.CQU, tPVar.cJP().iMK());
        }
        this.ROR = new com.bytedance.sdk.openadsdk.core.video.nativevideo.Tgh(context.getApplicationContext(), new TTVideoPlayLayoutForLiveLayout(context), true, 17, this.Sf, this);
        this.ROR.Qhi(this);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        int tP;
        View view;
        if (this.Tgh != null) {
            ABk.Qhi(this.Qhi, "playVideoUrl: already invoked");
            return false;
        }
        acVar.ABk();
        if (TextUtils.isEmpty(acVar.ABk())) {
            ABk.Qhi(this.Qhi, "No video info");
            return false;
        }
        cJ(acVar);
        acVar.ac(1);
        this.lG = !acVar.ABk().startsWith("http");
        if (this.aP != null) {
            if (this.bxS.fl == 1) {
                tP = com.bytedance.sdk.openadsdk.core.HzH.CJ().WAv(String.valueOf(this.FQ));
            } else {
                tP = com.bytedance.sdk.openadsdk.core.HzH.CJ().tP(String.valueOf(this.FQ));
            }
            if (this.CQU != null && (view = (View) this.CQU.getParent()) != null) {
                try {
                    View findViewById = view.findViewById(iMK.zc);
                    this.aP.Qhi(view.findViewById(iMK.XyJ), FriendlyObstructionPurpose.OTHER);
                    this.aP.Qhi(findViewById, FriendlyObstructionPurpose.OTHER);
                } catch (Throwable unused) {
                }
            }
            this.aP.Qhi(tP > 0, tP / 1000.0f);
        }
        NFd();
        if (acVar.ROR() > 0) {
            this.hm = acVar.ROR();
            this.WAv = Math.max(this.WAv, this.hm);
        }
        if (this.ROR != null) {
            this.ROR.Qhi();
            this.ROR.ROR();
            this.ROR.ac(acVar.fl(), acVar.Tgh());
            this.ROR.ac(this.CQU);
        }
        this.Tgh = new ac();
        this.Tgh.Qhi(this.Jma);
        tP();
        this.es = 0L;
        yN();
        return true;
    }

    private void yN() {
        this.Tgh.ac(sDy());
        this.Tgh.Qhi(this.bxS);
        this.zn = System.currentTimeMillis();
        this.ROR.ac(8);
        this.ROR.ac(0);
        Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.2
            @Override // java.lang.Runnable
            public void run() {
                if (Qhi.this.Tgh == null) {
                    return;
                }
                Qhi.this.zn = System.currentTimeMillis();
                Qhi.this.ROR.CJ(0);
                Qhi.this.Tgh.Qhi(true, Qhi.this.hm, Qhi.this.hpZ);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void FQ() {
        int xyz;
        int i = this.bxS.fl;
        if (i == 2 || i == 1) {
            xyz = com.bytedance.sdk.openadsdk.core.HzH.CJ().xyz() * 1000;
        } else {
            xyz = i == 4 ? com.bytedance.sdk.openadsdk.core.HzH.CJ().hm(String.valueOf(this.FQ)) : 5000;
        }
        this.ac.removeCallbacks(this.PAe);
        this.ac.postDelayed(this.PAe, xyz);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void PAe() {
        if (this.ROR == null) {
            return;
        }
        this.ac.removeCallbacks(this.PAe);
        this.ROR.cJ();
        this.es = System.currentTimeMillis() - this.zn;
        if (!this.yN) {
            this.yN = true;
            cJ(this.NFd, this.NFd);
            long j = this.NFd;
            this.hm = j;
            this.WAv = j;
            cJ(this.js);
        }
        if (this.Eh != null) {
            this.Eh.Qhi(this.es, com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(this.hm, this.NFd));
        }
        this.iMK = true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void cJ() {
        if (this.ROR != null) {
            this.ROR.Qhi();
            this.ROR.pA();
            this.ROR.kYc();
        }
        new Object[]{"resumeVideo:  mIsSurfaceValid = ", Boolean.valueOf(this.ABk)};
        if (this.Tgh != null) {
            if (this.Tgh.ROR()) {
                if (this.ABk) {
                    if (hm.EBS()) {
                        this.Tgh.cJ(3);
                        this.Tgh.Qhi(false, this.Tgh.HzH(), this.hpZ);
                    } else {
                        qMt();
                    }
                } else {
                    cJ(this.sDy);
                }
                new Object[]{"resumeVideo: isPaused = true , mIsSurfaceValid = ", Boolean.valueOf(this.ABk)};
            } else {
                this.Tgh.Qhi(false, this.hm, this.hpZ);
            }
        }
        if (this.yN || !this.MQ.get()) {
            return;
        }
        Eh();
        com.bytedance.sdk.openadsdk.core.ROR.Qhi cJP = this.Sf.cJP();
        if (cJP == null || cJP.Qhi() == null) {
            return;
        }
        cJP.Qhi().ac(fl());
    }

    public void Jma() {
        if (this.yN || !this.MQ.get()) {
            return;
        }
        Eh();
        com.bytedance.sdk.openadsdk.core.ROR.Qhi cJP = this.Sf.cJP();
        if (cJP == null || cJP.Qhi() == null) {
            return;
        }
        cJP.Qhi().ac(fl());
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void ac() {
        if (this.Tgh == null) {
            return;
        }
        this.Tgh.zc();
        this.Tgh = null;
        if (this.ROR != null) {
            this.ROR.hm();
        }
        this.ac.removeCallbacks(this.PAe);
        this.ac.removeCallbacksAndMessages(null);
        if (this.aP != null) {
            this.aP.CJ();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(boolean z, int i) {
        ac();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void CJ() {
        ac();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ip() {
        return this.Sf.Oy() == 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void xyz() {
        try {
            if (js() != null && this.Tgh != null && this.CQU != null) {
                int width = this.CQU.getWidth();
                int height = this.CQU.getHeight();
                float CJ = this.Tgh.CJ();
                float fl = this.Tgh.fl();
                float f2 = width;
                float f3 = height;
                if (CJ / (f2 * 1.0f) <= fl / (1.0f * f3)) {
                    f2 = (f3 / fl) * CJ;
                } else {
                    f3 = (f2 / CJ) * fl;
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) f2, (int) f3);
                layoutParams.addRule(13);
                if (js() instanceof TextureView) {
                    ((TextureView) js()).setLayoutParams(layoutParams);
                } else if (js() instanceof SurfaceView) {
                    ((SurfaceView) js()).setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th) {
            ABk.Qhi(this.Qhi, "changeVideoSizeSupportInteraction error", th);
        }
    }

    private boolean jPH() {
        return js() == null || this.Tgh == null || this.Sf.es() != null || this.Sf.NFd() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void MND() {
        try {
            new StringBuilder("changeVideoSize start.......slot=").append(this.Sf.lB());
            if (jPH()) {
                return;
            }
            int[] cJ = zn.cJ(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
            boolean z = false;
            boolean z2 = this.Sf.SL() == 1;
            float f2 = cJ[0];
            float f3 = cJ[1];
            float CJ = this.Tgh.CJ();
            float fl = this.Tgh.fl();
            if (z2) {
                if (CJ > fl) {
                    Qhi(f2, f3, CJ, fl, true);
                    return;
                }
            } else if (CJ < fl) {
                Qhi(f2, f3, CJ, fl, false);
                return;
            }
            float f4 = CJ / fl;
            float f5 = f2 / f3;
            if (z2) {
                if (f5 < 0.5625f && f4 == 0.5625f) {
                    CJ = (9.0f * f3) / 16.0f;
                    z = true;
                    fl = f3;
                }
            } else if (f5 > 1.7777778f && f4 == 1.7777778f) {
                fl = (9.0f * f2) / 16.0f;
                z = true;
                CJ = f2;
            }
            if (z) {
                f2 = CJ;
                f3 = fl;
            }
            int i = (int) f2;
            int i2 = (int) f3;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
            layoutParams.addRule(13);
            if (js() != null) {
                if (js() instanceof TextureView) {
                    ((TextureView) js()).setLayoutParams(layoutParams);
                } else if (js() instanceof SurfaceView) {
                    ((SurfaceView) js()).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.CQU.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.height = i2;
                    layoutParams2.width = i;
                    this.CQU.setLayoutParams(layoutParams2);
                }
            }
        } catch (Throwable th) {
            ABk.Qhi(this.Qhi, "changeSize error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dIT() {
        try {
            if (js() != null && this.Tgh != null) {
                boolean z = this.Sf.SL() == 1;
                int[] cJ = zn.cJ(com.bytedance.sdk.openadsdk.core.HzH.Qhi());
                Qhi(cJ[0], cJ[1], this.Tgh.CJ(), this.Tgh.fl(), z);
            }
        } catch (Throwable unused) {
        }
    }

    private void Qhi(float f2, float f3, float f4, float f5, boolean z) {
        RelativeLayout.LayoutParams layoutParams;
        if (f4 <= 0.0f || f5 <= 0.0f) {
            try {
                f4 = this.Sf.FQ().ac();
                f5 = this.Sf.FQ().cJ();
            } catch (Throwable unused) {
                return;
            }
        }
        if (f5 > 0.0f && f4 > 0.0f) {
            if (z) {
                if (f4 < f5) {
                    return;
                }
                layoutParams = new RelativeLayout.LayoutParams((int) f2, (int) ((f5 * f2) / f4));
            } else if (f4 > f5) {
                return;
            } else {
                layoutParams = new RelativeLayout.LayoutParams((int) ((f4 * f3) / f5), (int) f3);
            }
            layoutParams.addRule(13);
            if (js() != null) {
                if (js() instanceof TextureView) {
                    ((TextureView) js()).setLayoutParams(layoutParams);
                } else if (js() instanceof SurfaceView) {
                    ((SurfaceView) js()).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.CQU.getLayoutParams();
                if (!com.bytedance.sdk.component.adexpress.CJ.tP.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi()) || this.CQU.getHeight() <= 0 || layoutParams2 == null) {
                    return;
                }
                layoutParams2.width = layoutParams.width;
                layoutParams2.height = layoutParams.height;
                this.CQU.setLayoutParams(layoutParams2);
            }
        }
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
            cJ();
            if (this.ROR != null) {
                this.ROR.cJ(false, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(final long j, final long j2) {
        this.Sf.ac(j);
        this.hm = j;
        this.NFd = j2;
        final int Qhi = com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(j, j2);
        this.ac.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.ac.Qhi.4
            @Override // java.lang.Runnable
            public void run() {
                Qhi.this.ROR.Qhi(j, j2);
                Qhi.this.ROR.Qhi(Qhi);
                try {
                    if (Qhi.this.Eh != null) {
                        Qhi.this.Eh.Qhi(j, j2);
                    }
                } catch (Throwable th) {
                    ABk.Qhi(Qhi.this.Qhi, "onProgressUpdate error: ", th);
                }
            }
        });
    }

    public com.bykv.vk.openvk.component.video.api.renderview.cJ js() {
        if (this.ROR != null) {
            return this.ROR.ABk();
        }
        return null;
    }

    public void zn() {
        if (this.aP != null) {
            this.aP.Qhi(2);
        }
    }

    public void es() {
        if (this.aP != null) {
            this.aP.Qhi(13);
        }
    }

    public void Qhi(InterfaceC0234Qhi interfaceC0234Qhi) {
        this.ip = interfaceC0234Qhi;
    }
}
