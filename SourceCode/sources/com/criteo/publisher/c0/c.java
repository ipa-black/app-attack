package com.criteo.publisher.c0;

import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.logging.n;
import com.criteo.publisher.model.o;
import com.criteo.publisher.model.r;
import com.criteo.publisher.model.s;
/* compiled from: LoggingBidLifecycleListener.java */
/* loaded from: classes2.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final g f8691a = h.b(c.class);

    /* renamed from: b  reason: collision with root package name */
    private final n f8692b;

    public c(n nVar) {
        this.f8692b = nVar;
    }

    @Override // com.criteo.publisher.c0.a
    public void a() {
        this.f8691a.a("onSdkInitialized", new Object[0]);
        this.f8692b.a();
    }

    @Override // com.criteo.publisher.c0.a
    public void a(o oVar) {
        this.f8691a.a("onCdbCallStarted: %s", oVar);
    }

    @Override // com.criteo.publisher.c0.a
    public void a(o oVar, r rVar) {
        this.f8691a.a("onCdbCallFinished: %s", rVar);
    }

    @Override // com.criteo.publisher.c0.a
    public void a(o oVar, Exception exc) {
        this.f8691a.a("onCdbCallFailed", exc);
    }

    @Override // com.criteo.publisher.c0.a
    public void a(com.criteo.publisher.model.n nVar, s sVar) {
        this.f8691a.a("onBidConsumed: %s", sVar);
    }

    @Override // com.criteo.publisher.c0.a
    public void a(s sVar) {
        this.f8691a.a("onBidCached: %s", sVar);
    }
}
