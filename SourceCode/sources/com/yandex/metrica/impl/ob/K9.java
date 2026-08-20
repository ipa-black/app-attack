package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class K9 implements ProtobufConverter<C1709mc, If.k.a> {

    /* renamed from: a  reason: collision with root package name */
    private final G9 f13360a;

    /* renamed from: b  reason: collision with root package name */
    private final I9 f13361b;

    public K9() {
        this(new G9(), new I9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.a fromModel(C1709mc c1709mc) {
        If.k.a aVar = new If.k.a();
        aVar.f13116a = c1709mc.f15143a;
        aVar.f13117b = c1709mc.f15144b;
        aVar.f13118c = c1709mc.f15145c;
        aVar.f13119d = c1709mc.f15146d;
        aVar.f13120e = c1709mc.f15147e;
        aVar.f13121f = c1709mc.f15148f;
        aVar.f13122g = c1709mc.f15149g;
        aVar.j = c1709mc.f15150h;
        aVar.f13123h = c1709mc.i;
        aVar.i = c1709mc.j;
        aVar.p = c1709mc.k;
        aVar.q = c1709mc.l;
        Xb xb = c1709mc.m;
        if (xb != null) {
            aVar.k = this.f13360a.fromModel(xb);
        }
        Xb xb2 = c1709mc.n;
        if (xb2 != null) {
            aVar.l = this.f13360a.fromModel(xb2);
        }
        Xb xb3 = c1709mc.o;
        if (xb3 != null) {
            aVar.m = this.f13360a.fromModel(xb3);
        }
        Xb xb4 = c1709mc.p;
        if (xb4 != null) {
            aVar.n = this.f13360a.fromModel(xb4);
        }
        C1460cc c1460cc = c1709mc.q;
        if (c1460cc != null) {
            aVar.o = this.f13361b.fromModel(c1460cc);
        }
        return aVar;
    }

    K9(G9 g9, I9 i9) {
        this.f13360a = g9;
        this.f13361b = i9;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1709mc toModel(If.k.a aVar) {
        If.k.a.C0349a c0349a = aVar.k;
        Xb model = c0349a != null ? this.f13360a.toModel(c0349a) : null;
        If.k.a.C0349a c0349a2 = aVar.l;
        Xb model2 = c0349a2 != null ? this.f13360a.toModel(c0349a2) : null;
        If.k.a.C0349a c0349a3 = aVar.m;
        Xb model3 = c0349a3 != null ? this.f13360a.toModel(c0349a3) : null;
        If.k.a.C0349a c0349a4 = aVar.n;
        Xb model4 = c0349a4 != null ? this.f13360a.toModel(c0349a4) : null;
        If.k.a.b bVar = aVar.o;
        return new C1709mc(aVar.f13116a, aVar.f13117b, aVar.f13118c, aVar.f13119d, aVar.f13120e, aVar.f13121f, aVar.f13122g, aVar.j, aVar.f13123h, aVar.i, aVar.p, aVar.q, model, model2, model3, model4, bVar != null ? this.f13361b.toModel(bVar) : null);
    }
}
