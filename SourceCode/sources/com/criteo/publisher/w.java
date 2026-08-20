package com.criteo.publisher;

import com.criteo.publisher.c0.a;
import com.criteo.publisher.model.r;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: LiveCdbCallListener.java */
/* loaded from: classes2.dex */
public class w extends h {

    /* renamed from: d  reason: collision with root package name */
    private d f9247d;

    /* renamed from: e  reason: collision with root package name */
    private final e f9248e;

    /* renamed from: f  reason: collision with root package name */
    private final com.criteo.publisher.model.n f9249f;

    /* renamed from: g  reason: collision with root package name */
    private final a f9250g;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicBoolean f9251h;

    public w(d dVar, a aVar, e eVar, com.criteo.publisher.model.n nVar, com.criteo.publisher.l0.a aVar2) {
        super(aVar, eVar, aVar2);
        this.f9251h = new AtomicBoolean(false);
        this.f9247d = dVar;
        this.f9250g = aVar;
        this.f9248e = eVar;
        this.f9249f = nVar;
    }

    @Override // com.criteo.publisher.h
    public void a(com.criteo.publisher.model.o oVar, r rVar) {
        super.a(oVar, rVar);
        if (rVar.b().size() > 1) {
            com.criteo.publisher.n0.o.a((Throwable) new IllegalStateException("During a live request, only one bid will be fetched at a time."));
        }
        if (this.f9251h.compareAndSet(false, true)) {
            if (rVar.b().size() == 1) {
                a(rVar.b().get(0));
            } else {
                this.f9247d.a();
            }
            this.f9247d = null;
            return;
        }
        this.f9248e.b(rVar.b());
    }

    private void a(com.criteo.publisher.model.s sVar) {
        if (this.f9248e.c(sVar)) {
            this.f9248e.b(Collections.singletonList(sVar));
            this.f9247d.a();
        } else if (sVar.o()) {
            this.f9247d.a(sVar);
            this.f9250g.a(this.f9249f, sVar);
        } else {
            this.f9247d.a();
        }
    }

    @Override // com.criteo.publisher.h
    public void a(com.criteo.publisher.model.o oVar, Exception exc) {
        super.a(oVar, exc);
        a();
    }

    public void a() {
        if (this.f9251h.compareAndSet(false, true)) {
            this.f9248e.a(this.f9249f, this.f9247d);
            this.f9247d = null;
        }
    }
}
