package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.1n  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C04301n {
    public static byte[] A00;
    public static String[] A01 = {"kdNZsDbIr2FjUgQ6", "G4tbE8YXKkBHtbRzjHgF1iVs8BhQX3ki", "rgsd1nh14jUfY0oEDkCzVbJlkUwrdBXO", "6d8i19T6TQ9xRiUYh6SOmARBfT83lkdi", "2FsjHYpAfMpiihTdUse", "xtyrzkpFCSmXtl0pVvZtRxgukiiALNOU", "PnjWz3Ubzat8tEiN6RTB47L4MZQANY1H", "IONaBzwOxfylvpW8Ch"};

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            String[] strArr = A01;
            if (strArr[6].charAt(12) != strArr[5].charAt(12)) {
                break;
            }
            A01[2] = "wyIfRhN1EoOdsBbK5VRzuRP5Lc7uqmgb";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            byte b2 = (byte) ((copyOfRange[i4] - i3) - 100);
            if (A01[0].length() == 15) {
                break;
            }
            String[] strArr2 = A01;
            strArr2[3] = "fUzr4JaNgjTtoWHz8k6HkVts9HpSP1Qi";
            strArr2[1] = "zuQx1GaumRIGoFj6MrcQJkCLkICnzrhi";
            copyOfRange[i4] = b2;
            i4++;
        }
        throw new RuntimeException();
    }

    public static void A01() {
        A00 = new byte[]{-88, -30, -18, -25, -26};
    }

    static {
        A01();
    }

    public static void A02(C1203Xc c1203Xc, AbstractC1268Zs abstractC1268Zs, boolean z, InterfaceC04281l interfaceC04281l) {
        if (!IK.A1a(c1203Xc)) {
            C6M c6m = new C6M(c1203Xc);
            C1X A06 = abstractC1268Zs.A0h().A0D().A06();
            c6m.A0d(new C0829Ii(abstractC1268Zs.A0m(), c1203Xc.A09()));
            if (A06 == null) {
                interfaceC04281l.ABz(AdError.CACHE_ERROR);
                return;
            } else if (A06.A0J()) {
                interfaceC04281l.AC0();
                if (A01[2].charAt(7) != '1') {
                    throw new RuntimeException();
                }
                A01[0] = "84TqyqDRqUmJCVM8";
                return;
            } else {
                C6I c6i = new C6I(A06.A0E(), abstractC1268Zs.A0L(), abstractC1268Zs.A0K());
                c6i.A04 = true;
                if (IK.A1T(c1203Xc)) {
                    c6i.A03 = A00(0, 5, 22);
                }
                int i = C04271k.A00[A06.A09().ordinal()];
                if (i == 1 || i == 2) {
                    c6m.A0X(c6i);
                }
                c6m.A0b(new C6K(abstractC1268Zs.A0k().A01(), -1, -1, abstractC1268Zs.A0L(), abstractC1268Zs.A0K()));
                c6m.A0b(new C6K(A06.A0D(), -1, -1, abstractC1268Zs.A0L(), abstractC1268Zs.A0K()));
                c6m.A0W(new C1256Zg(c1203Xc, interfaceC04281l, c6m, A06, z), new C6F(abstractC1268Zs.A0L(), abstractC1268Zs.A0K()));
                return;
            }
        }
        interfaceC04281l.AC0();
    }
}
