package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroup;
import com.google.android.exoplayer2.C;
/* loaded from: assets/audience_network.dex */
public final class BD extends AbstractC1144Us {
    public float A00;
    public int A01;
    public int A02;
    public long A03;
    public final float A04;
    public final float A05;
    public final long A06;
    public final long A07;
    public final long A08;
    public final long A09;
    public final GS A0A;
    public final HG A0B;

    public BD(TrackGroup trackGroup, int[] iArr, GS gs, long j, long j2, long j3, float f2, float f3, long j4, HG hg) {
        super(trackGroup, iArr);
        this.A0A = gs;
        this.A07 = j * 1000;
        this.A06 = j2 * 1000;
        this.A08 = 1000 * j3;
        this.A04 = f2;
        this.A05 = f3;
        this.A09 = j4;
        this.A0B = hg;
        this.A00 = 1.0f;
        this.A01 = 1;
        this.A03 = C.TIME_UNSET;
        this.A02 = A00(Long.MIN_VALUE);
    }

    private int A00(long j) {
        long A5q = ((float) this.A0A.A5q()) * this.A04;
        int i = 0;
        for (int i2 = 0; i2 < super.A03; i2++) {
            if (j == Long.MIN_VALUE || !A00(i2, j)) {
                if (Math.round(A6o(i2).A04 * this.A00) <= A5q) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1144Us, com.facebook.ads.redexgen.X.GJ
    public final void A5C() {
        this.A03 = C.TIME_UNSET;
    }

    @Override // com.facebook.ads.redexgen.X.GJ
    public final int A7c() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1144Us, com.facebook.ads.redexgen.X.GJ
    public final void AC2(float f2) {
        this.A00 = f2;
    }
}
