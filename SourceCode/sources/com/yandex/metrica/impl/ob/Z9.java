package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class Z9 implements ProtobufConverter<C1885ti, If.s> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1885ti toModel(If.s sVar) {
        return new C1885ti(sVar.f13168a);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        If.s sVar = new If.s();
        sVar.f13168a = ((C1885ti) obj).f15780a;
        return sVar;
    }
}
