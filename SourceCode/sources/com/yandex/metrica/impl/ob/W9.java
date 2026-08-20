package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class W9 implements ProtobufConverter<C1491di, If.q> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.q fromModel(C1491di c1491di) {
        If.q qVar = new If.q();
        qVar.f13159a = c1491di.f14616a;
        qVar.f13160b = c1491di.f14617b;
        qVar.f13162d = C1422b.a(c1491di.f14618c);
        qVar.f13161c = C1422b.a(c1491di.f14619d);
        qVar.f13163e = c1491di.f14620e;
        qVar.f13164f = c1491di.f14621f;
        qVar.f13165g = c1491di.f14622g;
        qVar.f13166h = c1491di.f14623h;
        qVar.i = c1491di.i;
        qVar.j = c1491di.j;
        return qVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1491di toModel(If.q qVar) {
        return new C1491di(qVar.f13159a, qVar.f13160b, C1422b.a(qVar.f13162d), C1422b.a(qVar.f13161c), qVar.f13163e, qVar.f13164f, qVar.f13165g, qVar.f13166h, qVar.i, qVar.j);
    }
}
