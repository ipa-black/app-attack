package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes5.dex */
class O5 implements ProtobufConverter<N5, Af> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Af fromModel(N5 n5) {
        Af af = new Af();
        af.f12637d = new int[n5.b().size()];
        int i = 0;
        for (Integer num : n5.b()) {
            af.f12637d[i] = num.intValue();
            i++;
        }
        af.f12636c = n5.c();
        af.f12635b = n5.d();
        af.f12634a = n5.e();
        return af;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public N5 toModel(Af af) {
        return new N5(af.f12634a, af.f12635b, af.f12636c, A2.a(af.f12637d));
    }
}
