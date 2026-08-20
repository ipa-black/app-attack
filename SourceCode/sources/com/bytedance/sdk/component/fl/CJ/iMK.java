package com.bytedance.sdk.component.fl.CJ;

import com.bytedance.sdk.component.fl.ac.Qhi;
import com.bytedance.sdk.component.fl.ac.ac;
import java.util.List;
import java.util.Map;
/* compiled from: FailVisitor.java */
/* loaded from: classes2.dex */
public class iMK extends ROR {
    private Throwable Qhi;
    private String ac;
    private int cJ;

    public iMK(int i, String str, Throwable th) {
        this.cJ = i;
        this.ac = str;
        this.Qhi = th;
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public void Qhi(ac acVar) {
        acVar.Qhi(new Qhi(this.cJ, this.ac, this.Qhi));
        String bxS = acVar.bxS();
        Map<String, List<ac>> ROR = acVar.tP().ROR();
        List<ac> list = ROR.get(bxS);
        if (list == null) {
            cJ(acVar);
            return;
        }
        synchronized (list) {
            for (ac acVar2 : list) {
                cJ(acVar2);
            }
            list.clear();
            ROR.remove(bxS);
        }
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public String Qhi() {
        return "failed";
    }

    private void cJ(ac acVar) {
        com.bytedance.sdk.component.fl.HzH hm = acVar.hm();
        if (hm != null) {
            hm.Qhi(this.cJ, this.ac, this.Qhi);
        }
    }
}
