package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.aK  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1296aK extends AbstractC03970f {
    public static byte[] A01;
    public static final String A02;
    public final Uri A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 1);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{88, 115, 123, 126, 119, 118, 50, -122, -127, 50, -127, -126, 119, Byte.MIN_VALUE, 50, 126, 123, Byte.MIN_VALUE, 125, 50, -121, -124, 126, 76, 50};
    }

    static {
        A01();
        A02 = C1296aK.class.getSimpleName();
    }

    public C1296aK(C1203Xc c1203Xc, InterfaceC0821Ia interfaceC0821Ia, String str, Uri uri) {
        super(c1203Xc, interfaceC0821Ia, str);
        this.A00 = uri;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC03970f
    public final void A0C() {
        try {
            KS.A0A(new KS(), super.A00, this.A00, this.A02);
        } catch (Exception unused) {
            String str = A00(0, 25, 17) + this.A00.toString();
        }
    }
}
