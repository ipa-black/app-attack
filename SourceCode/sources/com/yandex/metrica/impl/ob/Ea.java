package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1712mf;
import java.math.BigDecimal;
import kotlin.Pair;
/* loaded from: classes5.dex */
public class Ea implements ProtobufConverter<BigDecimal, C1712mf.e> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1712mf.e fromModel(BigDecimal bigDecimal) {
        Pair a2 = Ol.a(bigDecimal);
        Nl nl = new Nl(((Number) a2.getFirst()).longValue(), ((Number) a2.getSecond()).intValue());
        C1712mf.e eVar = new C1712mf.e();
        eVar.f15167a = nl.b();
        eVar.f15168b = nl.a();
        return eVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1712mf.e eVar = (C1712mf.e) obj;
        throw new UnsupportedOperationException();
    }
}
