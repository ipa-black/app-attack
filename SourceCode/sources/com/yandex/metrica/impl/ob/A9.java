package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class A9 implements ProtobufConverter<C1829ra, If.f> {

    /* renamed from: a  reason: collision with root package name */
    private final C2020z9 f12627a;

    public A9() {
        this(new C2020z9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.f fromModel(C1829ra c1829ra) {
        If.f fVar = new If.f();
        fVar.f13095a = a(c1829ra.f15625a);
        fVar.f13096b = a(c1829ra.f15626b);
        fVar.f13097c = a(c1829ra.f15627c);
        return fVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        If.f fVar = (If.f) obj;
        return new C1829ra(a(fVar.f13095a), a(fVar.f13096b), a(fVar.f13097c));
    }

    A9(C2020z9 c2020z9) {
        this.f12627a = c2020z9;
    }

    public C1829ra a(If.f fVar) {
        return new C1829ra(a(fVar.f13095a), a(fVar.f13096b), a(fVar.f13097c));
    }

    private If.e a(C1806qa c1806qa) {
        if (c1806qa == null) {
            return null;
        }
        this.f12627a.getClass();
        If.e eVar = new If.e();
        eVar.f13093a = c1806qa.f15486a;
        eVar.f13094b = c1806qa.f15487b;
        return eVar;
    }

    private C1806qa a(If.e eVar) {
        if (eVar == null) {
            return null;
        }
        return this.f12627a.toModel(eVar);
    }
}
