package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.9a  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C06119a {
    public static final C06119a A04 = new C06119a(1.0f);
    public final float A00;
    public final float A01;
    public final boolean A02;
    public final int A03;

    public C06119a(float f2) {
        this(f2, 1.0f, false);
    }

    public C06119a(float f2, float f3, boolean z) {
        HD.A03(f2 > 0.0f);
        HD.A03(f3 > 0.0f);
        this.A01 = f2;
        this.A00 = f3;
        this.A02 = z;
        this.A03 = Math.round(1000.0f * f2);
    }

    public final long A00(long j) {
        return this.A03 * j;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C06119a c06119a = (C06119a) obj;
        return this.A01 == c06119a.A01 && this.A00 == c06119a.A00 && this.A02 == c06119a.A02;
    }

    public final int hashCode() {
        int result = Float.floatToRawIntBits(this.A01);
        int result2 = this.A02 ? 1 : 0;
        return (((((17 * 31) + result) * 31) + Float.floatToRawIntBits(this.A00)) * 31) + result2;
    }
}
