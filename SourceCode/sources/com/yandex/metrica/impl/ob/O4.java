package com.yandex.metrica.impl.ob;

import android.os.Bundle;
/* loaded from: classes5.dex */
public class O4 extends M4 {
    public O4(F3 f3) {
        super(f3);
    }

    @Override // com.yandex.metrica.impl.ob.M4
    public boolean a(C1448c0 c1448c0, C1726n4 c1726n4) {
        Bundle l = c1448c0.l();
        a().a(l != null ? (V0) l.getParcelable("com.yandex.metrica.impl.IdentifiersData") : null);
        return false;
    }
}
