package com.applovin.exoplayer2.l;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.util.TimestampAdjuster;
/* loaded from: classes.dex */
public final class ag {

    /* renamed from: a  reason: collision with root package name */
    private long f3777a;

    /* renamed from: b  reason: collision with root package name */
    private long f3778b;

    /* renamed from: c  reason: collision with root package name */
    private long f3779c;

    /* renamed from: d  reason: collision with root package name */
    private final ThreadLocal<Long> f3780d = new ThreadLocal<>();

    public ag(long j) {
        a(j);
    }

    public static long d(long j) {
        return (j * 1000000) / 90000;
    }

    public static long e(long j) {
        return (j * 90000) / 1000000;
    }

    public synchronized long a() {
        long j;
        j = this.f3777a;
        if (j == Long.MAX_VALUE || j == TimestampAdjuster.MODE_SHARED) {
            j = C.TIME_UNSET;
        }
        return j;
    }

    public synchronized void a(long j) {
        this.f3777a = j;
        this.f3778b = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f3779c = C.TIME_UNSET;
    }

    public synchronized long b() {
        long j;
        j = this.f3779c;
        return j != C.TIME_UNSET ? j + this.f3778b : a();
    }

    public synchronized long b(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        long j2 = this.f3779c;
        if (j2 != C.TIME_UNSET) {
            long e2 = e(j2);
            long j3 = (4294967296L + e2) / 8589934592L;
            long j4 = ((j3 - 1) * 8589934592L) + j;
            j += j3 * 8589934592L;
            if (Math.abs(j4 - e2) < Math.abs(j - e2)) {
                j = j4;
            }
        }
        return c(d(j));
    }

    public synchronized long c() {
        return this.f3778b;
    }

    public synchronized long c(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.f3778b == C.TIME_UNSET) {
            long j2 = this.f3777a;
            if (j2 == TimestampAdjuster.MODE_SHARED) {
                j2 = ((Long) a.b(this.f3780d.get())).longValue();
            }
            this.f3778b = j2 - j;
            notifyAll();
        }
        this.f3779c = j;
        return j + this.f3778b;
    }
}
