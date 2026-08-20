package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1712mf;
/* loaded from: classes5.dex */
public class Ma implements Converter<C1409ab, Na<C1712mf.m, Vm>> {

    /* renamed from: a  reason: collision with root package name */
    private final Oa f13476a;

    /* renamed from: b  reason: collision with root package name */
    private final C1670kn f13477b;

    /* renamed from: c  reason: collision with root package name */
    private final C1670kn f13478c;

    public Ma() {
        this(new Oa(), new C1670kn(100), new C1670kn(2048));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C1712mf.m, Vm> fromModel(C1409ab c1409ab) {
        Na<C1712mf.n, Vm> na;
        C1712mf.m mVar = new C1712mf.m();
        C1571gn<String, Vm> a2 = this.f13477b.a(c1409ab.f14405a);
        mVar.f15194a = C1422b.b(a2.f14820a);
        C1571gn<String, Vm> a3 = this.f13478c.a(c1409ab.f14406b);
        mVar.f15195b = C1422b.b(a3.f14820a);
        C1434bb c1434bb = c1409ab.f14407c;
        if (c1434bb != null) {
            na = this.f13476a.fromModel(c1434bb);
            mVar.f15196c = na.f13532a;
        } else {
            na = null;
        }
        return new Na<>(mVar, Um.a(a2, a3, na));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Ma(Oa oa, C1670kn c1670kn, C1670kn c1670kn2) {
        this.f13476a = oa;
        this.f13477b = c1670kn;
        this.f13478c = c1670kn2;
    }
}
