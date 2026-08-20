package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public final class WM extends AbstractC0668Bj {
    public static byte[] A05;
    public static String[] A06 = {"S6oix22WW3XrOL6PgcbxfAkEtHdPkPhf", "4OWz7hl1Zq8qyI8tM", "clV1g7mDIxTidmwZ1CuuG8s1lTi1VXAM", "4pPGx9", "ltKNubnfMHDxlo41G", "61sVTIAUswj0oFXzD6", "V6Pb0wOPN8cWCdQmqK9dHxyDUr6EkDd0", "qXRSabgl4tCI0bSRqPqCbhaUnodlSpfB"};
    public int A00;
    public int A01;
    public boolean A02;
    public final C0799Hc A03;
    public final C0799Hc A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 63);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{71, 120, 117, 116, 126, 49, 119, 126, 99, 124, 112, 101, 49, Byte.MAX_VALUE, 126, 101, 49, 98, 100, 97, 97, 126, 99, 101, 116, 117, 43, 49, 39, 56, 53, 52, 62, 126, 48, 39, 50};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.AbstractC0668Bj
    public final void A0B(C0799Hc c0799Hc, long j) throws C9Y {
        int A0E = c0799Hc.A0E();
        long A09 = j + (c0799Hc.A09() * 1000);
        if (A0E == 0 && !this.A02) {
            C0799Hc c0799Hc2 = new C0799Hc(new byte[c0799Hc.A04()]);
            c0799Hc.A0c(c0799Hc2.A00, 0, c0799Hc.A04());
            C0817Hu A00 = C0817Hu.A00(c0799Hc2);
            this.A01 = A00.A02;
            super.A00.A5X(Format.A03(null, A00(28, 9, 110), null, -1, -1, A00.A03, A00.A01, -1.0f, A00.A04, -1, A00.A00, null));
            this.A02 = true;
        } else if (A0E == 1 && this.A02) {
            byte[] bArr = this.A03.A00;
            bArr[0] = 0;
            bArr[1] = 0;
            bArr[2] = 0;
            int i = 4 - this.A01;
            int i2 = 0;
            while (c0799Hc.A04() > 0) {
                c0799Hc.A0c(this.A03.A00, i, this.A01);
                this.A03.A0Y(0);
                int A0H = this.A03.A0H();
                this.A04.A0Y(0);
                super.A00.AEX(this.A04, 4);
                super.A00.AEX(c0799Hc, A0H);
                i2 = i2 + 4 + A0H;
            }
            super.A00.AEY(A09, this.A00 != 1 ? 0 : 1, i2, 0, null);
        }
    }

    static {
        A01();
    }

    public WM(InterfaceC0667Bh interfaceC0667Bh) {
        super(interfaceC0667Bh);
        this.A04 = new C0799Hc(HY.A03);
        this.A03 = new C0799Hc(4);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0668Bj
    public final boolean A0C(C0799Hc c0799Hc) throws WN {
        int frameType = c0799Hc.A0E();
        int header = frameType >> 4;
        int i = header & 15;
        int i2 = frameType & 15;
        if (i2 == 7) {
            this.A00 = i;
            if (A06[2].charAt(25) != 118) {
                A06[5] = "9goNtADcrLhK1amHV7";
                return i != 5;
            }
            throw new RuntimeException();
        }
        throw new WN(A00(0, 28, 46) + i2);
    }
}
