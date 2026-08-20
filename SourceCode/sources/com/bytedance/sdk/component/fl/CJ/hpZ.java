package com.bytedance.sdk.component.fl.CJ;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.fl.ac.ac;
import java.util.Collection;
import java.util.Iterator;
/* compiled from: MemoryCacheVisitor.java */
/* loaded from: classes2.dex */
public class hpZ extends ROR {
    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public void Qhi(ac acVar) {
        Bitmap cJ;
        int zc = acVar.zc();
        if (zc != 2 && zc != 1) {
            cJ = null;
        } else if (acVar.qMt() || acVar.MQ().Tgh()) {
            cJ = cJ(acVar);
        } else {
            cJ = ac(acVar);
        }
        if (cJ == null) {
            acVar.Qhi(new kYc());
        } else {
            acVar.Qhi(new tP(cJ, null, false));
        }
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public String Qhi() {
        return "memory_cache";
    }

    private Bitmap cJ(ac acVar) {
        Collection<com.bytedance.sdk.component.fl.tP> Qhi = acVar.tP().Qhi();
        Bitmap bitmap = null;
        if (Qhi == null) {
            return null;
        }
        Iterator<com.bytedance.sdk.component.fl.tP> it = Qhi.iterator();
        while (it.hasNext() && (bitmap = it.next().Qhi(acVar.fl())) == null) {
        }
        return bitmap;
    }

    private Bitmap ac(ac acVar) {
        return acVar.tP().Qhi(acVar.MQ()).Qhi(acVar.fl());
    }
}
