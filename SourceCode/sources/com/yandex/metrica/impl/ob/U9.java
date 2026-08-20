package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class U9 implements ProtobufConverter<C1466ci, If.p> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.p fromModel(C1466ci c1466ci) {
        If.p pVar = new If.p();
        pVar.f13155a = c1466ci.f14571a;
        pVar.f13156b = c1466ci.f14572b;
        pVar.f13157c = c1466ci.f14573c;
        pVar.f13158d = c1466ci.f14574d;
        return pVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1466ci toModel(If.p pVar) {
        return new C1466ci(pVar.f13155a, pVar.f13156b, pVar.f13157c, pVar.f13158d);
    }
}
