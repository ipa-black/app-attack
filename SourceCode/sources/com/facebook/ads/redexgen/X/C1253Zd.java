package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Zd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1253Zd extends K1 {
    public static byte[] A03;
    public final /* synthetic */ C1286aA A00;
    public final /* synthetic */ C04331q A01;
    public final /* synthetic */ C0742Et A02;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 74);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{32, 5, 0, 17, 21, 4, 19, 65, 21, 8, 12, 4, 14, 20, 21, 79};
    }

    public C1253Zd(C0742Et c0742Et, C04331q c04331q, C1286aA c1286aA) {
        this.A02 = c0742Et;
        this.A01 = c04331q;
        this.A00 = c1286aA;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        this.A02.A0P(this.A01);
        this.A02.A0M(this.A00);
        this.A02.AAv(new JA(AdErrorType.NETWORK_ERROR, A00(0, 16, 43)));
    }
}
