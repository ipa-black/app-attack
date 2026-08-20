package com.facebook.ads.redexgen.X;

import com.google.android.exoplayer2.C;
/* renamed from: com.facebook.ads.redexgen.X.Ho  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0811Ho {
    public long A00;
    public long A01;
    public volatile long A02 = C.TIME_UNSET;

    public C0811Ho(long j) {
        A02(j);
    }

    public static long A00(long j) {
        return (1000000 * j) / 90000;
    }

    public static long A01(long j) {
        return (90000 * j) / 1000000;
    }

    private final synchronized void A02(long j) {
        HD.A04(this.A02 == C.TIME_UNSET);
        this.A00 = j;
    }

    public final long A03() {
        return this.A00;
    }

    public final long A04() {
        if (this.A02 != C.TIME_UNSET) {
            return this.A01 + this.A02;
        }
        long j = this.A00;
        return j != Long.MAX_VALUE ? j : C.TIME_UNSET;
    }

    public final long A05() {
        if (this.A00 == Long.MAX_VALUE) {
            return 0L;
        }
        return this.A02 == C.TIME_UNSET ? C.TIME_UNSET : this.A01;
    }

    public final long A06(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.A02 != C.TIME_UNSET) {
            this.A02 = j;
        } else {
            long j2 = this.A00;
            if (j2 != Long.MAX_VALUE) {
                this.A01 = j2 - j;
            }
            synchronized (this) {
                this.A02 = j;
                notifyAll();
            }
        }
        return this.A01 + j;
    }

    public final long A07(long j) {
        if (j == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        if (this.A02 != C.TIME_UNSET) {
            long A01 = A01(this.A02);
            long closestWrapCount = (4294967296L + A01) / 8589934592L;
            long j2 = ((closestWrapCount - 1) * 8589934592L) + j;
            long j3 = (8589934592L * closestWrapCount) + j;
            long lastPts = j2 - A01;
            long abs = Math.abs(lastPts);
            long lastPts2 = j3 - A01;
            if (abs >= Math.abs(lastPts2)) {
                j2 = j3;
            }
            j = j2;
        }
        long lastPts3 = A00(j);
        return A06(lastPts3);
    }

    public final void A08() {
        this.A02 = C.TIME_UNSET;
    }
}
