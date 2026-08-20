package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1978xf;
/* renamed from: com.yandex.metrica.impl.ob.a3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1401a3 implements ProtobufConverter<com.yandex.metrica.billing_interface.a, C1978xf.a> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1978xf.a fromModel(com.yandex.metrica.billing_interface.a aVar) {
        int i;
        C1978xf.a aVar2 = new C1978xf.a();
        int ordinal = aVar.f12477a.ordinal();
        if (ordinal != 0) {
            i = 1;
            if (ordinal == 1) {
                i = 3;
            }
        } else {
            i = 2;
        }
        aVar2.f16042a = i;
        aVar2.f16043b = aVar.f12478b;
        aVar2.f16044c = aVar.f12479c;
        aVar2.f16045d = aVar.f12480d;
        aVar2.f16046e = aVar.f12481e;
        return aVar2;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public com.yandex.metrica.billing_interface.a toModel(C1978xf.a aVar) {
        com.yandex.metrica.billing_interface.e eVar;
        int i = aVar.f16042a;
        if (i == 2) {
            eVar = com.yandex.metrica.billing_interface.e.INAPP;
        } else if (i != 3) {
            eVar = com.yandex.metrica.billing_interface.e.UNKNOWN;
        } else {
            eVar = com.yandex.metrica.billing_interface.e.SUBS;
        }
        return new com.yandex.metrica.billing_interface.a(eVar, aVar.f16043b, aVar.f16044c, aVar.f16045d, aVar.f16046e);
    }
}
