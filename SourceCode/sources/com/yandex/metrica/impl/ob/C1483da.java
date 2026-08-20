package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.da  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1483da implements ProtobufConverter<C1960wl, If.w> {

    /* renamed from: a  reason: collision with root package name */
    private final C1433ba f14586a;

    public C1483da() {
        this(new C1433ba());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.w fromModel(C1960wl c1960wl) {
        If.w wVar = new If.w();
        wVar.f13181a = c1960wl.f15998a;
        wVar.f13182b = c1960wl.f15999b;
        wVar.f13183c = c1960wl.f16000c;
        wVar.f13184d = c1960wl.f16001d;
        wVar.f13185e = c1960wl.f16002e;
        wVar.f13186f = c1960wl.f16003f;
        wVar.f13187g = c1960wl.f16004g;
        wVar.f13188h = this.f14586a.fromModel(c1960wl.f16005h);
        return wVar;
    }

    C1483da(C1433ba c1433ba) {
        this.f14586a = c1433ba;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1960wl toModel(If.w wVar) {
        return new C1960wl(wVar.f13181a, wVar.f13182b, wVar.f13183c, wVar.f13184d, wVar.f13185e, wVar.f13186f, wVar.f13187g, this.f14586a.toModel(wVar.f13188h));
    }
}
