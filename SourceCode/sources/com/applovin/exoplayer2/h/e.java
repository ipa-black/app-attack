package com.applovin.exoplayer2.h;

import android.os.Handler;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.q;
import com.applovin.exoplayer2.l.ai;
import java.io.IOException;
import java.util.HashMap;
/* loaded from: classes.dex */
public abstract class e<T> extends com.applovin.exoplayer2.h.a {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<T, b<T>> f3026a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private Handler f3027b;

    /* renamed from: c  reason: collision with root package name */
    private com.applovin.exoplayer2.k.aa f3028c;

    /* loaded from: classes.dex */
    private final class a implements com.applovin.exoplayer2.d.g, q {

        /* renamed from: b  reason: collision with root package name */
        private final T f3030b;

        /* renamed from: c  reason: collision with root package name */
        private q.a f3031c;

        /* renamed from: d  reason: collision with root package name */
        private g.a f3032d;

        public a(T t) {
            this.f3031c = e.this.a((p.a) null);
            this.f3032d = e.this.b((p.a) null);
            this.f3030b = t;
        }

        private m a(m mVar) {
            long a2 = e.this.a((e) this.f3030b, mVar.f3083f);
            long a3 = e.this.a((e) this.f3030b, mVar.f3084g);
            return (a2 == mVar.f3083f && a3 == mVar.f3084g) ? mVar : new m(mVar.f3078a, mVar.f3079b, mVar.f3080c, mVar.f3081d, mVar.f3082e, a2, a3);
        }

        private boolean f(int i, p.a aVar) {
            p.a aVar2;
            if (aVar != null) {
                aVar2 = e.this.a((e) this.f3030b, aVar);
                if (aVar2 == null) {
                    return false;
                }
            } else {
                aVar2 = null;
            }
            int a2 = e.this.a((e) this.f3030b, i);
            if (this.f3031c.f3090a != a2 || !ai.a(this.f3031c.f3091b, aVar2)) {
                this.f3031c = e.this.a(a2, aVar2, 0L);
            }
            if (this.f3032d.f2020a == a2 && ai.a(this.f3032d.f2021b, aVar2)) {
                return true;
            }
            this.f3032d = e.this.a(a2, aVar2);
            return true;
        }

        @Override // com.applovin.exoplayer2.d.g
        public void a(int i, p.a aVar) {
            if (f(i, aVar)) {
                this.f3032d.a();
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void a(int i, p.a aVar, int i2) {
            if (f(i, aVar)) {
                this.f3032d.a(i2);
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, p.a aVar, j jVar, m mVar) {
            if (f(i, aVar)) {
                this.f3031c.a(jVar, a(mVar));
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, p.a aVar, j jVar, m mVar, IOException iOException, boolean z) {
            if (f(i, aVar)) {
                this.f3031c.a(jVar, a(mVar), iOException, z);
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void a(int i, p.a aVar, m mVar) {
            if (f(i, aVar)) {
                this.f3031c.a(a(mVar));
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void a(int i, p.a aVar, Exception exc) {
            if (f(i, aVar)) {
                this.f3032d.a(exc);
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void b(int i, p.a aVar) {
            if (f(i, aVar)) {
                this.f3032d.b();
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void b(int i, p.a aVar, j jVar, m mVar) {
            if (f(i, aVar)) {
                this.f3031c.b(jVar, a(mVar));
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void c(int i, p.a aVar) {
            if (f(i, aVar)) {
                this.f3032d.c();
            }
        }

        @Override // com.applovin.exoplayer2.h.q
        public void c(int i, p.a aVar, j jVar, m mVar) {
            if (f(i, aVar)) {
                this.f3031c.c(jVar, a(mVar));
            }
        }

        @Override // com.applovin.exoplayer2.d.g
        public void d(int i, p.a aVar) {
            if (f(i, aVar)) {
                this.f3032d.d();
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class b<T> {

        /* renamed from: a  reason: collision with root package name */
        public final p f3033a;

        /* renamed from: b  reason: collision with root package name */
        public final p.b f3034b;

        /* renamed from: c  reason: collision with root package name */
        public final e<T>.a f3035c;

        public b(p pVar, p.b bVar, e<T>.a aVar) {
            this.f3033a = pVar;
            this.f3034b = bVar;
            this.f3035c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void b(Object obj, p pVar, ba baVar) {
        a((e<T>) obj, pVar, baVar);
    }

    protected int a(T t, int i) {
        return i;
    }

    protected long a(T t, long j) {
        return j;
    }

    protected p.a a(T t, p.a aVar) {
        return aVar;
    }

    @Override // com.applovin.exoplayer2.h.a
    protected void a() {
        for (b<T> bVar : this.f3026a.values()) {
            bVar.f3033a.a(bVar.f3034b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.h.a
    public void a(com.applovin.exoplayer2.k.aa aaVar) {
        this.f3028c = aaVar;
        this.f3027b = ai.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(final T t, p pVar) {
        com.applovin.exoplayer2.l.a.a(!this.f3026a.containsKey(t));
        p.b bVar = new p.b() { // from class: com.applovin.exoplayer2.h.e$$ExternalSyntheticLambda0
            @Override // com.applovin.exoplayer2.h.p.b
            public final void onSourceInfoRefreshed(p pVar2, ba baVar) {
                e.this.b(t, pVar2, baVar);
            }
        };
        a aVar = new a(t);
        this.f3026a.put(t, new b<>(pVar, bVar, aVar));
        pVar.a((Handler) com.applovin.exoplayer2.l.a.b(this.f3027b), (q) aVar);
        pVar.a((Handler) com.applovin.exoplayer2.l.a.b(this.f3027b), (com.applovin.exoplayer2.d.g) aVar);
        pVar.a(bVar, this.f3028c);
        if (d()) {
            return;
        }
        pVar.b(bVar);
    }

    protected abstract void a(T t, p pVar, ba baVar);

    @Override // com.applovin.exoplayer2.h.a
    protected void b() {
        for (b<T> bVar : this.f3026a.values()) {
            bVar.f3033a.b(bVar.f3034b);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.exoplayer2.h.a
    public void c() {
        for (b<T> bVar : this.f3026a.values()) {
            bVar.f3033a.c(bVar.f3034b);
            bVar.f3033a.a((q) bVar.f3035c);
            bVar.f3033a.a((com.applovin.exoplayer2.d.g) bVar.f3035c);
        }
        this.f3026a.clear();
    }

    @Override // com.applovin.exoplayer2.h.p
    public void e() throws IOException {
        for (b<T> bVar : this.f3026a.values()) {
            bVar.f3033a.e();
        }
    }
}
