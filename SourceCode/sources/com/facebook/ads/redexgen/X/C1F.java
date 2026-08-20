package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.io.Serializable;
/* renamed from: com.facebook.ads.redexgen.X.1F  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C1F implements Serializable {
    public static final long serialVersionUID = -268645651038092386L;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final long A05;
    @Nullable
    public final C1X A06;
    public final String A07;
    public final String A08;
    public final boolean A09;
    public final boolean A0A;
    public final boolean A0B;

    public C1F(C1E c1e) {
        this.A08 = C1E.A07(c1e);
        this.A05 = C1E.A05(c1e);
        this.A03 = C1E.A01(c1e);
        this.A04 = C1E.A02(c1e);
        this.A0A = C1E.A0A(c1e);
        this.A09 = C1E.A0B(c1e);
        this.A07 = C1E.A08(c1e);
        this.A01 = C1E.A03(c1e);
        this.A00 = C1E.A04(c1e);
        this.A06 = C1E.A06(c1e);
        this.A02 = C1E.A00(c1e);
        this.A0B = C1E.A09(c1e);
    }

    public final int A00() {
        return this.A00;
    }

    public final int A01() {
        return this.A01;
    }

    public final int A02() {
        return this.A02;
    }

    public final int A03() {
        return this.A03;
    }

    public final int A04() {
        return this.A04;
    }

    public final long A05() {
        return this.A05;
    }

    @Nullable
    public final C1X A06() {
        return this.A06;
    }

    public final String A07() {
        return this.A07;
    }

    public final String A08() {
        return this.A08;
    }

    public final boolean A09() {
        return this.A09;
    }

    public final boolean A0A() {
        return this.A0B;
    }
}
