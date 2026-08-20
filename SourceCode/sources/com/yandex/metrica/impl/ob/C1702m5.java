package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.m5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1702m5 extends X4 {
    public C1702m5(L3 l3) {
        super(l3);
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        if (TextUtils.isEmpty(c1448c0.p()) || !TextUtils.isEmpty(a().h())) {
            return false;
        }
        a().a(c1448c0.p());
        return false;
    }
}
