package com.criteo.publisher.f0;

import com.criteo.publisher.f0.l;
import com.criteo.publisher.f0.n;
import com.criteo.publisher.f0.r;
import java.io.InterruptedIOException;
import java.util.concurrent.Executor;
/* compiled from: CsmBidLifecycleListener.java */
/* loaded from: classes2.dex */
public class l implements com.criteo.publisher.c0.a {

    /* renamed from: a  reason: collision with root package name */
    private final r f8792a;

    /* renamed from: b  reason: collision with root package name */
    private final x f8793b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.i f8794c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.model.t f8795d;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.l0.a f8796e;

    /* renamed from: f  reason: collision with root package name */
    private final Executor f8797f;

    public l(r rVar, x xVar, com.criteo.publisher.i iVar, com.criteo.publisher.model.t tVar, com.criteo.publisher.l0.a aVar, Executor executor) {
        this.f8792a = rVar;
        this.f8793b = xVar;
        this.f8794c = iVar;
        this.f8795d = tVar;
        this.f8796e = aVar;
        this.f8797f = executor;
    }

    @Override // com.criteo.publisher.c0.a
    public void a() {
        if (b()) {
            return;
        }
        this.f8797f.execute(new a());
    }

    /* compiled from: CsmBidLifecycleListener.java */
    /* loaded from: classes2.dex */
    class a extends com.criteo.publisher.x {
        a() {
        }

        @Override // com.criteo.publisher.x
        public void a() {
            l.this.f8793b.a(l.this.f8792a);
        }
    }

    @Override // com.criteo.publisher.c0.a
    public void a(com.criteo.publisher.model.o oVar) {
        if (b()) {
            return;
        }
        this.f8797f.execute(new b(oVar));
    }

    /* compiled from: CsmBidLifecycleListener.java */
    /* loaded from: classes2.dex */
    class b extends com.criteo.publisher.x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.criteo.publisher.model.o f8799c;

        b(com.criteo.publisher.model.o oVar) {
            this.f8799c = oVar;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            final long a2 = l.this.f8794c.a();
            l lVar = l.this;
            final com.criteo.publisher.model.o oVar = this.f8799c;
            lVar.a(oVar, new r.a() { // from class: com.criteo.publisher.f0.l$b$$ExternalSyntheticLambda0
                @Override // com.criteo.publisher.f0.r.a
                public final void a(n.a aVar) {
                    l.b.a(com.criteo.publisher.model.o.this, a2, aVar);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(com.criteo.publisher.model.o oVar, long j, n.a aVar) {
            aVar.b(oVar.b());
            aVar.b(Long.valueOf(j));
            aVar.a(Integer.valueOf(oVar.c()));
        }
    }

    @Override // com.criteo.publisher.c0.a
    public void a(com.criteo.publisher.model.o oVar, com.criteo.publisher.model.r rVar) {
        if (b()) {
            return;
        }
        this.f8797f.execute(new c(oVar, rVar));
    }

    /* compiled from: CsmBidLifecycleListener.java */
    /* loaded from: classes2.dex */
    class c extends com.criteo.publisher.x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.criteo.publisher.model.o f8801c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.criteo.publisher.model.r f8802d;

        c(com.criteo.publisher.model.o oVar, com.criteo.publisher.model.r rVar) {
            this.f8801c = oVar;
            this.f8802d = rVar;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            final long a2 = l.this.f8794c.a();
            for (com.criteo.publisher.model.q qVar : this.f8801c.f()) {
                String a3 = qVar.a();
                final com.criteo.publisher.model.s a4 = this.f8802d.a(a3);
                boolean z = a4 == null;
                boolean z2 = (a4 == null || a4.o()) ? false : true;
                final boolean z3 = z;
                final boolean z4 = z2;
                l.this.f8792a.a(a3, new r.a() { // from class: com.criteo.publisher.f0.l$c$$ExternalSyntheticLambda0
                    @Override // com.criteo.publisher.f0.r.a
                    public final void a(n.a aVar) {
                        l.c.a(z3, a2, z4, a4, aVar);
                    }
                });
                if (z || z2) {
                    l.this.f8793b.a(l.this.f8792a, a3);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(boolean z, long j, boolean z2, com.criteo.publisher.model.s sVar, n.a aVar) {
            if (z) {
                aVar.a(Long.valueOf(j));
                aVar.c(true);
            } else if (z2) {
                aVar.c(true);
            } else {
                aVar.a(Long.valueOf(j));
                aVar.b(sVar.l());
            }
        }
    }

    @Override // com.criteo.publisher.c0.a
    public void a(com.criteo.publisher.model.o oVar, Exception exc) {
        if (b()) {
            return;
        }
        this.f8797f.execute(new d(exc, oVar));
    }

    /* compiled from: CsmBidLifecycleListener.java */
    /* loaded from: classes2.dex */
    class d extends com.criteo.publisher.x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Exception f8804c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.criteo.publisher.model.o f8805d;

        d(Exception exc, com.criteo.publisher.model.o oVar) {
            this.f8804c = exc;
            this.f8805d = oVar;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            if (this.f8804c instanceof InterruptedIOException) {
                l.this.c(this.f8805d);
            } else {
                l.this.b(this.f8805d);
            }
            for (com.criteo.publisher.model.q qVar : this.f8805d.f()) {
                l.this.f8793b.a(l.this.f8792a, qVar.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.criteo.publisher.model.o oVar) {
        a(oVar, new r.a() { // from class: com.criteo.publisher.f0.l$$ExternalSyntheticLambda1
            @Override // com.criteo.publisher.f0.r.a
            public final void a(n.a aVar) {
                aVar.c(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.criteo.publisher.model.o oVar) {
        a(oVar, new r.a() { // from class: com.criteo.publisher.f0.l$$ExternalSyntheticLambda0
            @Override // com.criteo.publisher.f0.r.a
            public final void a(n.a aVar) {
                l.b(aVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(n.a aVar) {
        aVar.b(true);
        aVar.c(true);
    }

    @Override // com.criteo.publisher.c0.a
    public void a(com.criteo.publisher.model.n nVar, com.criteo.publisher.model.s sVar) {
        if (b()) {
            return;
        }
        this.f8797f.execute(new e(sVar));
    }

    /* compiled from: CsmBidLifecycleListener.java */
    /* loaded from: classes2.dex */
    class e extends com.criteo.publisher.x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.criteo.publisher.model.s f8807c;

        e(com.criteo.publisher.model.s sVar) {
            this.f8807c = sVar;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            String f2 = this.f8807c.f();
            if (f2 == null) {
                return;
            }
            final boolean z = !this.f8807c.a(l.this.f8794c);
            final long a2 = l.this.f8794c.a();
            l.this.f8792a.a(f2, new r.a() { // from class: com.criteo.publisher.f0.l$e$$ExternalSyntheticLambda0
                @Override // com.criteo.publisher.f0.r.a
                public final void a(n.a aVar) {
                    l.e.a(z, a2, aVar);
                }
            });
            l.this.f8793b.a(l.this.f8792a, f2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(boolean z, long j, n.a aVar) {
            if (z) {
                aVar.c(Long.valueOf(j));
            }
            aVar.c(true);
        }
    }

    @Override // com.criteo.publisher.c0.a
    public void a(com.criteo.publisher.model.s sVar) {
        if (b()) {
            return;
        }
        this.f8797f.execute(new f(sVar));
    }

    /* compiled from: CsmBidLifecycleListener.java */
    /* loaded from: classes2.dex */
    class f extends com.criteo.publisher.x {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.criteo.publisher.model.s f8809c;

        f(com.criteo.publisher.model.s sVar) {
            this.f8809c = sVar;
        }

        @Override // com.criteo.publisher.x
        public void a() {
            String f2 = this.f8809c.f();
            if (f2 != null && this.f8809c.o()) {
                l.this.f8792a.a(f2, new r.a() { // from class: com.criteo.publisher.f0.l$f$$ExternalSyntheticLambda0
                    @Override // com.criteo.publisher.f0.r.a
                    public final void a(n.a aVar) {
                        aVar.a(true);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.criteo.publisher.model.o oVar, r.a aVar) {
        for (com.criteo.publisher.model.q qVar : oVar.f()) {
            this.f8792a.a(qVar.a(), aVar);
        }
    }

    private boolean b() {
        return (this.f8795d.g() && this.f8796e.b()) ? false : true;
    }
}
