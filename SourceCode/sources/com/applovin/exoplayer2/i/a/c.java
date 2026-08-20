package com.applovin.exoplayer2.i.a;

import com.applovin.exoplayer2.c.i;
import com.applovin.exoplayer2.i.a.c;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.i.g;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.i.j;
import com.applovin.exoplayer2.i.k;
import com.applovin.exoplayer2.l.ai;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayDeque<a> f3221a = new ArrayDeque<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayDeque<k> f3222b;

    /* renamed from: c  reason: collision with root package name */
    private final PriorityQueue<a> f3223c;

    /* renamed from: d  reason: collision with root package name */
    private a f3224d;

    /* renamed from: e  reason: collision with root package name */
    private long f3225e;

    /* renamed from: f  reason: collision with root package name */
    private long f3226f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a extends j implements Comparable<a> {

        /* renamed from: g  reason: collision with root package name */
        private long f3227g;

        private a() {
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(a aVar) {
            if (c() != aVar.c()) {
                return c() ? 1 : -1;
            }
            long j = this.f1677d - aVar.f1677d;
            if (j == 0) {
                j = this.f3227g - aVar.f3227g;
                if (j == 0) {
                    return 0;
                }
            }
            return j > 0 ? 1 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends k {

        /* renamed from: c  reason: collision with root package name */
        private i.a<b> f3228c;

        public b(i.a<b> aVar) {
            this.f3228c = aVar;
        }

        @Override // com.applovin.exoplayer2.c.i
        public final void f() {
            this.f3228c.releaseOutputBuffer(this);
        }
    }

    public c() {
        for (int i = 0; i < 10; i++) {
            this.f3221a.add(new a());
        }
        this.f3222b = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.f3222b.add(new b(new i.a() { // from class: com.applovin.exoplayer2.i.a.c$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.c.i.a
                public final void releaseOutputBuffer(i iVar) {
                    c.this.a((k) ((c.b) iVar));
                }
            }));
        }
        this.f3223c = new PriorityQueue<>();
    }

    private void a(a aVar) {
        aVar.a();
        this.f3221a.add(aVar);
    }

    @Override // com.applovin.exoplayer2.i.g
    public void a(long j) {
        this.f3225e = j;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    protected abstract void a(j jVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(k kVar) {
        kVar.a();
        this.f3222b.add(kVar);
    }

    @Override // com.applovin.exoplayer2.c.d
    /* renamed from: b */
    public void a(j jVar) throws h {
        com.applovin.exoplayer2.l.a.a(jVar == this.f3224d);
        a aVar = (a) jVar;
        if (aVar.b()) {
            a(aVar);
        } else {
            long j = this.f3226f;
            this.f3226f = 1 + j;
            aVar.f3227g = j;
            this.f3223c.add(aVar);
        }
        this.f3224d = null;
    }

    @Override // com.applovin.exoplayer2.c.d
    public void c() {
        this.f3226f = 0L;
        this.f3225e = 0L;
        while (!this.f3223c.isEmpty()) {
            a((a) ai.a(this.f3223c.poll()));
        }
        a aVar = this.f3224d;
        if (aVar != null) {
            a(aVar);
            this.f3224d = null;
        }
    }

    @Override // com.applovin.exoplayer2.c.d
    public void d() {
    }

    @Override // com.applovin.exoplayer2.c.d
    /* renamed from: e */
    public k b() throws h {
        k kVar;
        if (this.f3222b.isEmpty()) {
            return null;
        }
        while (!this.f3223c.isEmpty() && ((a) ai.a(this.f3223c.peek())).f1677d <= this.f3225e) {
            a aVar = (a) ai.a(this.f3223c.poll());
            if (aVar.c()) {
                kVar = (k) ai.a(this.f3222b.pollFirst());
                kVar.b(4);
            } else {
                a((j) aVar);
                if (f()) {
                    f g2 = g();
                    kVar = (k) ai.a(this.f3222b.pollFirst());
                    kVar.a(aVar.f1677d, g2, Long.MAX_VALUE);
                } else {
                    a(aVar);
                }
            }
            a(aVar);
            return kVar;
        }
        return null;
    }

    protected abstract boolean f();

    protected abstract f g();

    @Override // com.applovin.exoplayer2.c.d
    /* renamed from: h */
    public j a() throws h {
        com.applovin.exoplayer2.l.a.b(this.f3224d == null);
        if (this.f3221a.isEmpty()) {
            return null;
        }
        a pollFirst = this.f3221a.pollFirst();
        this.f3224d = pollFirst;
        return pollFirst;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final k j() {
        return this.f3222b.pollFirst();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long k() {
        return this.f3225e;
    }
}
