package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class J9 implements ProtobufConverter<Zh, If.j> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Zh toModel(If.j jVar) {
        return new Zh(jVar.f13112a);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        If.j jVar = new If.j();
        jVar.f13112a = ((Zh) obj).f14358a;
        return jVar;
    }
}
