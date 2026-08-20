package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1712mf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class Ra implements Fa<C1509eb> {

    /* renamed from: a  reason: collision with root package name */
    private final Oa f13792a;

    public Ra() {
        this(new Oa());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C1712mf c1712mf = new C1712mf();
        c1712mf.f15152a = 1;
        c1712mf.f15153b = new C1712mf.q();
        Na<C1712mf.n, Vm> fromModel = this.f13792a.fromModel(((C1509eb) obj).f14663b);
        c1712mf.f15153b.f15205a = fromModel.f13532a;
        return Collections.singletonList(new Na(c1712mf, Um.a(fromModel)));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Ra(Oa oa) {
        this.f13792a = oa;
    }
}
