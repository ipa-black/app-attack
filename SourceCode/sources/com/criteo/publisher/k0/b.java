package com.criteo.publisher.k0;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.h;
import com.criteo.publisher.i;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.p;
import com.criteo.publisher.model.t;
import com.criteo.publisher.model.x;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
/* compiled from: BidRequestSender.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final p f8890a;

    /* renamed from: b  reason: collision with root package name */
    private final x f8891b;

    /* renamed from: c  reason: collision with root package name */
    private final i f8892c;

    /* renamed from: d  reason: collision with root package name */
    private final g f8893d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f8894e;

    /* renamed from: g  reason: collision with root package name */
    private final Object f8896g = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final Map<n, Future<?>> f8895f = new ConcurrentHashMap();

    public b(p pVar, x xVar, i iVar, g gVar, Executor executor) {
        this.f8890a = pVar;
        this.f8891b = xVar;
        this.f8892c = iVar;
        this.f8893d = gVar;
        this.f8894e = executor;
    }

    public void a(t tVar) {
        this.f8894e.execute(new C0249b(this, tVar, null));
    }

    public void b(List<n> list, ContextData contextData, h hVar) {
        ArrayList<n> arrayList = new ArrayList(list);
        synchronized (this.f8896g) {
            arrayList.removeAll(this.f8895f.keySet());
            if (arrayList.isEmpty()) {
                return;
            }
            FutureTask<Void> a2 = a(arrayList, contextData, hVar);
            for (n nVar : arrayList) {
                this.f8895f.put(nVar, a2);
            }
            try {
                this.f8894e.execute(a2);
            } catch (Throwable th) {
                if (a2 != null) {
                    a(arrayList);
                }
                throw th;
            }
        }
    }

    private FutureTask<Void> a(List<n> list, ContextData contextData, h hVar) {
        return new FutureTask<>(new a(new c(this.f8893d, this.f8890a, this.f8892c, list, contextData, hVar), list), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BidRequestSender.java */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f8897a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f8898b;

        a(c cVar, List list) {
            this.f8897a = cVar;
            this.f8898b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f8897a.run();
            } finally {
                b.this.a(this.f8898b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<n> list) {
        synchronized (this.f8896g) {
            this.f8895f.keySet().removeAll(list);
        }
    }

    public void a() {
        synchronized (this.f8896g) {
            for (Future<?> future : this.f8895f.values()) {
                future.cancel(true);
            }
            this.f8895f.clear();
        }
    }

    /* compiled from: BidRequestSender.java */
    /* renamed from: com.criteo.publisher.k0.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class C0249b extends com.criteo.publisher.x {

        /* renamed from: c  reason: collision with root package name */
        private final t f8900c;

        /* synthetic */ C0249b(b bVar, t tVar, a aVar) {
            this(tVar);
        }

        private C0249b(t tVar) {
            this.f8900c = tVar;
        }

        @Override // com.criteo.publisher.x
        public void a() throws IOException {
            this.f8900c.b(b.this.f8893d.a(b.this.f8891b.a()));
        }
    }
}
