package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class F9 implements ProtobufConverter<Wb, If.k.a.C0349a.C0350a> {
    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Wb wb = (Wb) obj;
        If.k.a.C0349a.C0350a c0350a = new If.k.a.C0349a.C0350a();
        c0350a.f13127a = wb.f14193a;
        c0350a.f13128b = wb.f14194b;
        return c0350a;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        If.k.a.C0349a.C0350a c0350a = (If.k.a.C0349a.C0350a) obj;
        return new Wb(c0350a.f13127a, c0350a.f13128b);
    }
}
