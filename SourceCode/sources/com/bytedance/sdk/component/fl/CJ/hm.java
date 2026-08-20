package com.bytedance.sdk.component.fl.CJ;

import android.text.TextUtils;
import com.bytedance.sdk.component.fl.ac.ac;
/* compiled from: CacheKeyVisitor.java */
/* loaded from: classes2.dex */
public class hm extends ROR {
    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public void Qhi(ac acVar) {
        if (TextUtils.isEmpty(acVar.fl())) {
            com.bytedance.sdk.component.fl.ABk fl = acVar.tP().fl();
            acVar.cJ(fl.Qhi(acVar));
            acVar.Qhi(fl.cJ(acVar));
        }
        acVar.Qhi(new ABk());
    }

    @Override // com.bytedance.sdk.component.fl.CJ.pA
    public String Qhi() {
        return "generate_key";
    }
}
