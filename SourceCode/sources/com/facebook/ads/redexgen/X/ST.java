package com.facebook.ads.redexgen.X;

import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class ST extends K1 {
    public static byte[] A01;
    public static String[] A02 = {"tqjsEEcJIl5fnT50RexN0Ul8jJNRcJH3", "bcHaNcoWvApI2nKaudb7K7xtbFjWkSY2", "iyPpS1SdU0ZqVBkmFeVqNLta6ZFg9Iqa", "UBClilIqx1CzUaWBAcSFWImK7oEyUnNj", "3QGuHwFl80gr6moaepv76MMeXXWdVHzR", "LTxBQzMWcHhaEkgA4RYqwBVdVGvYrVKd", "khQutPcnm0RXwnjsvW5BsBwBtMJWmKup", "vMJICmQj5dYIJdPu1hKuz0wH7PDNWSqy"};
    public final /* synthetic */ C0949Nd A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 100);
            String[] strArr = A02;
            if (strArr[3].charAt(18) == strArr[1].charAt(18)) {
                throw new RuntimeException();
            }
            A02[6] = "0Kfb69VsCmdvaLaP4iTMNX4D6n507IHd";
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{96, 95, 82, 83, 89, 22, 65, 87, 69, 22, 88, 83, SignedBytes.MAX_POWER_OF_TWO, 83, 68, 22, 70, 68, 83, 70, 87, 68, 83, 82};
    }

    static {
        A02();
    }

    public ST(C0949Nd c0949Nd) {
        this.A00 = c0949Nd;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        boolean z;
        InterfaceC0973Ob interfaceC0973Ob;
        z = this.A00.A08;
        if (!z) {
            interfaceC0973Ob = this.A00.A0M;
            interfaceC0973Ob.ACz(A00(0, 24, 82));
        }
    }
}
