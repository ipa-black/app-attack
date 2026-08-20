package com.bytedance.sdk.component.fl.CJ;

import com.bytedance.sdk.component.fl.ac.ac;
import com.bytedance.sdk.component.fl.cJ;
import com.bytedance.sdk.component.fl.fl;
/* compiled from: NetVisitor.java */
/* loaded from: classes2.dex */
public class HzH extends ROR {
    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public void Qhi(final ac acVar) {
        final com.bytedance.sdk.component.fl.ac.ROR tP = acVar.tP();
        fl CJ = tP.CJ();
        acVar.Qhi(false);
        try {
            com.bytedance.sdk.component.fl.ROR Qhi = CJ.Qhi(new com.bytedance.sdk.component.fl.cJ.ac(acVar.Qhi(), acVar.ABk(), acVar.iMK(), acVar.EBS()));
            int cJ = Qhi.cJ();
            acVar.Qhi(Qhi.Qhi());
            if (Qhi.cJ() == 200) {
                final byte[] bArr = (byte[]) Qhi.ac();
                acVar.Qhi(new Sf(bArr, Qhi));
                final String WAv = acVar.WAv();
                final cJ MQ = acVar.MQ();
                if (MQ.ac()) {
                    tP.cJ(acVar.MQ()).Qhi(WAv, bArr);
                }
                tP.Tgh().submit(new Runnable() { // from class: com.bytedance.sdk.component.fl.CJ.HzH.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MQ.CJ()) {
                            tP.ac(acVar.MQ()).Qhi(WAv, bArr);
                        }
                    }
                });
                return;
            }
            tP.Sf();
            String.valueOf(Qhi);
            Object ac = Qhi.ac();
            Qhi(cJ, Qhi.CJ(), ac instanceof Throwable ? (Throwable) ac : null, acVar);
        } catch (Throwable th) {
            Qhi(1004, "net request failed!", th, acVar);
        }
    }

    private void Qhi(int i, String str, Throwable th, ac acVar) {
        acVar.Qhi(new iMK(i, str, th));
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public String Qhi() {
        return "net_request";
    }
}
