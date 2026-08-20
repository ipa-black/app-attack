package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public class IW {
    public double A00;
    public EnumC0823Ic A01;
    public EnumC0824Id A02;
    public String A03;
    public String A04;
    @Nullable
    public Map<String, String> A05;
    public boolean A06;

    public final IW A00(double d2) {
        this.A00 = d2;
        return this;
    }

    public final IW A01(EnumC0823Ic enumC0823Ic) {
        this.A01 = enumC0823Ic;
        return this;
    }

    public final IW A02(EnumC0824Id enumC0824Id) {
        this.A02 = enumC0824Id;
        return this;
    }

    public final IW A03(String str) {
        this.A03 = str;
        return this;
    }

    public final IW A04(String str) {
        this.A04 = str;
        return this;
    }

    public final IW A05(@Nullable Map<String, String> mData) {
        this.A05 = mData;
        return this;
    }

    public final IW A06(boolean z) {
        this.A06 = z;
        return this;
    }

    public final IX A07(C7N c7n) {
        return new IX(c7n, this.A04, this.A00, this.A03, this.A05, this.A01, this.A02, this.A06);
    }
}
