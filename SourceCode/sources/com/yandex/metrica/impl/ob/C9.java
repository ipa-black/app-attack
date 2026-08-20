package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class C9 implements ProtobufConverter<Uh, If.h> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.h fromModel(Uh uh) {
        If.h hVar = new If.h();
        hVar.f13099a = uh.c();
        hVar.f13100b = uh.b();
        hVar.f13101c = uh.a();
        hVar.f13103e = uh.e();
        hVar.f13102d = uh.d();
        return hVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Uh toModel(If.h hVar) {
        String str = hVar.f13099a;
        Intrinsics.checkNotNullExpressionValue(str, "nano.url");
        return new Uh(str, hVar.f13100b, hVar.f13101c, hVar.f13102d, hVar.f13103e);
    }
}
