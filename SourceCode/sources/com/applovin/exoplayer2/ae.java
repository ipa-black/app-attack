package com.applovin.exoplayer2;

import com.applovin.exoplayer2.h.p;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* loaded from: classes.dex */
final class ae {

    /* renamed from: a  reason: collision with root package name */
    public final p.a f1312a;

    /* renamed from: b  reason: collision with root package name */
    public final long f1313b;

    /* renamed from: c  reason: collision with root package name */
    public final long f1314c;

    /* renamed from: d  reason: collision with root package name */
    public final long f1315d;

    /* renamed from: e  reason: collision with root package name */
    public final long f1316e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f1317f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f1318g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f1319h;
    public final boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(p.a aVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = false;
        com.applovin.exoplayer2.l.a.a(!z4 || z2);
        com.applovin.exoplayer2.l.a.a(!z3 || z2);
        if (!z || (!z2 && !z3 && !z4)) {
            z5 = true;
        }
        com.applovin.exoplayer2.l.a.a(z5);
        this.f1312a = aVar;
        this.f1313b = j;
        this.f1314c = j2;
        this.f1315d = j3;
        this.f1316e = j4;
        this.f1317f = z;
        this.f1318g = z2;
        this.f1319h = z3;
        this.i = z4;
    }

    public ae a(long j) {
        return j == this.f1313b ? this : new ae(this.f1312a, j, this.f1314c, this.f1315d, this.f1316e, this.f1317f, this.f1318g, this.f1319h, this.i);
    }

    public ae b(long j) {
        return j == this.f1314c ? this : new ae(this.f1312a, this.f1313b, j, this.f1315d, this.f1316e, this.f1317f, this.f1318g, this.f1319h, this.i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ae aeVar = (ae) obj;
        return this.f1313b == aeVar.f1313b && this.f1314c == aeVar.f1314c && this.f1315d == aeVar.f1315d && this.f1316e == aeVar.f1316e && this.f1317f == aeVar.f1317f && this.f1318g == aeVar.f1318g && this.f1319h == aeVar.f1319h && this.i == aeVar.i && com.applovin.exoplayer2.l.ai.a(this.f1312a, aeVar.f1312a);
    }

    public int hashCode() {
        return ((((((((((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.f1312a.hashCode()) * 31) + ((int) this.f1313b)) * 31) + ((int) this.f1314c)) * 31) + ((int) this.f1315d)) * 31) + ((int) this.f1316e)) * 31) + (this.f1317f ? 1 : 0)) * 31) + (this.f1318g ? 1 : 0)) * 31) + (this.f1319h ? 1 : 0)) * 31) + (this.i ? 1 : 0);
    }
}
