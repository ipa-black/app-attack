package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONObject;
/* loaded from: assets/audience_network.dex */
public class SA implements OD {
    public static byte[] A01;
    public final /* synthetic */ C06078w A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 23);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-49, -53, -64, -40};
    }

    public SA(C06078w c06078w) {
        this.A00 = c06078w;
    }

    @Override // com.facebook.ads.redexgen.X.OD
    public final void AD0(String str, JSONObject jSONObject) {
        OM om;
        C1203Xc c1203Xc;
        C1203Xc c1203Xc2;
        if (str.equals(A00(0, 4, 72))) {
            this.A00.AFS();
            c1203Xc = this.A00.A07;
            if (IK.A1Q(c1203Xc)) {
                c1203Xc2 = this.A00.A07;
                c1203Xc2.A0A().AAg();
            }
        }
        om = this.A00.A0F;
        om.A0h(str, jSONObject);
    }
}
