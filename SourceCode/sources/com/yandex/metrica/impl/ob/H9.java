package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.gpllibrary.a;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class H9 implements ProtobufConverter<C1410ac, If.k.a.b.C0351a> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.a.b.C0351a fromModel(C1410ac c1410ac) {
        If.k.a.b.C0351a c0351a = new If.k.a.b.C0351a();
        c0351a.f13132a = c1410ac.f14409b;
        c0351a.f13133b = c1410ac.f14410c;
        int ordinal = c1410ac.f14408a.ordinal();
        int i = 1;
        if (ordinal != 1) {
            i = 2;
            if (ordinal != 2) {
                i = 3;
                if (ordinal != 3) {
                    i = 0;
                }
            }
        }
        c0351a.f13134c = i;
        return c0351a;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1410ac toModel(If.k.a.b.C0351a c0351a) {
        a.b bVar;
        int i = c0351a.f13134c;
        if (i == 1) {
            bVar = a.b.PRIORITY_LOW_POWER;
        } else if (i == 2) {
            bVar = a.b.PRIORITY_BALANCED_POWER_ACCURACY;
        } else if (i != 3) {
            bVar = a.b.PRIORITY_NO_POWER;
        } else {
            bVar = a.b.PRIORITY_HIGH_ACCURACY;
        }
        return new C1410ac(bVar, c0351a.f13132a, c0351a.f13133b);
    }
}
