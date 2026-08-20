package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
/* renamed from: com.facebook.ads.redexgen.X.9x  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C06339x {
    public final int A00;
    public final ER A01;

    public C06339x(int i, ER er) {
        this.A00 = i;
        this.A01 = er;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C06339x c06339x = (C06339x) obj;
        return this.A00 == c06339x.A00 && this.A01.equals(c06339x.A01);
    }

    public final int hashCode() {
        return (this.A00 * 31) + this.A01.hashCode();
    }
}
