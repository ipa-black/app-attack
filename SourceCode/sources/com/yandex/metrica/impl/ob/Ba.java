package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1712mf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class Ba implements Fa<Ta> {

    /* renamed from: a  reason: collision with root package name */
    private final Ca f12681a;

    public Ba() {
        this(new Ca());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Ta ta = (Ta) obj;
        C1712mf c1712mf = new C1712mf();
        c1712mf.f15156e = new C1712mf.b();
        Na<C1712mf.c, Vm> fromModel = this.f12681a.fromModel(ta.f13948c);
        c1712mf.f15156e.f15161a = fromModel.f13532a;
        c1712mf.f15152a = ta.f13947b;
        return Collections.singletonList(new Na(c1712mf, Um.a(fromModel)));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Ba(Ca ca) {
        this.f12681a = ca;
    }
}
