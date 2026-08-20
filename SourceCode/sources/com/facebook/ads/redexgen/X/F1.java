package com.facebook.ads.redexgen.X;

import com.google.common.primitives.SignedBytes;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;
/* loaded from: assets/audience_network.dex */
public final class F1 extends AbstractC1268Zs implements Serializable {
    public static byte[] A00 = null;
    public static final long serialVersionUID = 5751287062553772011L;

    static {
        A04();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 98);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{72, 79, 85, 68, 83, 82, 85, 72, 85, 72, SignedBytes.MAX_POWER_OF_TWO, 77};
    }

    public F1(List<C1C> list) {
        super(list);
    }

    public static F1 A02(JSONObject jSONObject, C1203Xc c1203Xc) {
        F1 f1 = new F1(AbstractC1268Zs.A07(jSONObject, c1203Xc, new C1265Zp()));
        f1.A0q(jSONObject);
        f1.A0S(A03(0, 12, 67));
        return f1;
    }

    @Override // com.facebook.ads.redexgen.X.C1B
    public final int A0C() {
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.C1B
    public final int A0D() {
        return 0;
    }
}
