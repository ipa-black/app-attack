package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1588hf;
/* loaded from: classes5.dex */
public class M6 implements ProtobufConverter<C2017z6, C1588hf> {

    /* renamed from: a  reason: collision with root package name */
    private final S6 f13472a;

    public M6() {
        this(new S6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1588hf fromModel(C2017z6 c2017z6) {
        C1588hf fromModel = this.f13472a.fromModel(c2017z6.f16148a);
        fromModel.f14860g = 1;
        C1588hf.a aVar = new C1588hf.a();
        fromModel.f14861h = aVar;
        aVar.f14862a = c2017z6.f16149b;
        return fromModel;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1588hf c1588hf = (C1588hf) obj;
        throw new UnsupportedOperationException();
    }

    M6(S6 s6) {
        this.f13472a = s6;
    }
}
