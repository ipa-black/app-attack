package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.hj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1592hj implements InterfaceC1442bj {

    /* renamed from: a  reason: collision with root package name */
    private final C1432b9 f14873a;

    public C1592hj(C1432b9 c1432b9) {
        this.f14873a = c1432b9;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1442bj
    public String a() {
        W0 u = this.f14873a.u();
        String str = !TextUtils.isEmpty(u.f14173a) ? u.f14173a : null;
        if (str == null) {
            String n = this.f14873a.n(null);
            return !TextUtils.isEmpty(n) ? n : str;
        }
        return str;
    }
}
