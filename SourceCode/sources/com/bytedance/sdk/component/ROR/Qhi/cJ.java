package com.bytedance.sdk.component.ROR.Qhi;

import com.bytedance.sdk.component.ROR.cJ.ac;
import java.io.IOException;
/* compiled from: NetResponseCallback.java */
/* loaded from: classes2.dex */
public abstract class cJ extends Qhi {
    public abstract void Qhi(ac acVar, IOException iOException, com.bytedance.sdk.component.ROR.cJ cJVar);

    @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
    public void Qhi(ac acVar, IOException iOException) {
        Qhi(acVar, iOException, null);
    }
}
