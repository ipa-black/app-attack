package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.on  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1770on extends tn<C1910uj> {

    /* renamed from: com.yandex.metrica.impl.ob.on$a */
    /* loaded from: classes5.dex */
    public static class a implements un<C1910uj> {
        @Override // com.yandex.metrica.impl.ob.un
        public tn a(C1910uj c1910uj) {
            return new C1770on(c1910uj);
        }
    }

    public C1770on(C1910uj c1910uj) {
        super(c1910uj);
    }

    @Override // com.yandex.metrica.impl.ob.tn
    public boolean a(tn<C1910uj> tnVar) {
        C1910uj c1910uj = tnVar.f15792a;
        T t = this.f15792a;
        if (t == c1910uj) {
            return true;
        }
        if (((C1910uj) t).c() != c1910uj.c()) {
            return false;
        }
        if (((C1910uj) this.f15792a).k() == null ? c1910uj.k() == null : ((C1910uj) this.f15792a).k().equals(c1910uj.k())) {
            if (((C1910uj) this.f15792a).l() == null ? c1910uj.l() == null : ((C1910uj) this.f15792a).l().equals(c1910uj.l())) {
                if (((C1910uj) this.f15792a).e() == null ? c1910uj.e() == null : ((C1910uj) this.f15792a).e().equals(c1910uj.e())) {
                    if (((C1910uj) this.f15792a).b() == null ? c1910uj.b() == null : ((C1910uj) this.f15792a).b().equals(c1910uj.b())) {
                        if (((C1910uj) this.f15792a).m() == null ? c1910uj.m() == null : ((C1910uj) this.f15792a).m().equals(c1910uj.m())) {
                            if (((C1910uj) this.f15792a).o() != null) {
                                return ((C1910uj) this.f15792a).o().equals(c1910uj.o());
                            }
                            return c1910uj.o() == null;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((((((((C1910uj) this.f15792a).k() != null ? ((C1910uj) this.f15792a).k().hashCode() : 0) * 31) + (((C1910uj) this.f15792a).l() != null ? ((C1910uj) this.f15792a).l().hashCode() : 0)) * 31) + (((C1910uj) this.f15792a).e() != null ? ((C1910uj) this.f15792a).e().hashCode() : 0)) * 31) + (((C1910uj) this.f15792a).b() != null ? ((C1910uj) this.f15792a).b().hashCode() : 0)) * 31) + (((C1910uj) this.f15792a).m() != null ? ((C1910uj) this.f15792a).m().hashCode() : 0)) * 31) + ((C1910uj) this.f15792a).c()) * 31) + (((C1910uj) this.f15792a).o() != null ? ((C1910uj) this.f15792a).o().hashCode() : 0);
    }
}
