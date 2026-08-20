package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1859sg;
import java.util.HashSet;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.ug  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1907ug implements C1859sg.a {

    /* renamed from: a  reason: collision with root package name */
    private final Set<InterfaceC1464cg> f15846a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f15847b;

    /* renamed from: c  reason: collision with root package name */
    private C1489dg f15848c;

    public C1907ug() {
        this(F0.g().m());
    }

    @Override // com.yandex.metrica.impl.ob.C1859sg.a
    public synchronized void a(C1489dg c1489dg) {
        this.f15848c = c1489dg;
        this.f15847b = true;
        for (InterfaceC1464cg interfaceC1464cg : this.f15846a) {
            interfaceC1464cg.a(this.f15848c);
        }
        this.f15846a.clear();
    }

    C1907ug(C1859sg c1859sg) {
        this.f15846a = new HashSet();
        c1859sg.a(new C2003yg(this));
        c1859sg.b();
    }

    public synchronized void a(InterfaceC1464cg interfaceC1464cg) {
        this.f15846a.add(interfaceC1464cg);
        if (this.f15847b) {
            interfaceC1464cg.a(this.f15848c);
            this.f15846a.remove(interfaceC1464cg);
        }
    }
}
