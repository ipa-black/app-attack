package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1712mf;
import java.util.List;
/* loaded from: classes5.dex */
public class Ia implements Converter<Xa, Na<C1712mf.j, Vm>> {

    /* renamed from: a  reason: collision with root package name */
    private final Aa f13066a;

    /* renamed from: b  reason: collision with root package name */
    private final C1534fb f13067b;

    public Ia() {
        this(new Aa(), new C1534fb(30));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C1712mf.j, Vm> fromModel(Xa xa) {
        int i;
        C1712mf.j jVar = new C1712mf.j();
        Na<C1712mf.a, Vm> fromModel = this.f13066a.fromModel(xa.f14263a);
        jVar.f15183a = fromModel.f13532a;
        C1571gn<List<Sa>, Xm> a2 = this.f13067b.a((List) xa.f14264b);
        if (A2.b(a2.f14820a)) {
            i = 0;
        } else {
            jVar.f15184b = new C1712mf.a[a2.f14820a.size()];
            i = 0;
            for (int i2 = 0; i2 < a2.f14820a.size(); i2++) {
                Na<C1712mf.a, Vm> fromModel2 = this.f13066a.fromModel(a2.f14820a.get(i2));
                jVar.f15184b[i2] = fromModel2.f13532a;
                i += fromModel2.f13533b.a();
            }
        }
        return new Na<>(jVar, Um.a(fromModel, a2, new Um(i)));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Ia(Aa aa, C1534fb c1534fb) {
        this.f13066a = aa;
        this.f13067b = c1534fb;
    }
}
