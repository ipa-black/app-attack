package com.facebook.ads.redexgen.X;

import com.google.android.exoplayer2.C;
/* renamed from: com.facebook.ads.redexgen.X.Dd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0700Dd implements WG {
    public final int A00;
    public final int A01;
    public final long A02;
    public final long A03;
    public final long A04;

    public C0700Dd(long j, long j2, Bb bb) {
        this.A04 = j2;
        this.A01 = bb.A02;
        this.A00 = bb.A00;
        if (j == -1) {
            this.A02 = -1L;
            this.A03 = C.TIME_UNSET;
            return;
        }
        this.A02 = j - j2;
        this.A03 = A7q(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final long A6Y() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final C0663Bd A7a(long j) {
        long j2 = this.A02;
        if (j2 == -1) {
            return new C0663Bd(new C0665Bf(0L, this.A04));
        }
        int i = this.A01;
        long A0E = C0815Hs.A0E((((this.A00 * j) / 8000000) / i) * i, 0L, j2 - i);
        long j3 = this.A04 + A0E;
        long A7q = A7q(j3);
        C0665Bf seekPoint = new C0665Bf(A7q, j3);
        if (A7q < j) {
            long j4 = this.A02;
            int i2 = this.A01;
            if (A0E != j4 - i2) {
                long j5 = i2 + j3;
                return new C0663Bd(seekPoint, new C0665Bf(A7q(j5), j5));
            }
        }
        return new C0663Bd(seekPoint);
    }

    @Override // com.facebook.ads.redexgen.X.WG
    public final long A7q(long j) {
        return ((Math.max(0L, j - this.A04) * 1000000) * 8) / this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final boolean A8v() {
        return this.A02 != -1;
    }
}
