package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class L9 implements ProtobufConverter<C1759oc, If.k> {

    /* renamed from: a  reason: collision with root package name */
    private final K9 f13415a;

    /* renamed from: b  reason: collision with root package name */
    private final M9 f13416b;

    public L9() {
        this(new K9(), new M9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k fromModel(C1759oc c1759oc) {
        If.k kVar = new If.k();
        kVar.f13114a = this.f13415a.fromModel(c1759oc.f15328a);
        kVar.f13115b = this.f13416b.fromModel(c1759oc.f15329b);
        return kVar;
    }

    L9(K9 k9, M9 m9) {
        this.f13415a = k9;
        this.f13416b = m9;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1759oc toModel(If.k kVar) {
        K9 k9 = this.f13415a;
        If.k.a aVar = kVar.f13114a;
        If.k.a aVar2 = new If.k.a();
        if (aVar == null) {
            aVar = aVar2;
        }
        C1709mc model = k9.toModel(aVar);
        M9 m9 = this.f13416b;
        If.k.b bVar = kVar.f13115b;
        If.k.b bVar2 = new If.k.b();
        if (bVar == null) {
            bVar = bVar2;
        }
        return new C1759oc(model, m9.toModel(bVar));
    }
}
