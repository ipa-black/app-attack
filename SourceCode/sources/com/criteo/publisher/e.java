package com.criteo.publisher;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.r;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: BidManager.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.d0.a f8714b;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.model.t f8717e;

    /* renamed from: f  reason: collision with root package name */
    private final i f8718f;

    /* renamed from: g  reason: collision with root package name */
    private final com.criteo.publisher.model.g f8719g;

    /* renamed from: h  reason: collision with root package name */
    private final com.criteo.publisher.k0.b f8720h;
    private final com.criteo.publisher.k0.e i;
    private final com.criteo.publisher.c0.a j;
    private final com.criteo.publisher.f0.w k;
    private final com.criteo.publisher.logging.n l;
    private final com.criteo.publisher.l0.a m;

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f8713a = com.criteo.publisher.logging.h.b(getClass());

    /* renamed from: c  reason: collision with root package name */
    private final Object f8715c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicLong f8716d = new AtomicLong(0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(com.criteo.publisher.d0.a aVar, com.criteo.publisher.model.t tVar, i iVar, com.criteo.publisher.model.g gVar, com.criteo.publisher.k0.b bVar, com.criteo.publisher.k0.e eVar, com.criteo.publisher.c0.a aVar2, com.criteo.publisher.f0.w wVar, com.criteo.publisher.logging.n nVar, com.criteo.publisher.l0.a aVar3) {
        this.f8714b = aVar;
        this.f8717e = tVar;
        this.f8718f = iVar;
        this.f8719g = gVar;
        this.f8720h = bVar;
        this.i = eVar;
        this.j = aVar2;
        this.k = wVar;
        this.l = nVar;
        this.m = aVar3;
    }

    public void a(AdUnit adUnit, ContextData contextData, d dVar) {
        if (adUnit == null) {
            dVar.a();
        } else if (this.f8717e.i()) {
            b(adUnit, contextData, dVar);
        } else {
            com.criteo.publisher.model.s a2 = a(adUnit, contextData);
            if (a2 != null) {
                dVar.a(a2);
            } else {
                dVar.a();
            }
        }
    }

    com.criteo.publisher.model.s a(AdUnit adUnit, ContextData contextData) {
        com.criteo.publisher.model.n a2;
        com.criteo.publisher.model.s a3;
        if (b() || (a2 = a(adUnit)) == null) {
            return null;
        }
        synchronized (this.f8715c) {
            if (!c(a2)) {
                a(a2, contextData);
            }
            a3 = a(a2);
        }
        return a3;
    }

    private boolean c(com.criteo.publisher.model.n nVar) {
        boolean c2;
        if (a()) {
            return true;
        }
        synchronized (this.f8715c) {
            c2 = c(this.f8714b.a(nVar));
        }
        return c2;
    }

    private void b(com.criteo.publisher.model.n nVar) {
        synchronized (this.f8715c) {
            com.criteo.publisher.model.s a2 = this.f8714b.a(nVar);
            if (a2 != null && b(a2)) {
                this.f8714b.b(nVar);
                this.j.a(nVar, a2);
            }
        }
    }

    private com.criteo.publisher.model.s a(com.criteo.publisher.model.n nVar) {
        synchronized (this.f8715c) {
            com.criteo.publisher.model.s a2 = this.f8714b.a(nVar);
            if (a2 != null) {
                boolean c2 = c(a2);
                boolean b2 = b(a2);
                if (!c2) {
                    this.f8714b.b(nVar);
                    this.j.a(nVar, a2);
                }
                if (!c2 && !b2) {
                    return a2;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.criteo.publisher.model.n nVar, d dVar) {
        com.criteo.publisher.model.s a2 = a(nVar);
        if (a2 != null) {
            dVar.a(a2);
        } else {
            dVar.a();
        }
    }

    private void a(com.criteo.publisher.model.n nVar, ContextData contextData) {
        a(Collections.singletonList(nVar), contextData);
    }

    void b(AdUnit adUnit, ContextData contextData, d dVar) {
        if (b()) {
            dVar.a();
            return;
        }
        com.criteo.publisher.model.n a2 = a(adUnit);
        if (a2 == null) {
            dVar.a();
            return;
        }
        synchronized (this.f8715c) {
            b(a2);
            if (c(a2)) {
                a(a2, dVar);
            } else {
                this.i.a(a2, contextData, new w(dVar, this.j, this, a2, this.m));
            }
            this.k.a();
            this.l.a();
        }
    }

    private void a(List<com.criteo.publisher.model.n> list, ContextData contextData) {
        if (b()) {
            return;
        }
        this.f8720h.b(list, contextData, new a());
        this.k.a();
        this.l.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(List<com.criteo.publisher.model.s> list) {
        synchronized (this.f8715c) {
            for (com.criteo.publisher.model.s sVar : list) {
                com.criteo.publisher.d0.a aVar = this.f8714b;
                if (!c(aVar.a(aVar.b(sVar))) && sVar.o()) {
                    if (a(sVar) > 0.0d && sVar.j() == 0) {
                        sVar.a(900);
                    }
                    this.f8714b.a(sVar);
                    this.j.a(sVar);
                }
            }
        }
    }

    com.criteo.publisher.model.n a(AdUnit adUnit) {
        return this.f8719g.b(adUnit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (i > 0) {
            this.f8713a.a(f.a(i));
            this.f8716d.set(this.f8718f.a() + (i * 1000));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(com.criteo.publisher.model.s sVar) {
        return sVar != null && sVar.j() > 0 && a(sVar) == 0.0d && !b(sVar);
    }

    private boolean b(com.criteo.publisher.model.s sVar) {
        return sVar.a(this.f8718f);
    }

    boolean a() {
        return this.f8716d.get() > this.f8718f.a();
    }

    public void c() {
        this.f8720h.a();
    }

    public void a(List<AdUnit> list) {
        this.f8720h.a(this.f8717e);
        if (this.f8717e.j()) {
            for (List<com.criteo.publisher.model.n> list2 : this.f8719g.a(list)) {
                a(list2, new ContextData());
            }
        }
    }

    private boolean b() {
        return this.f8717e.h();
    }

    private double a(com.criteo.publisher.model.s sVar) {
        if (sVar.b() == null) {
            return 0.0d;
        }
        return sVar.b().doubleValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BidManager.java */
    /* loaded from: classes2.dex */
    public class a extends h {
        public a() {
            super(e.this.j, e.this, e.this.m);
        }

        @Override // com.criteo.publisher.h
        public void a(com.criteo.publisher.model.o oVar, r rVar) {
            e.this.b(rVar.b());
            super.a(oVar, rVar);
        }
    }
}
