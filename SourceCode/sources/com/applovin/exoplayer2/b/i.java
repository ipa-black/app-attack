package com.applovin.exoplayer2.b;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
final class i {

    /* renamed from: a  reason: collision with root package name */
    private final a f1500a;

    /* renamed from: b  reason: collision with root package name */
    private int f1501b;

    /* renamed from: c  reason: collision with root package name */
    private long f1502c;

    /* renamed from: d  reason: collision with root package name */
    private long f1503d;

    /* renamed from: e  reason: collision with root package name */
    private long f1504e;

    /* renamed from: f  reason: collision with root package name */
    private long f1505f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final AudioTrack f1506a;

        /* renamed from: b  reason: collision with root package name */
        private final AudioTimestamp f1507b = new AudioTimestamp();

        /* renamed from: c  reason: collision with root package name */
        private long f1508c;

        /* renamed from: d  reason: collision with root package name */
        private long f1509d;

        /* renamed from: e  reason: collision with root package name */
        private long f1510e;

        public a(AudioTrack audioTrack) {
            this.f1506a = audioTrack;
        }

        public boolean a() {
            boolean timestamp = this.f1506a.getTimestamp(this.f1507b);
            if (timestamp) {
                long j = this.f1507b.framePosition;
                if (this.f1509d > j) {
                    this.f1508c++;
                }
                this.f1509d = j;
                this.f1510e = j + (this.f1508c << 32);
            }
            return timestamp;
        }

        public long b() {
            return this.f1507b.nanoTime / 1000;
        }

        public long c() {
            return this.f1510e;
        }
    }

    public i(AudioTrack audioTrack) {
        if (ai.f3781a >= 19) {
            this.f1500a = new a(audioTrack);
            d();
            return;
        }
        this.f1500a = null;
        a(3);
    }

    private void a(int i) {
        this.f1501b = i;
        long j = 10000;
        if (i == 0) {
            this.f1504e = 0L;
            this.f1505f = -1L;
            this.f1502c = System.nanoTime() / 1000;
        } else if (i != 1) {
            if (i == 2 || i == 3) {
                j = 10000000;
            } else if (i != 4) {
                throw new IllegalStateException();
            } else {
                j = 500000;
            }
        }
        this.f1503d = j;
    }

    public void a() {
        a(4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
        if (r0 != false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
        if (r0 == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(long r7) {
        /*
            r6 = this;
            com.applovin.exoplayer2.b.i$a r0 = r6.f1500a
            r1 = 0
            if (r0 == 0) goto L71
            long r2 = r6.f1504e
            long r2 = r7 - r2
            long r4 = r6.f1503d
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 >= 0) goto L10
            goto L71
        L10:
            r6.f1504e = r7
            boolean r0 = r0.a()
            int r2 = r6.f1501b
            r3 = 3
            r4 = 1
            if (r2 == 0) goto L49
            r7 = 2
            if (r2 == r4) goto L33
            if (r2 == r7) goto L30
            if (r2 == r3) goto L2d
            r7 = 4
            if (r2 != r7) goto L27
            goto L70
        L27:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            r7.<init>()
            throw r7
        L2d:
            if (r0 == 0) goto L70
            goto L45
        L30:
            if (r0 != 0) goto L70
            goto L45
        L33:
            if (r0 == 0) goto L45
            com.applovin.exoplayer2.b.i$a r8 = r6.f1500a
            long r1 = r8.c()
            long r3 = r6.f1505f
            int r8 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r8 <= 0) goto L70
            r6.a(r7)
            goto L70
        L45:
            r6.d()
            goto L70
        L49:
            if (r0 == 0) goto L63
            com.applovin.exoplayer2.b.i$a r7 = r6.f1500a
            long r7 = r7.b()
            long r2 = r6.f1502c
            int r7 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r7 < 0) goto L71
            com.applovin.exoplayer2.b.i$a r7 = r6.f1500a
            long r7 = r7.c()
            r6.f1505f = r7
            r6.a(r4)
            goto L70
        L63:
            long r1 = r6.f1502c
            long r7 = r7 - r1
            r1 = 500000(0x7a120, double:2.47033E-318)
            int r7 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r7 <= 0) goto L70
            r6.a(r3)
        L70:
            r1 = r0
        L71:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.b.i.a(long):boolean");
    }

    public void b() {
        if (this.f1501b == 4) {
            d();
        }
    }

    public boolean c() {
        return this.f1501b == 2;
    }

    public void d() {
        if (this.f1500a != null) {
            a(0);
        }
    }

    public long e() {
        a aVar = this.f1500a;
        return aVar != null ? aVar.b() : C.TIME_UNSET;
    }

    public long f() {
        a aVar = this.f1500a;
        if (aVar != null) {
            return aVar.c();
        }
        return -1L;
    }
}
