package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;
/* loaded from: assets/audience_network.dex */
public class UL implements InterfaceC1030Qh {
    public static byte[] A02;
    public final /* synthetic */ C1202Xb A00;
    public final /* synthetic */ InterfaceC1028Qf A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 32);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-120, -121, -125, -106, -105, -108, -121, -127, -123, -111, -112, -120, -117, -119};
    }

    public UL(InterfaceC1028Qf interfaceC1028Qf, C1202Xb c1202Xb) {
        this.A01 = interfaceC1028Qf;
        this.A00 = c1202Xb;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1030Qh
    public final void A3v() {
        try {
            IK.A0P(this.A00).A2M(this.A01.A6P().optJSONObject(A00(0, 14, 2)));
        } catch (JSONException e2) {
            this.A00.A07().A3S(e2);
        }
    }
}
