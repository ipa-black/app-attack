package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.9q  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C06279q {
    public final long A00;
    public final long A01;
    public static final C06279q A04 = new C06279q(0, 0);
    public static final C06279q A02 = new C06279q(Long.MAX_VALUE, Long.MAX_VALUE);
    public static final C06279q A06 = new C06279q(Long.MAX_VALUE, 0);
    public static final C06279q A05 = new C06279q(0, Long.MAX_VALUE);
    public static final C06279q A03 = A04;

    public C06279q(long j, long j2) {
        HD.A03(j >= 0);
        HD.A03(j2 >= 0);
        this.A01 = j;
        this.A00 = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C06279q c06279q = (C06279q) obj;
        return this.A01 == c06279q.A01 && this.A00 == c06279q.A00;
    }

    public final int hashCode() {
        return (((int) this.A01) * 31) + ((int) this.A00);
    }
}
