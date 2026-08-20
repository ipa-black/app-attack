package com.bytedance.sdk.component.Tgh.Qhi.Qhi;

import com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.Sf;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.List;
import java.util.Queue;
/* compiled from: RealTimeMemoryCacheStrategy.java */
/* loaded from: classes2.dex */
public class ROR implements fl {
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac ABk;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.cJ CJ;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac Gm;
    Tgh Qhi = hm.ROR().CJ();
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.ROR ROR;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac Sf;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.ac Tgh;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac WAv;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.Qhi ac;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.Tgh cJ;
    private Sf fl;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac hm;
    private Queue<String> iMK;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac zc;

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public void Qhi(int i, long j) {
    }

    public ROR(Queue<String> queue) {
        this.iMK = queue;
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi()) {
            this.Sf = hm.ROR().zc();
            this.cJ = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.Tgh(this.Sf, queue);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl()) {
            if (hm.ROR().WAv() != null) {
                this.WAv = hm.ROR().WAv();
            } else {
                this.WAv = hm.ROR().ABk();
            }
            this.CJ = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.cJ(this.WAv, queue);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ()) {
            this.hm = hm.ROR().ABk();
            this.ac = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.Qhi(this.hm, queue);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac()) {
            this.Gm = hm.ROR().ABk();
            this.fl = new Sf(this.Gm, queue);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ()) {
            this.zc = hm.ROR().iMK();
            this.Tgh = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.ac(this.zc, queue);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh()) {
            this.ABk = hm.ROR().pA();
            this.ROR = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.ROR(this.ABk, queue);
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public void Qhi(com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh, int i) {
        try {
            byte CJ = tgh.CJ();
            byte fl = tgh.fl();
            if (CJ == 0 && fl == 1 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi()) {
                this.cJ.Qhi(tgh);
            } else if (CJ == 3 && fl == 2 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl()) {
                this.CJ.Qhi(tgh);
            } else if (CJ == 0 && fl == 2 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ()) {
                this.ac.Qhi(tgh);
            } else if (CJ == 1 && fl == 2 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac()) {
                this.fl.Qhi(tgh);
            } else if (CJ == 1 && fl == 3 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ()) {
                this.Tgh.Qhi(tgh);
            } else if (CJ == 2 && fl == 3 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh()) {
                this.ROR.Qhi(tgh);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public void Qhi(int i, List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> list) {
        if (list == null || list.size() == 0 || list.get(0) == null) {
            return;
        }
        com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh = list.get(0);
        byte fl = tgh.fl();
        byte CJ = tgh.CJ();
        if (CJ == 0 && fl == 1 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi()) {
            this.cJ.Qhi(i, list);
        } else if (CJ == 3 && fl == 2 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl()) {
            this.CJ.Qhi(i, list);
        } else if (CJ == 0 && fl == 2 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ()) {
            this.ac.Qhi(i, list);
        } else if (CJ == 1 && fl == 2 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac()) {
            this.fl.Qhi(i, list);
        } else if (CJ == 1 && fl == 3 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ()) {
            this.Tgh.Qhi(i, list);
        } else if (CJ == 2 && fl == 3 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh()) {
            this.ROR.Qhi(i, list);
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi(int i, int i2, List<String> list) {
        List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi;
        List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi2;
        List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi3;
        List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi4;
        List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi5;
        List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi6;
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi() && this.cJ.cJ(i, i2) && (Qhi6 = this.cJ.Qhi(i, i2)) != null && Qhi6.size() != 0) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.kYc(), 1);
            return Qhi6;
        } else if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl() || !this.CJ.cJ(i, i2) || (Qhi5 = this.CJ.Qhi(i, i2)) == null || Qhi5.size() == 0) {
            if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ() && this.ac.cJ(i, i2) && (Qhi4 = this.ac.Qhi(i, i2)) != null && Qhi4.size() != 0) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.tP(), 1);
                return Qhi4;
            } else if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac() && this.fl.cJ(i, i2) && (Qhi3 = this.fl.Qhi(i, i2)) != null && Qhi3.size() != 0) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.MQ(), 1);
                return Qhi3;
            } else if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ() && this.Tgh.cJ(i, i2) && (Qhi2 = this.Tgh.Qhi(i, i2)) != null && Qhi2.size() != 0) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.qMt(), 1);
                return Qhi2;
            } else if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh() || !this.ROR.cJ(i, i2) || (Qhi = this.ROR.Qhi(i, i2)) == null || Qhi.size() == 0) {
                return null;
            } else {
                return Qhi;
            }
        } else {
            return Qhi5;
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public boolean Qhi(int i, boolean z) {
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.ROR ror;
        com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar;
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.ac acVar2;
        com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar3;
        Sf sf;
        com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar4;
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.Qhi qhi;
        com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar5;
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.cJ cJVar;
        com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar6;
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.cJ.Tgh tgh;
        com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar7;
        if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi() || (tgh = this.cJ) == null || (acVar7 = this.Sf) == null || !tgh.cJ(i, acVar7.Qhi())) {
            if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl() || (cJVar = this.CJ) == null || (acVar6 = this.WAv) == null || !cJVar.cJ(i, acVar6.Qhi())) {
                if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ() || (qhi = this.ac) == null || (acVar5 = this.hm) == null || !qhi.cJ(i, acVar5.Qhi())) {
                    if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac() || (sf = this.fl) == null || (acVar4 = this.Gm) == null || !sf.cJ(i, acVar4.Qhi())) {
                        if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ() || (acVar2 = this.Tgh) == null || (acVar3 = this.zc) == null || !acVar2.cJ(i, acVar3.Qhi())) {
                            return com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh() && (ror = this.ROR) != null && (acVar = this.ABk) != null && ror.cJ(i, acVar.Qhi());
                        }
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }
        return true;
    }
}
