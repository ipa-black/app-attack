package com.applovin.exoplayer2.e;

import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.io.IOException;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final C0033a f2059a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f2060b;

    /* renamed from: c  reason: collision with root package name */
    protected c f2061c;

    /* renamed from: d  reason: collision with root package name */
    private final int f2062d;

    /* renamed from: com.applovin.exoplayer2.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0033a implements v {

        /* renamed from: a  reason: collision with root package name */
        private final d f2063a;

        /* renamed from: b  reason: collision with root package name */
        private final long f2064b;

        /* renamed from: c  reason: collision with root package name */
        private final long f2065c;

        /* renamed from: d  reason: collision with root package name */
        private final long f2066d;

        /* renamed from: e  reason: collision with root package name */
        private final long f2067e;

        /* renamed from: f  reason: collision with root package name */
        private final long f2068f;

        /* renamed from: g  reason: collision with root package name */
        private final long f2069g;

        public C0033a(d dVar, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f2063a = dVar;
            this.f2064b = j;
            this.f2065c = j2;
            this.f2066d = j3;
            this.f2067e = j4;
            this.f2068f = j5;
            this.f2069g = j6;
        }

        @Override // com.applovin.exoplayer2.e.v
        public v.a a(long j) {
            return new v.a(new w(j, c.a(this.f2063a.timeUsToTargetTime(j), this.f2065c, this.f2066d, this.f2067e, this.f2068f, this.f2069g)));
        }

        @Override // com.applovin.exoplayer2.e.v
        public boolean a() {
            return true;
        }

        @Override // com.applovin.exoplayer2.e.v
        public long b() {
            return this.f2064b;
        }

        public long b(long j) {
            return this.f2063a.timeUsToTargetTime(j);
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements d {
        @Override // com.applovin.exoplayer2.e.a.d
        public long timeUsToTargetTime(long j) {
            return j;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final long f2078a;

        /* renamed from: b  reason: collision with root package name */
        private final long f2079b;

        /* renamed from: c  reason: collision with root package name */
        private final long f2080c;

        /* renamed from: d  reason: collision with root package name */
        private long f2081d;

        /* renamed from: e  reason: collision with root package name */
        private long f2082e;

        /* renamed from: f  reason: collision with root package name */
        private long f2083f;

        /* renamed from: g  reason: collision with root package name */
        private long f2084g;

        /* renamed from: h  reason: collision with root package name */
        private long f2085h;

        protected c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f2078a = j;
            this.f2079b = j2;
            this.f2081d = j3;
            this.f2082e = j4;
            this.f2083f = j5;
            this.f2084g = j6;
            this.f2080c = j7;
            this.f2085h = a(j2, j3, j4, j5, j6, j7);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long a() {
            return this.f2083f;
        }

        protected static long a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return ai.a(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j, long j2) {
            this.f2081d = j;
            this.f2083f = j2;
            f();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b() {
            return this.f2084g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(long j, long j2) {
            this.f2082e = j;
            this.f2084g = j2;
            f();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long c() {
            return this.f2079b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long d() {
            return this.f2078a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long e() {
            return this.f2085h;
        }

        private void f() {
            this.f2085h = a(this.f2079b, this.f2081d, this.f2082e, this.f2083f, this.f2084g, this.f2080c);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface d {
        long timeUsToTargetTime(long j);
    }

    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f2086a = new e(-3, C.TIME_UNSET, -1);

        /* renamed from: b  reason: collision with root package name */
        private final int f2087b;

        /* renamed from: c  reason: collision with root package name */
        private final long f2088c;

        /* renamed from: d  reason: collision with root package name */
        private final long f2089d;

        private e(int i, long j, long j2) {
            this.f2087b = i;
            this.f2088c = j;
            this.f2089d = j2;
        }

        public static e a(long j) {
            return new e(0, C.TIME_UNSET, j);
        }

        public static e a(long j, long j2) {
            return new e(-1, j, j2);
        }

        public static e b(long j, long j2) {
            return new e(-2, j, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface f {
        e a(i iVar, long j) throws IOException;

        default void a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(d dVar, f fVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f2060b = fVar;
        this.f2062d = i;
        this.f2059a = new C0033a(dVar, j, j2, j3, j4, j5, j6);
    }

    protected final int a(i iVar, long j, u uVar) {
        if (j == iVar.c()) {
            return 0;
        }
        uVar.f2707a = j;
        return 1;
    }

    public int a(i iVar, u uVar) throws IOException {
        while (true) {
            c cVar = (c) com.applovin.exoplayer2.l.a.a(this.f2061c);
            long a2 = cVar.a();
            long b2 = cVar.b();
            long e2 = cVar.e();
            if (b2 - a2 <= this.f2062d) {
                a(false, a2);
                return a(iVar, a2, uVar);
            } else if (!a(iVar, e2)) {
                return a(iVar, e2, uVar);
            } else {
                iVar.a();
                e a3 = this.f2060b.a(iVar, cVar.c());
                int i = a3.f2087b;
                if (i == -3) {
                    a(false, e2);
                    return a(iVar, e2, uVar);
                } else if (i == -2) {
                    cVar.a(a3.f2088c, a3.f2089d);
                } else if (i != -1) {
                    if (i == 0) {
                        a(iVar, a3.f2089d);
                        a(true, a3.f2089d);
                        return a(iVar, a3.f2089d, uVar);
                    }
                    throw new IllegalStateException("Invalid case");
                } else {
                    cVar.b(a3.f2088c, a3.f2089d);
                }
            }
        }
    }

    public final v a() {
        return this.f2059a;
    }

    public final void a(long j) {
        c cVar = this.f2061c;
        if (cVar == null || cVar.d() != j) {
            this.f2061c = b(j);
        }
    }

    protected final void a(boolean z, long j) {
        this.f2061c = null;
        this.f2060b.a();
        b(z, j);
    }

    protected final boolean a(i iVar, long j) throws IOException {
        long c2 = j - iVar.c();
        if (c2 < 0 || c2 > PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
            return false;
        }
        iVar.b((int) c2);
        return true;
    }

    protected c b(long j) {
        return new c(j, this.f2059a.b(j), this.f2059a.f2065c, this.f2059a.f2066d, this.f2059a.f2067e, this.f2059a.f2068f, this.f2059a.f2069g);
    }

    protected void b(boolean z, long j) {
    }

    public final boolean b() {
        return this.f2061c != null;
    }
}
