package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.b5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1428b5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final M5 f14438b;

    public C1428b5(L3 l3) {
        this(l3, l3.j());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        if (TextUtils.isEmpty(c1448c0.g())) {
            return false;
        }
        c1448c0.a(this.f14438b.a(c1448c0.g()));
        return false;
    }

    C1428b5(L3 l3, M5 m5) {
        super(l3);
        this.f14438b = m5;
    }
}
