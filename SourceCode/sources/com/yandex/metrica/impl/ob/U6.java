package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes5.dex */
public class U6 implements ProtobufConverter<D6, C1637jf> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1637jf fromModel(D6 d6) {
        C1637jf c1637jf = new C1637jf();
        String a2 = d6.a();
        String str = c1637jf.f15006a;
        if (a2 == null) {
            a2 = str;
        }
        c1637jf.f15006a = a2;
        String c2 = d6.c();
        String str2 = c1637jf.f15007b;
        if (c2 == null) {
            c2 = str2;
        }
        c1637jf.f15007b = c2;
        Integer d2 = d6.d();
        Integer valueOf = Integer.valueOf(c1637jf.f15008c);
        if (d2 == null) {
            d2 = valueOf;
        }
        c1637jf.f15008c = d2.intValue();
        Integer b2 = d6.b();
        Integer valueOf2 = Integer.valueOf(c1637jf.f15011f);
        if (b2 == null) {
            b2 = valueOf2;
        }
        c1637jf.f15011f = b2.intValue();
        String e2 = d6.e();
        String str3 = c1637jf.f15009d;
        if (e2 == null) {
            e2 = str3;
        }
        c1637jf.f15009d = e2;
        Boolean f2 = d6.f();
        Boolean valueOf3 = Boolean.valueOf(c1637jf.f15010e);
        if (f2 == null) {
            f2 = valueOf3;
        }
        c1637jf.f15010e = f2.booleanValue();
        return c1637jf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1637jf c1637jf = (C1637jf) obj;
        throw new UnsupportedOperationException();
    }
}
