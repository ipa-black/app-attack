package com.bytedance.sdk.component.fl.CJ;

import com.bytedance.sdk.component.fl.ac.ac;
import java.util.Collection;
/* compiled from: DiskCacheVisitor.java */
/* loaded from: classes2.dex */
public class zc extends ROR {
    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public void Qhi(ac acVar) {
        byte[] Qhi;
        String WAv = acVar.WAv();
        if (acVar.qMt() || acVar.MQ().Tgh()) {
            Qhi = Qhi(acVar, WAv);
        } else {
            Qhi = cJ(acVar, WAv);
        }
        if (Qhi == null) {
            acVar.Qhi(new HzH());
            return;
        }
        acVar.Qhi(new Sf(Qhi, null));
        acVar.tP().cJ(acVar.MQ()).Qhi(WAv, Qhi);
    }

    private byte[] Qhi(ac acVar, String str) {
        acVar.tP().ac(acVar.MQ());
        Collection<com.bytedance.sdk.component.fl.ac> ac = acVar.tP().ac();
        if (ac == null) {
            return null;
        }
        for (com.bytedance.sdk.component.fl.ac acVar2 : ac) {
            byte[] Qhi = acVar2.Qhi((com.bytedance.sdk.component.fl.ac) str);
            if (Qhi != null) {
                return Qhi;
            }
        }
        return null;
    }

    private byte[] cJ(ac acVar, String str) {
        com.bytedance.sdk.component.fl.ac ac = acVar.tP().ac(acVar.MQ());
        if (ac == null) {
            return null;
        }
        return ac.Qhi((com.bytedance.sdk.component.fl.ac) str);
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public String Qhi() {
        return "disk_cache";
    }
}
