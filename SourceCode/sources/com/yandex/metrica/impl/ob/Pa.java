package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1712mf;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public class Pa implements Fa<C1459cb> {

    /* renamed from: a  reason: collision with root package name */
    private final Oa f13685a;

    /* renamed from: b  reason: collision with root package name */
    private final Ja f13686b;

    public Pa() {
        this(new Oa(), new Ja());
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C1459cb c1459cb = (C1459cb) obj;
        C1712mf c1712mf = new C1712mf();
        c1712mf.f15152a = 2;
        c1712mf.f15154c = new C1712mf.o();
        Na<C1712mf.n, Vm> fromModel = this.f13685a.fromModel(c1459cb.f14545c);
        c1712mf.f15154c.f15202b = fromModel.f13532a;
        Na<C1712mf.k, Vm> fromModel2 = this.f13686b.fromModel(c1459cb.f14544b);
        c1712mf.f15154c.f15201a = fromModel2.f13532a;
        return Collections.singletonList(new Na(c1712mf, Um.a(fromModel, fromModel2)));
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Pa(Oa oa, Ja ja) {
        this.f13685a = oa;
        this.f13686b = ja;
    }
}
