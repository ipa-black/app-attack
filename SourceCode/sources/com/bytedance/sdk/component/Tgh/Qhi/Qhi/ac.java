package com.bytedance.sdk.component.Tgh.Qhi.Qhi;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Sf;
import com.bytedance.sdk.component.Tgh.Qhi.hm;
import java.util.Iterator;
import java.util.List;
/* compiled from: DBCacheStrategy.java */
/* loaded from: classes2.dex */
public class ac implements fl {
    private Sf CJ;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac Gm;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.fl Qhi;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac ROR;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac Sf;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Tgh Tgh;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac WAv;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.cJ ac;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Qhi cJ;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.ROR fl;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac hm;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac zc;

    public ac() {
        Context Tgh = hm.ROR().Tgh();
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi()) {
            this.ROR = hm.ROR().zc();
            this.Qhi = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.fl(Tgh, this.ROR);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl()) {
            if (hm.ROR().WAv() != null) {
                this.hm = hm.ROR().WAv();
            } else {
                this.hm = hm.ROR().ABk();
            }
            this.ac = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.cJ(Tgh, this.hm);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ()) {
            this.Sf = hm.ROR().ABk();
            this.cJ = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Qhi(Tgh, this.Sf);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac()) {
            this.WAv = hm.ROR().ABk();
            this.CJ = new Sf(Tgh, this.WAv);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ()) {
            this.Gm = hm.ROR().iMK();
            this.fl = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.ROR(Tgh, this.Gm);
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh()) {
            this.zc = hm.ROR().pA();
            this.Tgh = new com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Tgh(Tgh, this.zc);
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public void Qhi(com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh, int i) {
        if (tgh == null) {
            return;
        }
        try {
            tgh.cJ(System.currentTimeMillis());
            if (tgh.CJ() == 0 && tgh.fl() == 1) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi()) {
                    this.Qhi.Qhi(tgh);
                }
            } else if (tgh.CJ() == 3 && tgh.fl() == 2) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl()) {
                    this.ac.Qhi(tgh);
                }
            } else if (tgh.CJ() == 0 && tgh.fl() == 2) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ()) {
                    this.cJ.Qhi(tgh);
                }
            } else if (tgh.CJ() == 1 && tgh.fl() == 2) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac()) {
                    this.CJ.Qhi(tgh);
                }
            } else if (tgh.CJ() == 1 && tgh.fl() == 3) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ()) {
                    this.fl.Qhi(tgh);
                }
            } else if (tgh.CJ() == 2 && tgh.fl() == 3 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh()) {
                this.Tgh.Qhi(tgh);
            }
        } catch (Throwable unused) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.Jma(), 1);
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public void Qhi(int i, List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> list) {
        if (list == null || list.size() == 0 || list.get(0) == null) {
            return;
        }
        com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh = list.get(0);
        if (i == 200 || i == -1) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.NBs(), list.size());
            if (i != 200) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.dVA(), list.size());
            }
            if (tgh.CJ() == 0 && tgh.fl() == 1) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi()) {
                    this.Qhi.cJ(list);
                }
            } else if (tgh.CJ() == 3 && tgh.fl() == 2) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl()) {
                    this.ac.cJ(list);
                }
            } else if (tgh.CJ() == 0 && tgh.fl() == 2) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ()) {
                    this.cJ.cJ(list);
                }
            } else if (tgh.CJ() == 1 && tgh.fl() == 2) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac()) {
                    this.CJ.cJ(list);
                }
            } else if (tgh.CJ() == 1 && tgh.fl() == 3) {
                if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ()) {
                    this.fl.cJ(list);
                }
            } else if (tgh.CJ() == 2 && tgh.fl() == 3 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh()) {
                this.Tgh.cJ(list);
            }
        }
    }

    public List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> cJ(com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh tgh, int i) {
        if (tgh.CJ() == 0 && tgh.fl() == 1 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi()) {
            if (this.ROR.cJ() > i) {
                List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi = this.Qhi.Qhi(this.ROR.cJ() - i, "_id");
                if (Qhi != null && Qhi.size() != 0) {
                    com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.Eh(), 1);
                }
                return Qhi;
            }
            return null;
        }
        if (tgh.CJ() == 3 && tgh.fl() == 2 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl()) {
            if (this.hm.cJ() > i) {
                return this.ac.Qhi(this.hm.cJ() - i, "_id");
            }
        } else if (tgh.CJ() == 0 && tgh.fl() == 2 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ()) {
            if (this.Sf.cJ() > i) {
                List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi2 = this.cJ.Qhi(this.Sf.cJ() - i, "_id");
                if (Qhi2 != null && Qhi2.size() != 0) {
                    com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.aP(), 1);
                }
                return Qhi2;
            }
        } else if (tgh.CJ() == 1 && tgh.fl() == 2 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac()) {
            if (this.WAv.cJ() > i) {
                List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi3 = this.CJ.Qhi(this.WAv.cJ() - i, "_id");
                if (Qhi3 != null && Qhi3.size() != 0) {
                    com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.NFd(), 1);
                }
                return Qhi3;
            }
        } else if (tgh.CJ() == 1 && tgh.fl() == 3 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ()) {
            if (this.Gm.cJ() > i) {
                List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi4 = this.fl.Qhi(this.Gm.cJ() - i, "_id");
                if (Qhi4 != null && Qhi4.size() != 0) {
                    com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.sDy(), 1);
                }
                return Qhi4;
            }
        } else if (tgh.CJ() == 2 && tgh.fl() == 3 && com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh() && this.zc.cJ() > i) {
            return this.Tgh.Qhi(this.zc.cJ() - i, "_id");
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi(int i, int i2, List<String> list) {
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi()) {
            List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi = this.Qhi.Qhi("_id");
            if (Qhi(Qhi, list)) {
                Qhi.size();
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.bxS(), 1);
                return Qhi;
            }
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl()) {
            List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi2 = this.ac.Qhi("_id");
            if (Qhi(Qhi2, list)) {
                Qhi2.size();
                return Qhi2;
            }
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ()) {
            List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> Qhi3 = this.cJ.Qhi("_id");
            if (Qhi(Qhi3, list)) {
                Qhi3.size();
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.Dww(), 1);
                return Qhi3;
            }
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac()) {
            List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> cJ = this.CJ.cJ("_id");
            if (Qhi(cJ, list)) {
                cJ.size();
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.CQU(), 1);
                return cJ;
            }
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ()) {
            List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> cJ2 = this.fl.cJ("_id");
            if (Qhi(cJ2, list)) {
                cJ2.size();
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.pM(), 1);
                return cJ2;
            }
        }
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh()) {
            List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> cJ3 = this.Tgh.cJ("_id");
            if (Qhi(cJ3, list)) {
                cJ3.size();
                return cJ3;
            }
            return null;
        }
        return null;
    }

    private boolean Qhi(List<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> list, List<String> list2) {
        if (list != null && !list.isEmpty() && list2 != null && !list2.isEmpty()) {
            try {
                Iterator<com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh> it = list.iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.Tgh.Qhi.CJ.Tgh next = it.next();
                    if (next != null) {
                        String ac = next.ac();
                        if (!TextUtils.isEmpty(ac) && list2.contains(ac)) {
                            it.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        return (list == null || list.isEmpty()) ? false : true;
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public boolean Qhi(int i, boolean z) {
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Tgh tgh;
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.ROR ror;
        Sf sf;
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Qhi qhi;
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.cJ cJVar;
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.fl flVar;
        if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Qhi() && (flVar = this.Qhi) != null && flVar.Qhi(i)) {
            com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.iMK(), 1);
            return true;
        } else if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.fl() && (cJVar = this.ac) != null && cJVar.Qhi(i)) {
            return true;
        } else {
            if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.cJ() && (qhi = this.cJ) != null && qhi.Qhi(i)) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.pA(), 1);
                return true;
            } else if (com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.ac() && (sf = this.CJ) != null && sf.Qhi(i)) {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.hpZ(), 1);
                return true;
            } else if (!com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.CJ() || (ror = this.fl) == null || !ror.Qhi(i)) {
                return com.bytedance.sdk.component.Tgh.Qhi.cJ.Qhi.Tgh() && (tgh = this.Tgh) != null && tgh.Qhi(i);
            } else {
                com.bytedance.sdk.component.Tgh.Qhi.ac.cJ.Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.fl.CJ.HzH(), 1);
                return true;
            }
        }
    }

    @Override // com.bytedance.sdk.component.Tgh.Qhi.Qhi.fl
    public void Qhi(int i, long j) {
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.fl flVar = this.Qhi;
        if (flVar != null) {
            flVar.Qhi(i, j);
        }
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.cJ cJVar = this.ac;
        if (cJVar != null) {
            cJVar.Qhi(i, j);
        }
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Qhi qhi = this.cJ;
        if (qhi != null) {
            qhi.Qhi(i, j);
        }
        Sf sf = this.CJ;
        if (sf != null) {
            sf.Qhi(i, j);
        }
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.ROR ror = this.fl;
        if (ror != null) {
            ror.Qhi(i, j);
        }
        com.bytedance.sdk.component.Tgh.Qhi.Qhi.Qhi.Qhi.Tgh tgh = this.Tgh;
        if (tgh != null) {
            tgh.Qhi(i, j);
        }
    }
}
