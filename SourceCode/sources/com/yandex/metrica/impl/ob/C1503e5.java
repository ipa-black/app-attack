package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.InterfaceC1533fa;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.e5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1503e5 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final Cd f14642b;

    /* renamed from: c  reason: collision with root package name */
    private final ProtobufStateStorage<C1880td> f14643c;

    /* renamed from: d  reason: collision with root package name */
    private final A f14644d;

    /* renamed from: e  reason: collision with root package name */
    private final C1914v f14645e;

    /* renamed from: f  reason: collision with root package name */
    private final C1962x f14646f;

    public C1503e5(L3 l3, Cd cd) {
        this(l3, cd, InterfaceC1533fa.b.a(C1880td.class).a(l3.g()), new A(l3.g()), new C1914v(), new C1962x(l3.g()));
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        C1880td c1880td;
        L3 a2 = a();
        a2.e().toString();
        if (a2.x().k() && a2.A()) {
            C1880td c1880td2 = (C1880td) this.f14643c.read();
            List<Bd> list = c1880td2.f15765a;
            C2010z c2010z = c1880td2.f15766b;
            C2010z a3 = this.f14644d.a();
            List<String> list2 = c1880td2.f15767c;
            List<String> a4 = this.f14646f.a();
            List<Bd> a5 = this.f14642b.a(a().g(), list);
            if (a5 == null && A2.a(c2010z, a3) && C1422b.a(list2, a4)) {
                c1880td = null;
            } else {
                if (a5 != null) {
                    list = a5;
                }
                c1880td = new C1880td(list, a3, a4);
            }
            if (c1880td == null) {
                if (a2.E()) {
                    a2.r().e(C1448c0.a(c1448c0, c1880td2.f15765a, c1880td2.f15766b, this.f14645e, c1880td2.f15767c));
                    return false;
                }
                return false;
            }
            a2.r().e(C1448c0.a(c1448c0, c1880td.f15765a, c1880td.f15766b, this.f14645e, c1880td.f15767c));
            this.f14643c.save(c1880td);
            return false;
        }
        return false;
    }

    C1503e5(L3 l3, Cd cd, ProtobufStateStorage<C1880td> protobufStateStorage, A a2, C1914v c1914v, C1962x c1962x) {
        super(l3);
        this.f14642b = cd;
        this.f14643c = protobufStateStorage;
        this.f14644d = a2;
        this.f14645e = c1914v;
        this.f14646f = c1962x;
    }
}
