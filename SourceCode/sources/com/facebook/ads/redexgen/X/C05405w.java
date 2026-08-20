package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.5w  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C05405w {
    public final long A00;
    public final EnumC05395v A01;
    public final String A02;
    public final boolean A03;

    public C05405w(String str, boolean z, EnumC05395v enumC05395v) {
        this(str, z, enumC05395v, System.currentTimeMillis());
    }

    public C05405w(String str, boolean z, EnumC05395v enumC05395v, long j) {
        this.A02 = str;
        this.A03 = z;
        this.A01 = enumC05395v;
        this.A00 = j;
    }

    public static C05405w A00() {
        return new C05405w("", true, EnumC05395v.A06, -1L);
    }

    public final long A01() {
        return this.A00;
    }

    public final EnumC05395v A02() {
        return this.A01;
    }

    public final String A03() {
        return this.A02;
    }

    public final boolean A04() {
        return this.A03;
    }
}
