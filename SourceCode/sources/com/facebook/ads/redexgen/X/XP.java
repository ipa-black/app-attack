package com.facebook.ads.redexgen.X;

import com.facebook.ads.AudienceNetworkAds;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class XP extends K1 {
    public static byte[] A02;
    public final /* synthetic */ AudienceNetworkAds.InitListener A00;
    public final /* synthetic */ C1202Xb A01;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{91, 108, 99, 40, 123, 125, 107, 107, 109, 123, 123, 110, 125, 100, 100, 113, 40, 97, 102, 97, 124, 97, 105, 100, 97, 114, 109, 108, 41};
    }

    public XP(C1202Xb c1202Xb, AudienceNetworkAds.InitListener initListener) {
        this.A01 = c1202Xb;
        this.A00 = initListener;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        try {
            XA.A02().A0C(this.A01);
        } catch (Throwable th) {
            this.A01.A07().A3S(th);
        }
        C8G.A0C(this.A01);
        AudienceNetworkAds.InitListener initListener = this.A00;
        if (initListener != null) {
            C8G.A04(initListener, new C8F(true, A00(0, 29, 0)));
        }
    }
}
