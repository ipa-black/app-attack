package com.yandex.metrica.impl.ob;

import android.location.Location;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Mc {

    /* renamed from: a  reason: collision with root package name */
    private final Bc f13480a;

    /* renamed from: b  reason: collision with root package name */
    private final C1585hc f13481b;

    /* renamed from: c  reason: collision with root package name */
    private final Sc f13482c;

    /* renamed from: d  reason: collision with root package name */
    private final Rb f13483d;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Mc(com.yandex.metrica.impl.ob.Nc r10) {
        /*
            r9 = this;
            com.yandex.metrica.impl.ob.Oc r0 = new com.yandex.metrica.impl.ob.Oc
            com.yandex.metrica.impl.ob.Sb r1 = r10.f13534a
            android.content.Context r1 = r1.f13857a
            r0.<init>(r1)
            com.yandex.metrica.impl.ob.Sc r1 = new com.yandex.metrica.impl.ob.Sc
            com.yandex.metrica.impl.ob.Sb r2 = r10.f13534a
            android.content.Context r3 = r2.f13857a
            com.yandex.metrica.impl.ob.pi r4 = r10.f13535b
            com.yandex.metrica.impl.ob.mc r5 = r10.f13536c
            com.yandex.metrica.impl.ob.U7 r6 = r10.f13537d
            com.yandex.metrica.impl.ob.T7 r7 = r10.f13538e
            com.yandex.metrica.core.api.executors.IHandlerExecutor r8 = r2.f13858b
            r2 = r1
            r2.<init>(r3, r4, r5, r6, r7, r8)
            com.yandex.metrica.impl.ob.Rb r2 = new com.yandex.metrica.impl.ob.Rb
            com.yandex.metrica.impl.ob.mc r3 = r10.f13536c
            com.yandex.metrica.impl.ob.U7 r4 = r10.f13537d
            com.yandex.metrica.impl.ob.T7 r5 = r10.f13538e
            r2.<init>(r3, r4, r5)
            r9.<init>(r10, r0, r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Mc.<init>(com.yandex.metrica.impl.ob.Nc):void");
    }

    public void a() {
        this.f13482c.a();
    }

    public Location b() {
        return this.f13480a.b();
    }

    public void c() {
        this.f13480a.a();
        this.f13481b.b();
    }

    public void d() {
        this.f13480a.c();
        this.f13481b.d();
    }

    public void e() {
        this.f13480a.d();
        this.f13481b.e();
    }

    private Mc(Nc nc, Oc oc, Sc sc, Rb rb) {
        this(nc, oc, Cc.a(nc, sc, rb, oc.a()), sc, rb);
    }

    public void a(C1790pi c1790pi) {
        this.f13482c.a(c1790pi);
        this.f13480a.a(c1790pi);
    }

    public void a(C1709mc c1709mc) {
        this.f13482c.a(c1709mc);
        this.f13483d.a(c1709mc);
        this.f13480a.a(c1709mc);
        this.f13481b.a(c1709mc);
    }

    private Mc(Nc nc, Oc oc, Cc cc, Sc sc, Rb rb) {
        this(nc, oc, cc, new Pc(nc.f13534a.f13857a, nc.f13536c, sc, rb, nc.f13535b.d()), sc, rb);
    }

    private Mc(Nc nc, Oc oc, Cc cc, Pc pc, Sc sc, Rb rb) {
        this(nc, new Bc(cc, pc), new C1585hc(C1610ic.a(nc, sc, rb, oc.c(), oc.b())), sc, rb);
    }

    Mc(Nc nc, Bc bc, C1585hc c1585hc, Sc sc, Rb rb) {
        this.f13480a = bc;
        this.f13481b = c1585hc;
        this.f13482c = sc;
        this.f13483d = rb;
    }
}
