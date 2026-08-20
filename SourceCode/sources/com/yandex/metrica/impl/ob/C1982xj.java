package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C1910uj;
/* renamed from: com.yandex.metrica.impl.ob.xj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1982xj {
    private boolean a(Integer num) {
        return (num == null || num.intValue() == Integer.MAX_VALUE) ? false : true;
    }

    public C1910uj a(C1910uj c1910uj) {
        C1910uj.a aVar = new C1910uj.a();
        aVar.a(c1910uj.c());
        if (a(c1910uj.p())) {
            aVar.l(c1910uj.p());
        }
        if (a(c1910uj.k())) {
            aVar.i(c1910uj.k());
        }
        if (a(c1910uj.l())) {
            aVar.j(c1910uj.l());
        }
        if (a(c1910uj.e())) {
            aVar.c(c1910uj.e());
        }
        if (a(c1910uj.b())) {
            aVar.b(c1910uj.b());
        }
        if (!TextUtils.isEmpty(c1910uj.n())) {
            aVar.b(c1910uj.n());
        }
        if (!TextUtils.isEmpty(c1910uj.m())) {
            aVar.a(c1910uj.m());
        }
        aVar.a(c1910uj.q());
        if (a(c1910uj.o())) {
            aVar.k(c1910uj.o());
        }
        aVar.a(c1910uj.d());
        if (a(c1910uj.h())) {
            aVar.f(c1910uj.h());
        }
        if (a(c1910uj.j())) {
            aVar.h(c1910uj.j());
        }
        if (a(c1910uj.a())) {
            aVar.a(c1910uj.a());
        }
        if (a(c1910uj.i())) {
            aVar.g(c1910uj.i());
        }
        if (a(c1910uj.f())) {
            aVar.d(c1910uj.f());
        }
        if (a(c1910uj.g())) {
            aVar.e(c1910uj.g());
        }
        return new C1910uj(aVar);
    }
}
