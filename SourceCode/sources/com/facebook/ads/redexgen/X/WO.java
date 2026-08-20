package com.facebook.ads.redexgen.X;

import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public final class WO extends AbstractC0668Bj {
    public static byte[] A01;
    public static String[] A02 = {"lkUmj0P9ANZweJy", "AYR", "2bCiSP20yUx8Jjv69HyX94pfkMFX1Tn5", "GuptQSCxLEDTiFK9bPX0ljmbSmBcx9xx", "QILfBos", "yeLNYaj", "n8HrTtIUehfoTgx", "xV0sp6lxPyztL8QZzt7llBh4QSI4V12v"};
    public long A00;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b2 = (byte) ((copyOfRange[i4] - i3) - 31);
            String[] strArr = A02;
            if (strArr[3].charAt(7) != strArr[7].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[3] = "WF1W4nbxyUcfRBlDsHDD1CgmrC98ElX3";
            strArr2[7] = "aIs3tFZxis4srcfFD6vTbXobqrKXyR4d";
            copyOfRange[i4] = b2;
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A01 = new byte[]{-40, -23, -26, -43, -24, -35, -29, -30, 5, 4, -29, -5, 10, -9, -38, -9, 10, -9};
    }

    static {
        A0A();
    }

    public WO() {
        super(null);
        this.A00 = C.TIME_UNSET;
    }

    public static int A00(C0799Hc c0799Hc) {
        return c0799Hc.A0E();
    }

    public static Boolean A01(C0799Hc c0799Hc) {
        return Boolean.valueOf(c0799Hc.A0E() == 1);
    }

    public static Double A02(C0799Hc c0799Hc) {
        return Double.valueOf(Double.longBitsToDouble(c0799Hc.A0L()));
    }

    public static Object A03(C0799Hc c0799Hc, int i) {
        if (i != 0) {
            String[] strArr = A02;
            if (strArr[3].charAt(7) == strArr[7].charAt(7)) {
                A02[2] = "Zl5TZ6M60aHBYOe9FM2F5W6f579JKUNd";
                if (i == 1) {
                    return A01(c0799Hc);
                }
                if (i == 2) {
                    return A05(c0799Hc);
                }
                if (i == 3) {
                    return A09(c0799Hc);
                }
                String[] strArr2 = A02;
                if (strArr2[0].length() == strArr2[6].length()) {
                    String[] strArr3 = A02;
                    strArr3[0] = "AtnlLuJZPUjXwht";
                    strArr3[6] = "kJYayAh32s2xp3N";
                    if (i != 8) {
                        if (i != 10) {
                            if (i != 11) {
                                return null;
                            }
                            return A07(c0799Hc);
                        }
                        return A06(c0799Hc);
                    }
                    return A08(c0799Hc);
                }
            }
            throw new RuntimeException();
        }
        return A02(c0799Hc);
    }

    public static String A05(C0799Hc c0799Hc) {
        int A0I = c0799Hc.A0I();
        int A06 = c0799Hc.A06();
        c0799Hc.A0Z(A0I);
        return new String(c0799Hc.A00, A06, A0I);
    }

    public static ArrayList<Object> A06(C0799Hc c0799Hc) {
        int A0H = c0799Hc.A0H();
        ArrayList<Object> arrayList = new ArrayList<>(A0H);
        for (int i = 0; i < A0H; i++) {
            int count = A00(c0799Hc);
            arrayList.add(A03(c0799Hc, count));
        }
        return arrayList;
    }

    public static Date A07(C0799Hc c0799Hc) {
        Date date = new Date((long) A02(c0799Hc).doubleValue());
        c0799Hc.A0Z(2);
        return date;
    }

    public static HashMap<String, Object> A08(C0799Hc c0799Hc) {
        int A0H = c0799Hc.A0H();
        HashMap<String, Object> hashMap = new HashMap<>(A0H);
        for (int i = 0; i < A0H; i++) {
            String A05 = A05(c0799Hc);
            int count = A00(c0799Hc);
            hashMap.put(A05, A03(c0799Hc, count));
        }
        return hashMap;
    }

    public static HashMap<String, Object> A09(C0799Hc c0799Hc) {
        HashMap<String, Object> hashMap = new HashMap<>();
        while (true) {
            String A05 = A05(c0799Hc);
            int A00 = A00(c0799Hc);
            if (A00 == 9) {
                return hashMap;
            }
            hashMap.put(A05, A03(c0799Hc, A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0668Bj
    public final void A0B(C0799Hc c0799Hc, long j) throws C9Y {
        if (A00(c0799Hc) == 2) {
            if (!A04(8, 10, 119).equals(A05(c0799Hc)) || A00(c0799Hc) != 8) {
                return;
            }
            Map<String, Object> metadata = A08(c0799Hc);
            String name = A04(0, 8, 85);
            if (metadata.containsKey(name)) {
                double durationSeconds = ((Double) metadata.get(name)).doubleValue();
                int nameType = (durationSeconds > 0.0d ? 1 : (durationSeconds == 0.0d ? 0 : -1));
                if (nameType > 0) {
                    this.A00 = (long) (1000000.0d * durationSeconds);
                    return;
                }
                return;
            }
            return;
        }
        throw new C9Y();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0668Bj
    public final boolean A0C(C0799Hc c0799Hc) {
        return true;
    }

    public final long A0D() {
        return this.A00;
    }
}
