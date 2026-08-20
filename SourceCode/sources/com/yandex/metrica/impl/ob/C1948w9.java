package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.w9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1948w9 implements ProtobufConverter<Ph, If.c> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.c fromModel(Ph ph) {
        If.c cVar = new If.c();
        cVar.f13086a = ph.f13716a;
        cVar.f13087b = ph.f13717b;
        cVar.f13088c = ph.f13718c;
        cVar.f13089d = ph.f13719d;
        return cVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Ph toModel(If.c cVar) {
        return new Ph(cVar.f13086a, cVar.f13087b, cVar.f13088c, cVar.f13089d);
    }
}
