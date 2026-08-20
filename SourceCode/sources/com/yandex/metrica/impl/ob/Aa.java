package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1712mf;
/* loaded from: classes5.dex */
public class Aa implements Converter<Sa, Na<C1712mf.a, Vm>> {

    /* renamed from: a  reason: collision with root package name */
    private final Ea f12628a;

    /* renamed from: b  reason: collision with root package name */
    private final C1670kn f12629b;

    public Aa() {
        this(new Ea(), new C1670kn(20));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C1712mf.a, Vm> fromModel(Sa sa) {
        C1712mf.a aVar = new C1712mf.a();
        aVar.f15160b = this.f12628a.fromModel(sa.f13855a);
        C1571gn<String, Vm> a2 = this.f12629b.a(sa.f13856b);
        aVar.f15159a = C1422b.b(a2.f14820a);
        return new Na<>(aVar, Um.a(a2));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Aa(Ea ea, C1670kn c1670kn) {
        this.f12628a = ea;
        this.f12629b = c1670kn;
    }
}
