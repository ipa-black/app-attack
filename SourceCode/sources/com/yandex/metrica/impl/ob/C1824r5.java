package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.r5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1824r5 extends X4 {
    public C1824r5(L3 l3) {
        super(l3);
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        String p = a().p();
        String m = c1448c0.m();
        a().b(m);
        if (TextUtils.equals(p, m)) {
            return false;
        }
        a().a(J.s());
        return false;
    }
}
