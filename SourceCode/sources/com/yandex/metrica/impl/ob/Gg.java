package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1549g1;
import com.yandex.metrica.impl.ob.Dg;
import com.yandex.metrica.impl.ob.Eg;
import com.yandex.metrica.impl.ob.Eg.d;
/* loaded from: classes5.dex */
public abstract class Gg<T extends Eg, IA, A extends Dg<IA, A>, L extends Eg.d<T, Eg.c<A>>> implements C1549g1.a {

    /* renamed from: a  reason: collision with root package name */
    private T f12985a;

    /* renamed from: b  reason: collision with root package name */
    private L f12986b;

    /* renamed from: c  reason: collision with root package name */
    private Eg.c<A> f12987c;

    public Gg(L l, C1790pi c1790pi, A a2) {
        this.f12986b = l;
        C1549g1.a(F0.g().e()).a(this);
        a((Eg.c) new Eg.c<>(c1790pi, a2));
    }

    @Override // com.yandex.metrica.impl.ob.C1549g1.a
    public void a() {
        synchronized (this) {
            this.f12985a = null;
        }
    }

    public synchronized T b() {
        if (this.f12985a == null) {
            this.f12985a = (T) this.f12986b.a(this.f12987c);
        }
        return this.f12985a;
    }

    public synchronized A c() {
        return this.f12987c.f12891b;
    }

    public synchronized C1790pi d() {
        return this.f12987c.f12890a;
    }

    public synchronized void e() {
        this.f12985a = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void a(Eg.c<A> cVar) {
        this.f12987c = cVar;
    }

    public synchronized void a(IA ia) {
        if (!this.f12987c.f12891b.b(ia)) {
            synchronized (this) {
                Eg.c<A> cVar = this.f12987c;
                Eg.c<A> cVar2 = new Eg.c<>(cVar.f12890a, cVar.f12891b.a(ia));
                synchronized (this) {
                    this.f12987c = cVar2;
                }
            }
            synchronized (this) {
                this.f12985a = null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(com.yandex.metrica.impl.ob.C1790pi r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.yandex.metrica.impl.ob.Eg$c r0 = new com.yandex.metrica.impl.ob.Eg$c     // Catch: java.lang.Throwable -> L22
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L22
            com.yandex.metrica.impl.ob.Eg$c<A extends com.yandex.metrica.impl.ob.Dg<IA, A>> r1 = r2.f12987c     // Catch: java.lang.Throwable -> L1f
            A r1 = r1.f12891b     // Catch: java.lang.Throwable -> L1f
            com.yandex.metrica.impl.ob.Dg r1 = (com.yandex.metrica.impl.ob.Dg) r1     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            r0.<init>(r3, r1)     // Catch: java.lang.Throwable -> L22
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L22
            r2.f12987c = r0     // Catch: java.lang.Throwable -> L1c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            monitor-enter(r2)     // Catch: java.lang.Throwable -> L22
            r3 = 0
            r2.f12985a = r3     // Catch: java.lang.Throwable -> L19
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            monitor-exit(r2)
            return
        L19:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            throw r3     // Catch: java.lang.Throwable -> L22
        L1c:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            throw r3     // Catch: java.lang.Throwable -> L22
        L1f:
            r3 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L22
            throw r3     // Catch: java.lang.Throwable -> L22
        L22:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Gg.a(com.yandex.metrica.impl.ob.pi):void");
    }
}
