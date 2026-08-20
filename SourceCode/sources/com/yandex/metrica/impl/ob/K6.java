package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
/* loaded from: classes5.dex */
public class K6 implements ProtobufConverter<C1969x6, C1513ef> {

    /* renamed from: a  reason: collision with root package name */
    private final J6 f13350a;

    /* renamed from: b  reason: collision with root package name */
    private final L6 f13351b;

    public K6() {
        this(new J6(new V6()), new L6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1513ef fromModel(C1969x6 c1969x6) {
        C1513ef c1513ef = new C1513ef();
        c1513ef.f14681a = this.f13350a.fromModel(c1969x6.f16016a);
        String str = c1969x6.f16017b;
        if (str != null) {
            c1513ef.f14682b = str;
        }
        c1513ef.f14683c = this.f13351b.a(c1969x6.f16018c);
        return c1513ef;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1513ef c1513ef = (C1513ef) obj;
        throw new UnsupportedOperationException();
    }

    K6(J6 j6, L6 l6) {
        this.f13350a = j6;
        this.f13351b = l6;
    }
}
