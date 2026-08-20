package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class Q9 implements ProtobufConverter<C1416ai, If.n> {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C1416ai c1416ai = (C1416ai) obj;
        If.n nVar = new If.n();
        nVar.f13143a = c1416ai.f14420a;
        nVar.f13144b = c1416ai.f14421b;
        return nVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        If.n nVar = (If.n) obj;
        return new C1416ai(nVar.f13143a, nVar.f13144b);
    }
}
