package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.C1790pi;
import com.yandex.metrica.impl.ob.C1938w;
import com.yandex.metrica.impl.ob.E;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.qc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1808qc implements E.c, C1938w.b {

    /* renamed from: a  reason: collision with root package name */
    private List<C1759oc> f15490a;

    /* renamed from: b  reason: collision with root package name */
    private final E f15491b;

    /* renamed from: c  reason: collision with root package name */
    private final C1927vc f15492c;

    /* renamed from: d  reason: collision with root package name */
    private final C1938w f15493d;

    /* renamed from: e  reason: collision with root package name */
    private volatile C1709mc f15494e;

    /* renamed from: f  reason: collision with root package name */
    private final Set<InterfaceC1734nc> f15495f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f15496g;

    public C1808qc(Context context) {
        this(F0.g().c(), C1927vc.a(context), new C1790pi.b(context), F0.g().b());
    }

    private void d() {
        C1709mc a2 = a();
        if (A2.a(this.f15494e, a2)) {
            return;
        }
        this.f15492c.a(a2);
        this.f15494e = a2;
        C1709mc c1709mc = this.f15494e;
        for (InterfaceC1734nc interfaceC1734nc : this.f15495f) {
            interfaceC1734nc.a(c1709mc);
        }
    }

    public synchronized void a(InterfaceC1734nc interfaceC1734nc) {
        this.f15495f.add(interfaceC1734nc);
    }

    public void b() {
        synchronized (this.f15496g) {
            this.f15491b.a(this);
            this.f15493d.a(this);
        }
    }

    public synchronized void c() {
        d();
    }

    public synchronized void a(C1790pi c1790pi) {
        this.f15490a = c1790pi.w();
        this.f15494e = a();
        this.f15492c.a(c1790pi, this.f15494e);
        C1709mc c1709mc = this.f15494e;
        for (InterfaceC1734nc interfaceC1734nc : this.f15495f) {
            interfaceC1734nc.a(c1709mc);
        }
    }

    C1808qc(E e2, C1927vc c1927vc, C1790pi.b bVar, C1938w c1938w) {
        this.f15495f = new HashSet();
        this.f15496g = new Object();
        this.f15491b = e2;
        this.f15492c = c1927vc;
        this.f15493d = c1938w;
        this.f15490a = bVar.a().w();
    }

    @Override // com.yandex.metrica.impl.ob.C1938w.b
    public synchronized void a(C1938w.a aVar) {
        d();
    }

    @Override // com.yandex.metrica.impl.ob.E.c
    public synchronized void a(E.b.a aVar) {
        d();
    }

    private C1709mc a() {
        C1938w.a c2 = this.f15493d.c();
        E.b.a b2 = this.f15491b.b();
        for (C1759oc c1759oc : this.f15490a) {
            if (c1759oc.f15329b.f12632a.contains(b2) && c1759oc.f15329b.f12633b.contains(c2)) {
                return c1759oc.f15328a;
            }
        }
        return null;
    }
}
