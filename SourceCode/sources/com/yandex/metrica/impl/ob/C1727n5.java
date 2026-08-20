package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.n5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1727n5 extends X4 {
    public C1727n5(L3 l3) {
        super(l3);
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        String m = c1448c0.m();
        if (TextUtils.isEmpty(m)) {
            return false;
        }
        a().b(m);
        return false;
    }
}
