package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public final class B9 implements ProtobufConverter<C1939w0, If.g> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1939w0 toModel(If.g gVar) {
        return new C1939w0(gVar.f13098a);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        If.g gVar = new If.g();
        gVar.f13098a = ((C1939w0) obj).a();
        return gVar;
    }
}
