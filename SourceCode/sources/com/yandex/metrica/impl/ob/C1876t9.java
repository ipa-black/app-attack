package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.t9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1876t9 implements ProtobufConverter<C1597i, If.b> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1597i toModel(If.b bVar) {
        return new C1597i(bVar.f13084a, bVar.f13085b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C1597i c1597i = (C1597i) obj;
        If.b bVar = new If.b();
        bVar.f13084a = c1597i.f14885a;
        bVar.f13085b = c1597i.f14886b;
        return bVar;
    }
}
