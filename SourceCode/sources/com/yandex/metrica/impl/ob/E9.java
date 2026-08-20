package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Sh;
/* loaded from: classes5.dex */
public class E9 implements ProtobufConverter<Sh, If.i> {

    /* renamed from: a  reason: collision with root package name */
    private final F1 f12862a;

    public E9() {
        this(new C1690li());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.i fromModel(Sh sh) {
        If.i iVar = new If.i();
        iVar.f13107d = sh.f13888d;
        iVar.f13106c = sh.f13887c;
        iVar.f13105b = sh.f13886b;
        iVar.f13104a = sh.f13885a;
        iVar.j = sh.f13889e;
        iVar.k = sh.f13890f;
        iVar.f13108e = sh.n;
        iVar.f13111h = sh.r;
        iVar.i = sh.s;
        iVar.r = sh.o;
        iVar.f13109f = sh.p;
        iVar.f13110g = sh.q;
        iVar.m = sh.f13892h;
        iVar.l = sh.f13891g;
        iVar.n = sh.i;
        iVar.o = sh.j;
        iVar.p = sh.l;
        iVar.u = sh.m;
        iVar.q = sh.k;
        iVar.s = sh.t;
        iVar.t = sh.u;
        iVar.v = sh.v;
        iVar.w = sh.w;
        iVar.x = this.f12862a.a(sh.x);
        return iVar;
    }

    E9(F1 f1) {
        this.f12862a = f1;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Sh toModel(If.i iVar) {
        return new Sh(new Sh.a().d(iVar.f13104a).p(iVar.i).c(iVar.f13111h).q(iVar.r).w(iVar.f13110g).v(iVar.f13109f).g(iVar.f13108e).f(iVar.f13107d).o(iVar.j).j(iVar.k).n(iVar.f13106c).m(iVar.f13105b).k(iVar.m).l(iVar.l).h(iVar.n).t(iVar.o).s(iVar.p).u(iVar.u).r(iVar.q).a(iVar.s).b(iVar.t).i(iVar.v).e(iVar.w).a(this.f12862a.a(iVar.x)));
    }
}
