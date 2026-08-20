package com.facebook.ads.redexgen.X;

import android.text.Layout;
/* renamed from: com.facebook.ads.redexgen.X.Uv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1147Uv extends FQ {
    public final long A00;
    public final long A01;

    public C1147Uv(long j, long j2, CharSequence charSequence) {
        this(j, j2, charSequence, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public C1147Uv(long j, long j2, CharSequence charSequence, Layout.Alignment alignment, float f2, int i, int i2, float f3, int i3, float f4) {
        super(charSequence, alignment, f2, i, i2, f3, i3, f4);
        this.A01 = j;
        this.A00 = j2;
    }

    public C1147Uv(CharSequence charSequence) {
        this(0L, 0L, charSequence);
    }

    public final boolean A00() {
        return super.A01 == Float.MIN_VALUE && this.A02 == Float.MIN_VALUE;
    }
}
