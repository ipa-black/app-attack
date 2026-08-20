package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.google.common.primitives.SignedBytes;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Cs  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0694Cs {
    public static byte[] A00;

    static {
        A02();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.VW A00(com.facebook.ads.redexgen.X.BW r19) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0694Cs.A00(com.facebook.ads.redexgen.X.BW):com.facebook.ads.redexgen.X.VW");
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 36);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{39, 97, 104, 117, 39, 115, 126, 119, 98, 39, 33, 58, 125, 117, 110, 32, 58, 123, 80, 77, 86, 83, 24, 81, 75, 24, 76, 87, 87, 24, 84, 89, 74, 95, 93, 24, 16, 70, 10, Byte.MAX_VALUE, 122, 19, 17, 24, 76, 87, 24, 75, 83, 81, 72, 3, 24, 81, 92, 2, 24, 81, 108, 100, 113, 119, 96, 113, 112, 52, 118, 120, 123, 119, Byte.MAX_VALUE, 52, 117, 120, 125, 115, 122, 121, 113, 122, 96, 46, 52, 103, 73, SignedBytes.MAX_POWER_OF_TWO, 65, 92, 71, SignedBytes.MAX_POWER_OF_TWO, 73, 14, 91, SignedBytes.MAX_POWER_OF_TWO, 69, SignedBytes.MAX_POWER_OF_TWO, 65, 89, SignedBytes.MAX_POWER_OF_TWO, 14, 121, 111, 120, 14, 77, 70, 91, SignedBytes.MAX_POWER_OF_TWO, 69, 20, 14, 6, 29, 18, 18, 106, 81, 76, 74, 79, 79, 80, 77, 75, 90, 91, 31, 109, 118, 121, 121, 31, 89, 80, 77, 82, 94, 75, 5, 31, 20, 47, 50, 52, 49, 49, 46, 51, 53, 36, 37, 97, 22, 0, 23, 97, 35, 40, 53, 97, 37, 36, 49, 53, 41, 97, 111, 84, 73, 79, 74, 74, 85, 72, 78, 95, 94, 26, 109, 123, 108, 26, 92, 85, 72, 87, 91, 78, 26, 78, 67, 74, 95, 0, 26, 126, 104, Byte.MAX_VALUE, 108, 126, 72, 95, 97, 76, 72, 77, 76, 91, 123, 76, 72, 77, 76, 91, 10, 15, 26, 15, 98, 105, 112, 36};
    }

    public static void A03(BW bw, VW vw) throws IOException, InterruptedException {
        HD.A01(bw);
        HD.A01(vw);
        bw.AES();
        C0799Hc c0799Hc = new C0799Hc(8);
        C0693Cr A002 = C0693Cr.A00(bw, c0799Hc);
        while (A002.A00 != C0815Hs.A08(A01(214, 4, 74))) {
            Log.w(A01(199, 15, 13), A01(83, 28, 10) + A002.A00);
            long j = A002.A01 + 8;
            if (A002.A00 == C0815Hs.A08(A01(111, 4, 112))) {
                j = 12;
            }
            if (j <= 2147483647L) {
                bw.AFJ((int) j);
                A002 = C0693Cr.A00(bw, c0799Hc);
            } else {
                throw new C9Y(A01(17, 40, 28) + A002.A00);
            }
        }
        bw.AFJ(8);
        vw.A06(bw.A7P(), A002.A01);
    }
}
