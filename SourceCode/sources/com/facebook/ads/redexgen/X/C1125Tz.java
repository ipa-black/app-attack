package com.facebook.ads.redexgen.X;

import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Tz  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1125Tz extends AbstractC04050o {
    public static byte[] A01;
    public final /* synthetic */ C1115Tp A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 109);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{23, 42, 61, 50, 63, 46, -23, 42, 45, 60, -23, 54, 42, 55, 42, 48, 46, 59, -23, 61, 49, 46, 50, 59, -23, 56, SignedBytes.MAX_POWER_OF_TWO, 55, -23, 50, 54, 57, 59, 46, 60, 60, 50, 56, 55, 60, -9};
    }

    public C1125Tz(C1115Tp c1115Tp) {
        this.A00 = c1115Tp;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC04050o
    public final void A0B(C1283a7 c1283a7) {
        this.A00.A1T(c1283a7);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC04050o
    public final void A0C() {
        InterfaceC1114To interfaceC1114To;
        InterfaceC1114To interfaceC1114To2;
        interfaceC1114To = this.A00.A0G;
        if (interfaceC1114To != null) {
            interfaceC1114To2 = this.A00.A0G;
            interfaceC1114To2.AA4();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC04050o
    public final void A0D() {
        throw new IllegalStateException(A00(0, 41, 92));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC04050o
    public final void A0F(InterfaceC04040n interfaceC04040n) {
        C0740Er c0740Er;
        C0740Er c0740Er2;
        c0740Er = this.A00.A0A;
        if (c0740Er != null) {
            c0740Er2 = this.A00.A0A;
            c0740Er2.A0I();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC04050o
    public final void A0G(JA ja) {
        long j;
        InterfaceC1114To interfaceC1114To;
        InterfaceC1114To interfaceC1114To2;
        C0R A0E = this.A00.A11().A0E();
        j = this.A00.A00;
        A0E.A2b(LC.A01(j), ja.A03().getErrorCode(), ja.A04());
        interfaceC1114To = this.A00.A0G;
        if (interfaceC1114To != null) {
            interfaceC1114To2 = this.A00.A0G;
            interfaceC1114To2.AAv(ja);
        }
    }
}
