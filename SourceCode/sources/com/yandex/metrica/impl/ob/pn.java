package com.yandex.metrica.impl.ob;

import java.util.Comparator;
/* loaded from: classes5.dex */
public class pn implements Comparator<C1910uj> {
    @Override // java.util.Comparator
    public int compare(C1910uj c1910uj, C1910uj c1910uj2) {
        C1910uj c1910uj3 = c1910uj;
        C1910uj c1910uj4 = c1910uj2;
        if (c1910uj3 == c1910uj4) {
            return 0;
        }
        if (!((c1910uj4 == null) ^ (c1910uj3 == null)) && c1910uj3.q() == c1910uj4.q() && c1910uj3.c() == c1910uj4.c() && (c1910uj3.k() == null ? c1910uj4.k() == null : c1910uj3.k().equals(c1910uj4.k())) && (c1910uj3.l() == null ? c1910uj4.l() == null : c1910uj3.l().equals(c1910uj4.l())) && (c1910uj3.e() == null ? c1910uj4.e() == null : c1910uj3.e().equals(c1910uj4.e())) && (c1910uj3.b() == null ? c1910uj4.b() == null : c1910uj3.b().equals(c1910uj4.b())) && (c1910uj3.n() == null ? c1910uj4.n() == null : c1910uj3.n().equals(c1910uj4.n())) && (c1910uj3.m() == null ? c1910uj4.m() == null : c1910uj3.m().equals(c1910uj4.m()))) {
            if (c1910uj3.o() != null) {
                if (c1910uj3.o().equals(c1910uj4.o())) {
                    return 0;
                }
            } else if (c1910uj4.o() == null) {
                return 0;
            }
        }
        return 10;
    }
}
