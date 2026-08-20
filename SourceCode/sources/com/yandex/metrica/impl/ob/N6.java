package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
/* loaded from: classes5.dex */
public class N6 implements Converter<H6, byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final O6<H6> f13522a;

    public N6() {
        this(new O6(new X6()));
    }

    public byte[] a(H6 h6) {
        return this.f13522a.a(h6);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        return this.f13522a.a((H6) obj);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        byte[] bArr = (byte[]) obj;
        throw new UnsupportedOperationException();
    }

    N6(O6<H6> o6) {
        this.f13522a = o6;
    }
}
