package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1712mf;
/* loaded from: classes5.dex */
public class Ca implements Converter<Ua, Na<C1712mf.c, Vm>> {

    /* renamed from: a  reason: collision with root package name */
    private final Ja f12746a;

    /* renamed from: b  reason: collision with root package name */
    private final Ea f12747b;

    /* renamed from: c  reason: collision with root package name */
    private final Ia f12748c;

    /* renamed from: d  reason: collision with root package name */
    private final Ma f12749d;

    public Ca() {
        this(new Ja(), new Ea(), new Ia(), new Ma());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C1712mf.c, Vm> fromModel(Ua ua) {
        Na<C1712mf.m, Vm> na;
        C1712mf.c cVar = new C1712mf.c();
        Na<C1712mf.k, Vm> fromModel = this.f12746a.fromModel(ua.f14022a);
        cVar.f15162a = fromModel.f13532a;
        cVar.f15164c = this.f12747b.fromModel(ua.f14023b);
        Na<C1712mf.j, Vm> fromModel2 = this.f12748c.fromModel(ua.f14024c);
        cVar.f15165d = fromModel2.f13532a;
        C1409ab c1409ab = ua.f14025d;
        if (c1409ab != null) {
            na = this.f12749d.fromModel(c1409ab);
            cVar.f15163b = na.f13532a;
        } else {
            na = null;
        }
        return new Na<>(cVar, Um.a(fromModel, fromModel2, na));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na = (Na) obj;
        throw new UnsupportedOperationException();
    }

    Ca(Ja ja, Ea ea, Ia ia, Ma ma) {
        this.f12746a = ja;
        this.f12747b = ea;
        this.f12748c = ia;
        this.f12749d = ma;
    }
}
