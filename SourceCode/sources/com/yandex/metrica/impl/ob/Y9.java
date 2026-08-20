package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public final class Y9 implements ProtobufConverter<C1861si, If.r> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1861si toModel(If.r rVar) {
        return new C1861si(rVar.f13167a);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        If.r rVar = new If.r();
        rVar.f13167a = ((C1861si) obj).a();
        return rVar;
    }
}
