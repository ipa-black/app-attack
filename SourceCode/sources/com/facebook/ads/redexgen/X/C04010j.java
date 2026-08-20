package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.0j  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04010j {
    public static byte[] A00;
    public static String[] A01 = {"4Fi3cRKjKwjo", "pfwDmZC0EgnSHGG3akphHDiSxRpjxWfc", "OwKyFlCBYoW0NHpoiuFf2exuC", "FTixXnraWBf7yQ9sseM6khJqknPB2", "87lno6sBf8EnLpq9v2WrftgOrdI4V", "hcLSbPhFObKmfxN2jEGb0Jf71EM4", "MV7VLhl", "AE1L1nhQpeYYJvXkfFkincgpQRIdvuit"};

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{101, SignedBytes.MAX_POWER_OF_TWO, 4, 77, 87, 4, 77, 74, 82, 69, 72, 77, SignedBytes.MAX_POWER_OF_TWO, 69, 80, 65, SignedBytes.MAX_POWER_OF_TWO, 4, 83, 77, 80, 76, 75, 81, 80, 4, 80, 75, 79, 65, 74, 10, 10, 27, 2, 39, 38, 55, 38, 32, 55, 42, 44, 45, 28, 48, 55, 49, 42, 45, 36, 48, 35, 36, 60, 43, 38, 35, 46, 43, 62, 35, 37, 36, 21, 40, 47, 34, 43, 60, 35, 37, 56, 98, 115, 96, 97, 123, 124, 117};
    }

    static {
        A05();
    }

    public static EnumC03990h A00(JSONObject jSONObject) {
        return EnumC03990h.A00(jSONObject.optString(A02(52, 21, 114)));
    }

    public static InterfaceC04000i A01(C1203Xc c1203Xc, JSONObject jSONObject, String str) {
        return new C1299aN(jSONObject, c1203Xc, str);
    }

    @Nullable
    public static Collection<String> A03(C1203Xc c1203Xc, JSONObject jSONObject) {
        JSONArray jSONArray = null;
        try {
            String detectionStringJSON = jSONObject.optString(A02(35, 17, 123));
            if (!TextUtils.isEmpty(detectionStringJSON)) {
                JSONArray detectionStringsArray = new JSONArray(detectionStringJSON);
                jSONArray = detectionStringsArray;
            }
        } catch (JSONException e2) {
            c1203Xc.A07().A9C(A02(73, 7, 42), C05787s.A2B, new C05797t(e2));
        }
        return A04(jSONArray);
    }

    @Nullable
    public static Collection<String> A04(@Nullable JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.optString(i));
        }
        return hashSet;
    }

    public static boolean A06(C1203Xc c1203Xc, InterfaceC04000i interfaceC04000i, InterfaceC0821Ia interfaceC0821Ia) {
        EnumC03990h A6w = interfaceC04000i.A6w();
        if (A6w != null) {
            EnumC03990h invalidationBehavior = EnumC03990h.A03;
            if (A6w != invalidationBehavior) {
                boolean packageInstalled = false;
                Collection<String> A6U = interfaceC04000i.A6U();
                if (A6U == null || A6U.isEmpty()) {
                    return false;
                }
                Iterator<String> it = A6U.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (C0887Kt.A04(c1203Xc, it.next())) {
                        packageInstalled = true;
                        break;
                    }
                }
                EnumC03990h invalidationBehavior2 = EnumC03990h.A02;
                if (packageInstalled != (A6w == invalidationBehavior2)) {
                    return false;
                }
                String A6B = interfaceC04000i.A6B();
                boolean isEmpty = TextUtils.isEmpty(A6B);
                String[] strArr = A01;
                String clientToken = strArr[7];
                if (clientToken.charAt(25) != strArr[1].charAt(25)) {
                    throw new RuntimeException();
                }
                A01[2] = "Y0XUyINdugWnNFuKX72emGLWk";
                if (!isEmpty) {
                    interfaceC0821Ia.A9I(A6B, null);
                    return true;
                }
                c1203Xc.A07().A9C(A02(32, 3, 83), C05787s.A0Z, new C05797t(A02(0, 32, 28)));
                return true;
            }
        }
        return false;
    }
}
