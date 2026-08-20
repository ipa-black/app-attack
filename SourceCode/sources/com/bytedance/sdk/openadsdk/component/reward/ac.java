package com.bytedance.sdk.openadsdk.component.reward;

import android.os.CountDownTimer;
import com.bykv.vk.openvk.component.video.api.CJ.fl;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.ac.Qhi;
/* compiled from: FakeVideoController.java */
/* loaded from: classes2.dex */
public class ac implements com.bykv.vk.openvk.component.video.api.CJ.fl {
    private final Qhi Qhi;
    private final com.bykv.vk.openvk.component.video.api.cJ.Qhi ROR;
    private Qhi.InterfaceC0234Qhi Sf;
    private final tP Tgh;
    private boolean fl;
    private boolean cJ = true;
    private long ac = 0;
    private boolean CJ = false;

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public com.bykv.vk.openvk.component.video.api.CJ.ac ABk() {
        return null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void CJ(boolean z) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean Gm() {
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean HzH() {
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(fl.cJ cJVar) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(fl.InterfaceC0165fl interfaceC0165fl) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public int ROR() {
        return 0;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public long Tgh() {
        return 0L;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void ac(long j) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void cJ(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void fl(boolean z) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean hpZ() {
        return false;
    }

    public ac(tP tPVar, com.bytedance.sdk.openadsdk.cJ.Sf sf) {
        com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi = new com.bykv.vk.openvk.component.video.api.cJ.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.ac.1
        };
        this.ROR = qhi;
        this.Tgh = tPVar;
        com.bykv.vk.openvk.component.video.api.ac.cJ FQ = tPVar.FQ();
        long j = 10;
        long Tgh = FQ != null ? (long) FQ.Tgh() : 10L;
        if (Tgh <= 0) {
            FQ.Qhi(10.0d);
        } else {
            j = Tgh;
        }
        this.Qhi = new Qhi(j * 1000, qhi, sf);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi() {
        this.Qhi.WAv();
        hpZ.Qhi qhi = new hpZ.Qhi();
        qhi.Qhi(fl());
        qhi.ac(Sf());
        qhi.cJ(Tgh());
        com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(this.ROR, qhi);
        Qhi.InterfaceC0234Qhi interfaceC0234Qhi = this.Sf;
        if (interfaceC0234Qhi != null) {
            interfaceC0234Qhi.Qhi(2);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void cJ() {
        this.Qhi.hm();
        hpZ.Qhi qhi = new hpZ.Qhi();
        qhi.Qhi(fl());
        qhi.ac(Sf());
        qhi.cJ(Tgh());
        com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.cJ(this.ROR, qhi);
        Qhi.InterfaceC0234Qhi interfaceC0234Qhi = this.Sf;
        if (interfaceC0234Qhi != null) {
            interfaceC0234Qhi.Qhi(1);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void ac() {
        this.Qhi.Gm();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(boolean z, int i) {
        ac();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void CJ() {
        ac();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        this.CJ = acVar.Sf();
        if (acVar.ROR() > 0) {
            this.Qhi.Qhi(acVar.ROR());
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.Qhi(this.Tgh, this.ROR, acVar);
        this.Qhi.hm();
        return true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public long fl() {
        return this.Qhi.pA();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(long j) {
        this.Qhi.Qhi(j);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(boolean z) {
        this.cJ = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public long Sf() {
        return this.Qhi.iMK();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public long hm() {
        return fl();
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public int WAv() {
        return com.bykv.vk.openvk.component.video.Qhi.fl.Qhi.Qhi(this.Qhi.Tgh, this.Qhi.Qhi);
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void cJ(long j) {
        this.ac = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public com.bykv.vk.openvk.component.video.api.Qhi zc() {
        return this.Qhi;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean iMK() {
        return this.CJ;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void cJ(boolean z) {
        this.CJ = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public boolean pA() {
        return this.fl;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void ac(boolean z) {
        this.fl = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.CJ.fl
    public void Qhi(fl.Qhi qhi) {
        this.Qhi.Qhi(qhi);
    }

    public com.bykv.vk.openvk.component.video.api.cJ.Qhi kYc() {
        return this.ROR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FakeVideoController.java */
    /* loaded from: classes2.dex */
    public static class Qhi implements com.bykv.vk.openvk.component.video.api.Qhi {
        private CountDownTimer CJ;
        private final long Qhi;
        private final com.bykv.vk.openvk.component.video.api.cJ.Qhi ROR;
        private final com.bytedance.sdk.openadsdk.cJ.Sf Sf;
        private long Tgh;
        private int ac = 0;
        private long cJ;
        private fl.Qhi fl;

        public int ABk() {
            return 0;
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi
        public int CJ() {
            return 0;
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi
        public boolean Qhi() {
            return false;
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi
        public boolean ac() {
            return false;
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi
        public boolean cJ() {
            return false;
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi
        public int fl() {
            return 0;
        }

        public long zc() {
            return 0L;
        }

        public Qhi(long j, com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, com.bytedance.sdk.openadsdk.cJ.Sf sf) {
            this.Qhi = j;
            this.ROR = qhi;
            this.Sf = sf;
        }

        public void hm() {
            if (this.ac == 1) {
                return;
            }
            this.ac = 1;
            final long iMK = iMK();
            final long j = iMK - this.cJ;
            CountDownTimer countDownTimer = new CountDownTimer(j, 200L) { // from class: com.bytedance.sdk.openadsdk.component.reward.ac.Qhi.1
                @Override // android.os.CountDownTimer
                public void onTick(long j2) {
                    long j3 = (j - j2) + Qhi.this.cJ;
                    Qhi.this.Tgh = j3;
                    if (Qhi.this.fl != null) {
                        Qhi.this.fl.Qhi(j3, iMK);
                    }
                }

                @Override // android.os.CountDownTimer
                public void onFinish() {
                    Qhi.this.ac = 4;
                    Qhi.this.Tgh = iMK;
                    if (Qhi.this.fl != null) {
                        Qhi.this.fl.Qhi(Qhi.this.pA(), 100);
                    }
                    hpZ.Qhi qhi = new hpZ.Qhi();
                    qhi.Qhi(iMK);
                    qhi.ac(iMK);
                    qhi.cJ(Qhi.this.zc());
                    qhi.CJ(Qhi.this.ABk());
                    com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.cJ(Qhi.this.ROR, qhi, Qhi.this.Sf);
                }
            };
            this.CJ = countDownTimer;
            countDownTimer.start();
        }

        public void WAv() {
            this.ac = 2;
            this.cJ = this.Tgh;
            CountDownTimer countDownTimer = this.CJ;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.CJ = null;
            }
        }

        public void Gm() {
            this.ac = 0;
            CountDownTimer countDownTimer = this.CJ;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.CJ = null;
            }
            if (this.fl != null) {
                this.fl = null;
            }
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi
        public boolean Tgh() {
            return this.ac == 1;
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi
        public boolean ROR() {
            return this.ac == 2;
        }

        @Override // com.bykv.vk.openvk.component.video.api.Qhi
        public boolean Sf() {
            return this.ac == 0;
        }

        public long iMK() {
            return this.Qhi;
        }

        public long pA() {
            return this.Tgh;
        }

        public void Qhi(long j) {
            this.cJ = j;
        }

        public void Qhi(fl.Qhi qhi) {
            this.fl = qhi;
        }
    }

    public void Qhi(Qhi.InterfaceC0234Qhi interfaceC0234Qhi) {
        this.Sf = interfaceC0234Qhi;
    }
}
