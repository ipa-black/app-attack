package com.bytedance.sdk.component.fl.CJ;

import com.bytedance.sdk.component.fl.ac.ac;
import com.bytedance.sdk.component.fl.ac.fl;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.Map;
/* compiled from: SuccessVisitor.java */
/* loaded from: classes2.dex */
public class tP<T> extends ROR {
    private T Qhi;
    private boolean ac;
    private com.bytedance.sdk.component.fl.ROR cJ;

    public tP(T t, com.bytedance.sdk.component.fl.ROR ror, boolean z) {
        this.Qhi = t;
        this.cJ = ror;
        this.ac = z;
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public void Qhi(ac acVar) {
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

    private Map<String, String> cJ() {
        com.bytedance.sdk.component.fl.ROR ror = this.cJ;
        if (ror != null) {
            return ror.fl();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public String Qhi() {
        return FirebaseAnalytics.Param.SUCCESS;
    }

    private void cJ(ac acVar) {
        com.bytedance.sdk.component.fl.HzH hm = acVar.hm();
        if (hm != null) {
            hm.Qhi(new fl().Qhi(acVar, this.Qhi, cJ(), this.ac));
        }
    }
}
