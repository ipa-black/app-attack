package com.applovin.exoplayer2.i;

import com.applovin.exoplayer2.c.i;
import com.applovin.exoplayer2.common.a.s;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
/* loaded from: classes.dex */
public final class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private final b f3282a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final j f3283b = new j();

    /* renamed from: c  reason: collision with root package name */
    private final Deque<k> f3284c = new ArrayDeque();

    /* renamed from: d  reason: collision with root package name */
    private int f3285d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f3286e;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a implements f {

        /* renamed from: a  reason: collision with root package name */
        private final long f3287a;

        /* renamed from: b  reason: collision with root package name */
        private final s<com.applovin.exoplayer2.i.a> f3288b;

        public a(long j, s<com.applovin.exoplayer2.i.a> sVar) {
            this.f3287a = j;
            this.f3288b = sVar;
        }

        @Override // com.applovin.exoplayer2.i.f
        public int a(long j) {
            return this.f3287a > j ? 0 : -1;
        }

        @Override // com.applovin.exoplayer2.i.f
        public long a(int i) {
            com.applovin.exoplayer2.l.a.a(i == 0);
            return this.f3287a;
        }

        @Override // com.applovin.exoplayer2.i.f
        public List<com.applovin.exoplayer2.i.a> b(long j) {
            return j >= this.f3287a ? this.f3288b : s.g();
        }

        @Override // com.applovin.exoplayer2.i.f
        public int f_() {
            return 1;
        }
    }

    public c() {
        for (int i = 0; i < 2; i++) {
            this.f3284c.addFirst(new e(new i.a() { // from class: com.applovin.exoplayer2.i.c$$ExternalSyntheticLambda0
                @Override // com.applovin.exoplayer2.c.i.a
                public final void releaseOutputBuffer(com.applovin.exoplayer2.c.i iVar) {
                    c.this.a((k) iVar);
                }
            }));
        }
        this.f3285d = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(k kVar) {
        com.applovin.exoplayer2.l.a.b(this.f3284c.size() < 2);
        com.applovin.exoplayer2.l.a.a(!this.f3284c.contains(kVar));
        kVar.a();
        this.f3284c.addFirst(kVar);
    }

    @Override // com.applovin.exoplayer2.i.g
    public void a(long j) {
    }

    @Override // com.applovin.exoplayer2.c.d
    public void a(j jVar) throws h {
        com.applovin.exoplayer2.l.a.b(!this.f3286e);
        com.applovin.exoplayer2.l.a.b(this.f3285d == 1);
        com.applovin.exoplayer2.l.a.a(this.f3283b == jVar);
        this.f3285d = 2;
    }

    @Override // com.applovin.exoplayer2.c.d
    public void c() {
        com.applovin.exoplayer2.l.a.b(!this.f3286e);
        this.f3283b.a();
        this.f3285d = 0;
    }

    @Override // com.applovin.exoplayer2.c.d
    public void d() {
        this.f3286e = true;
    }

    @Override // com.applovin.exoplayer2.c.d
    /* renamed from: e */
    public j a() throws h {
        com.applovin.exoplayer2.l.a.b(!this.f3286e);
        if (this.f3285d != 0) {
            return null;
        }
        this.f3285d = 1;
        return this.f3283b;
    }

    @Override // com.applovin.exoplayer2.c.d
    /* renamed from: f */
    public k b() throws h {
        com.applovin.exoplayer2.l.a.b(!this.f3286e);
        if (this.f3285d != 2 || this.f3284c.isEmpty()) {
            return null;
        }
        k removeFirst = this.f3284c.removeFirst();
        if (this.f3283b.c()) {
            removeFirst.b(4);
        } else {
            removeFirst.a(this.f3283b.f1677d, new a(this.f3283b.f1677d, this.f3282a.a(((ByteBuffer) com.applovin.exoplayer2.l.a.b(this.f3283b.f1675b)).array())), 0L);
        }
        this.f3283b.a();
        this.f3285d = 0;
        return removeFirst;
    }
}
