package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1954wf;
import com.yandex.metrica.impl.ob.C2010z;
/* renamed from: com.yandex.metrica.impl.ob.u9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1900u9 implements ProtobufConverter<C2010z, C1954wf.a> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1954wf.a fromModel(C2010z c2010z) {
        C1954wf.a aVar = new C1954wf.a();
        C2010z.a aVar2 = c2010z.f16122a;
        if (aVar2 != null) {
            int ordinal = aVar2.ordinal();
            if (ordinal == 0) {
                aVar.f15979a = 1;
            } else if (ordinal == 1) {
                aVar.f15979a = 2;
            } else if (ordinal == 2) {
                aVar.f15979a = 3;
            } else if (ordinal == 3) {
                aVar.f15979a = 4;
            } else if (ordinal == 4) {
                aVar.f15979a = 5;
            }
        }
        Boolean bool = c2010z.f16123b;
        if (bool != null) {
            if (bool.booleanValue()) {
                aVar.f15980b = 1;
            } else {
                aVar.f15980b = 0;
            }
        }
        return aVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C2010z toModel(C1954wf.a aVar) {
        C2010z.a aVar2;
        int i = aVar.f15979a;
        Boolean bool = null;
        if (i == 1) {
            aVar2 = C2010z.a.ACTIVE;
        } else if (i == 2) {
            aVar2 = C2010z.a.WORKING_SET;
        } else if (i == 3) {
            aVar2 = C2010z.a.FREQUENT;
        } else if (i != 4) {
            aVar2 = i != 5 ? null : C2010z.a.RESTRICTED;
        } else {
            aVar2 = C2010z.a.RARE;
        }
        int i2 = aVar.f15980b;
        if (i2 == 0) {
            bool = Boolean.FALSE;
        } else if (i2 == 1) {
            bool = Boolean.TRUE;
        }
        return new C2010z(aVar2, bool);
    }
}
