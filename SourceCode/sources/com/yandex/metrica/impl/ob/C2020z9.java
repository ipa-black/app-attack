package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.z9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2020z9 implements ProtobufConverter<C1806qa, If.e> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1806qa toModel(If.e eVar) {
        return new C1806qa(eVar.f13093a, eVar.f13094b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C1806qa c1806qa = (C1806qa) obj;
        If.e eVar = new If.e();
        eVar.f13093a = c1806qa.f15486a;
        eVar.f13094b = c1806qa.f15487b;
        return eVar;
    }
}
