package com.facebook.ads.redexgen.X;

import org.apache.commons.collections.primitives.ArrayUnsignedIntList;
/* loaded from: assets/audience_network.dex */
public final class HP {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final long A07;

    public HP(byte[] bArr, int i) {
        C0798Hb c0798Hb = new C0798Hb(bArr);
        c0798Hb.A07(i * 8);
        this.A04 = c0798Hb.A04(16);
        this.A02 = c0798Hb.A04(16);
        this.A05 = c0798Hb.A04(24);
        this.A03 = c0798Hb.A04(24);
        this.A06 = c0798Hb.A04(20);
        this.A01 = c0798Hb.A04(3) + 1;
        this.A00 = c0798Hb.A04(5) + 1;
        this.A07 = ((c0798Hb.A04(4) & 15) << 32) | (c0798Hb.A04(32) & ArrayUnsignedIntList.MAX_VALUE);
    }

    public final int A00() {
        return this.A00 * this.A06;
    }

    public final long A01() {
        return (this.A07 * 1000000) / this.A06;
    }
}
