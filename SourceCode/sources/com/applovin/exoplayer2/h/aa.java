package com.applovin.exoplayer2.h;

import android.net.Uri;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ba;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public final class aa extends ba {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f2995c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final com.applovin.exoplayer2.ab f2996d = new ab.b().a("SinglePeriodTimeline").a(Uri.EMPTY).a();

    /* renamed from: e  reason: collision with root package name */
    private final long f2997e;

    /* renamed from: f  reason: collision with root package name */
    private final long f2998f;

    /* renamed from: g  reason: collision with root package name */
    private final long f2999g;

    /* renamed from: h  reason: collision with root package name */
    private final long f3000h;
    private final long i;
    private final long j;
    private final long k;
    private final boolean l;
    private final boolean m;
    private final boolean n;
    private final Object o;
    private final com.applovin.exoplayer2.ab p;
    private final ab.e q;

    public aa(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, Object obj, com.applovin.exoplayer2.ab abVar, ab.e eVar) {
        this.f2997e = j;
        this.f2998f = j2;
        this.f2999g = j3;
        this.f3000h = j4;
        this.i = j5;
        this.j = j6;
        this.k = j7;
        this.l = z;
        this.m = z2;
        this.n = z3;
        this.o = obj;
        this.p = (com.applovin.exoplayer2.ab) com.applovin.exoplayer2.l.a.b(abVar);
        this.q = eVar;
    }

    public aa(long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, Object obj, com.applovin.exoplayer2.ab abVar) {
        this(C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, j, j2, j3, j4, z, z2, false, obj, abVar, z3 ? abVar.f1233d : null);
    }

    public aa(long j, boolean z, boolean z2, boolean z3, Object obj, com.applovin.exoplayer2.ab abVar) {
        this(j, j, 0L, 0L, z, z2, z3, obj, abVar);
    }

    @Override // com.applovin.exoplayer2.ba
    public ba.a a(int i, ba.a aVar, boolean z) {
        com.applovin.exoplayer2.l.a.a(i, 0, 1);
        return aVar.a(null, z ? f2995c : null, 0, this.f3000h, -this.j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (r1 > r3) goto L9;
     */
    @Override // com.applovin.exoplayer2.ba
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.applovin.exoplayer2.ba.c a(int r29, com.applovin.exoplayer2.ba.c r30, long r31) {
        /*
            r28 = this;
            r0 = r28
            r1 = 0
            r2 = 1
            r3 = r29
            com.applovin.exoplayer2.l.a.a(r3, r1, r2)
            long r1 = r0.k
            boolean r3 = r0.m
            if (r3 == 0) goto L2e
            boolean r3 = r0.n
            if (r3 != 0) goto L2e
            r3 = 0
            int r3 = (r31 > r3 ? 1 : (r31 == r3 ? 0 : -1))
            if (r3 == 0) goto L2e
            long r3 = r0.i
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L27
        L24:
            r20 = r5
            goto L30
        L27:
            long r1 = r1 + r31
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 <= 0) goto L2e
            goto L24
        L2e:
            r20 = r1
        L30:
            java.lang.Object r8 = com.applovin.exoplayer2.ba.c.f1629a
            com.applovin.exoplayer2.ab r9 = r0.p
            java.lang.Object r10 = r0.o
            long r11 = r0.f2997e
            long r13 = r0.f2998f
            long r1 = r0.f2999g
            r15 = r1
            boolean r1 = r0.l
            r17 = r1
            boolean r1 = r0.m
            r18 = r1
            com.applovin.exoplayer2.ab$e r1 = r0.q
            r19 = r1
            long r1 = r0.i
            r22 = r1
            r25 = 0
            long r1 = r0.j
            r26 = r1
            r24 = 0
            r7 = r30
            com.applovin.exoplayer2.ba$c r1 = r7.a(r8, r9, r10, r11, r13, r15, r17, r18, r19, r20, r22, r24, r25, r26)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.h.aa.a(int, com.applovin.exoplayer2.ba$c, long):com.applovin.exoplayer2.ba$c");
    }

    @Override // com.applovin.exoplayer2.ba
    public Object a(int i) {
        com.applovin.exoplayer2.l.a.a(i, 0, 1);
        return f2995c;
    }

    @Override // com.applovin.exoplayer2.ba
    public int b() {
        return 1;
    }

    @Override // com.applovin.exoplayer2.ba
    public int c() {
        return 1;
    }

    @Override // com.applovin.exoplayer2.ba
    public int c(Object obj) {
        return f2995c.equals(obj) ? 0 : -1;
    }
}
