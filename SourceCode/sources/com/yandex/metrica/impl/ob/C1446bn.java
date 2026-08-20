package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.bn  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1446bn {

    /* renamed from: a  reason: collision with root package name */
    private final C1421an f14502a;

    /* renamed from: b  reason: collision with root package name */
    private final Zm f14503b;

    public C1446bn(C1470cm c1470cm, String str) {
        this(new C1421an(30, 50, 4000, str, c1470cm), new Zm(4500, str, c1470cm));
    }

    synchronized boolean a(C1420am c1420am, String str, String str2) {
        if (c1420am.size() >= this.f14502a.a().a() && (this.f14502a.a().a() != c1420am.size() || !c1420am.containsKey(str))) {
            this.f14502a.a(str);
            return false;
        }
        if (!this.f14503b.a(c1420am, str, str2)) {
            c1420am.put(str, str2);
            return true;
        }
        this.f14503b.a(str);
        return false;
    }

    public boolean b(C1420am c1420am, String str, String str2) {
        if (c1420am != null) {
            String a2 = this.f14502a.b().a(str);
            String a3 = this.f14502a.c().a(str2);
            if (!c1420am.containsKey(a2)) {
                if (a3 != null) {
                    return a(c1420am, a2, a3);
                }
                return false;
            }
            String str3 = c1420am.get(a2);
            if (a3 == null || !a3.equals(str3)) {
                return a(c1420am, a2, a3);
            }
            return false;
        }
        return false;
    }

    C1446bn(C1421an c1421an, Zm zm) {
        this.f14502a = c1421an;
        this.f14503b = zm;
    }
}
