package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* loaded from: assets/audience_network.dex */
public class W3 implements CO, InterfaceC0664Be {
    public static String[] A05 = {"RxrevBHwZunvWtoC5v6V", "BM7NoIYIDKALVkWYBFUm4mgKfD4surZT", "wT545zonAETVeqcNIpSLQKDSBA4psZtT", "O6YerNOVuBIV8g4cn8DH", "f7xxxnJira03VIlY2bxNtwSQeXyrwxct", "8kRv9b0m26r6Uh6XKMOB9WasCMU5o07v", "0W8GSaK37PxtOyOV4bIEUVoiYe2UqjRN", "TYUMHNguvpgJeUJ5Wme9D9z4"};
    public long A00 = -1;
    public long A01 = -1;
    public long[] A02;
    public long[] A03;
    public final /* synthetic */ W2 A04;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final C0663Bd A7a(long j) {
        int A0B = C0815Hs.A0B(this.A02, this.A04.A04(j), true, true);
        long A03 = this.A04.A03(this.A02[A0B]);
        C0665Bf c0665Bf = new C0665Bf(A03, this.A00 + this.A03[A0B]);
        if (A03 < j) {
            long[] jArr = this.A02;
            if (A0B != jArr.length - 1) {
                return new C0663Bd(c0665Bf, new C0665Bf(this.A04.A03(jArr[A0B + 1]), this.A00 + this.A03[A0B + 1]));
            }
        }
        return new C0663Bd(c0665Bf);
    }

    public W3(W2 w2) {
        this.A04 = w2;
    }

    public final void A00(long j) {
        this.A00 = j;
    }

    public final void A01(C0799Hc c0799Hc) {
        c0799Hc.A0Z(1);
        int length = c0799Hc.A0G();
        int i = length / 18;
        this.A02 = new long[i];
        this.A03 = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.A02[i2] = c0799Hc.A0L();
            this.A03[i2] = c0799Hc.A0L();
            c0799Hc.A0Z(2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.CO
    public final InterfaceC0664Be A4V() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final long A6Y() {
        HP hp;
        hp = this.A04.A01;
        return hp.A01();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0664Be
    public final boolean A8v() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.CO
    public final long ADq(BW bw) throws IOException, InterruptedException {
        long j = this.A01;
        if (j >= 0) {
            long j2 = -(j + 2);
            this.A01 = -1L;
            if (A05[5].charAt(9) != '6') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[0] = "MeEp95NFLxRX8bxkfA2m";
            strArr[3] = "RwTpOb1Sie1PnKrI5U9E";
            return j2;
        }
        return -1L;
    }

    @Override // com.facebook.ads.redexgen.X.CO
    public final long AFR(long j) {
        long A04 = this.A04.A04(j);
        long granule = this.A02[C0815Hs.A0B(this.A02, A04, true, true)];
        this.A01 = granule;
        return A04;
    }
}
