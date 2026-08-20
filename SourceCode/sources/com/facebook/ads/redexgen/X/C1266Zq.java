package com.facebook.ads.redexgen.X;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.Zq  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1266Zq extends C1B implements Serializable {
    public static byte[] A06 = null;
    public static String[] A07 = {"Y1a5U13ty71QFnyeZB3YxisAAvg7l3fM", "vP", "roZ2Db2w31DgWTY1oGehTdyGNewX8eXS", "I2NTYMYLYsNyCs0logd6ULXXnbjyHCad", "3brQnbpmNBxYuH5lF741sBi9dGi0pOZr", "3fAMLw4w5Yud0wL2utfDbR4mKZlWQuB2", "wSrWvvXZ9ekOd4qM7VWdouqMZx6NVgDc", "r9"};
    public static final long serialVersionUID = 3751287062553772011L;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public final String A04 = UUID.randomUUID().toString();
    public final List<C0743Eu> A05;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A07;
            if (strArr[1].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[0] = "ksKrUe0otL7CQDvNz8iG7T5OcxZuVq1Y";
            strArr2[4] = "xaZ8PqWmutKQFInRkVw3BesrM2XhV7TN";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 107);
            i4++;
        }
    }

    public static void A04() {
        A06 = new byte[]{-17, -14, 1, -7, -2, -9, -1, 4, -11, 6, -9, 8, -9, 3, 9, 70, 75, 68, 76, 81, 72, 71, 66, 68, 71, 86, 66, 70, 82, 88, 81, 87, 76, 81, 74, 82, 87, 78, 77, 72, 74, 77, 92, 72, 86, 74, 97, 72, 77, 94, 91, 74, 93, 82, 88, 87, 74, 79, 72, 80, 85, 76, 75, 70, 72, 75, 90, 70, 93, 72, 89, 80, 76, 85, 91, -38, -29, -39, -44, -40, -42, -25, -39, -44, -42, -22, -23, -28, -44, -40, -31, -28, -24, -38, -44, -23, -34, -30, -38};
    }

    static {
        A04();
    }

    public C1266Zq(List<C0743Eu> list) {
        this.A05 = list;
    }

    public static C1266Zq A02(JSONObject jSONObject, C1203Xc c1203Xc) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray(A03(0, 3, 35));
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(C0743Eu.A02(jSONArray.getJSONObject(i), c1203Xc));
        }
        C1266Zq c1266Zq = new C1266Zq(arrayList);
        JSONObject jSONObject2 = jSONObject.getJSONObject(A03(3, 12, 43));
        c1266Zq.A01 = jSONObject2.optInt(A03(15, 17, 120), arrayList.size());
        c1266Zq.A03 = jSONObject2.optInt(A03(32, 24, 126), 0);
        c1266Zq.A02 = jSONObject2.optInt(A03(75, 24, 10), 0);
        c1266Zq.A00 = jSONObject2.optInt(A03(56, 19, 124), 2);
        c1266Zq.A0U(jSONObject2);
        return c1266Zq;
    }

    @Override // com.facebook.ads.redexgen.X.C1B
    public final int A0C() {
        return 2;
    }

    @Override // com.facebook.ads.redexgen.X.C1B
    public final int A0D() {
        return this.A03 + this.A02;
    }

    public final int A0b() {
        return this.A00;
    }

    public final int A0c() {
        return this.A01;
    }

    public final int A0d() {
        return this.A02;
    }

    public final C0743Eu A0e(int i) {
        return this.A05.get(i);
    }

    public final String A0f() {
        return this.A04;
    }

    public final void A0g(int i) {
        this.A05.remove(i);
        this.A01--;
    }

    public final boolean A0h() {
        return this.A00 == 0;
    }
}
