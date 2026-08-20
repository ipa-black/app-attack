package com.facebook.ads.redexgen.X;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public final class FB extends AbstractC1298aM {
    public static byte[] A02;
    public static final String A03;
    public final Uri A00;
    public final Map<String, String> A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{122, 93, 85, 80, 89, 88, 28, 72, 83, 28, 83, 76, 89, 82, 28, 80, 85, 82, 87, 28, 73, 78, 80, 6, 28, 43, 46, 41, 44};
    }

    static {
        A01();
        A03 = FB.class.getSimpleName();
    }

    public FB(C1203Xc c1203Xc, InterfaceC0821Ia interfaceC0821Ia, String str, Uri uri, Map<String, String> mExtraData, @Nullable C04030m c04030m, boolean z) {
        super(c1203Xc, interfaceC0821Ia, str, c04030m, z);
        this.A00 = uri;
        this.A01 = mExtraData;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC03970f
    @Nullable
    public final EnumC03960e A0A() {
        try {
            KS.A09(new KS(), ((AbstractC03970f) this).A00, KT.A00(this.A00.getQueryParameter(A00(25, 4, 8))), ((AbstractC03970f) this).A02);
            return null;
        } catch (Exception unused) {
            String str = A00(0, 25, 115) + this.A00.toString();
            return EnumC03960e.A02;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1298aM
    public final void A0D() {
        EnumC03960e enumC03960e = null;
        if (((AbstractC1298aM) this).A02) {
            enumC03960e = A0A();
        }
        A0E(this.A01, enumC03960e);
    }
}
