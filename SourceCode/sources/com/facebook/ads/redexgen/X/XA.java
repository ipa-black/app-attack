package com.facebook.ads.redexgen.X;

import android.content.Context;
import androidx.annotation.Nullable;
import com.facebook.ads.AdSettings;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl;
/* loaded from: assets/audience_network.dex */
public final class XA implements C7P {
    public static XA A07;
    public static byte[] A08;
    public static String[] A09 = {"kZNWMB05A80rolZkZr5gINRkemJedumA", "PGnlsDLswmZGHAGkHnqyou4j", "CQczeQcoxNMNqPeDO5UPH4delPie3CF6", "Ozs7AQnIuhnl4TF488yhCLnc3lqg3Tqv", "QUMQF15y8F49TOv2Mbtf3pi6YRJU7tsl", "iRM3Hx3PCEqf", "8yEJzjy1AvS4vnL", "zEXAgd0MZ6iopjt"};
    @Nullable
    public C0U A00;
    @Nullable
    public C6Q A01;
    @Nullable
    public C7O A02;
    @Nullable
    public InterfaceC05667e A03;
    @Nullable
    public C8I A04;
    @Nullable
    public InterfaceC0833Im A05;
    @Nullable
    public InterfaceC0773Ga A06;

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
        throw new java.lang.RuntimeException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String A06(int r4, int r5, int r6) {
        /*
            byte[] r1 = com.facebook.ads.redexgen.X.XA.A08
            int r0 = r4 + r5
            byte[] r3 = java.util.Arrays.copyOfRange(r1, r4, r0)
            r4 = 0
        L9:
            int r5 = r3.length
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XA.A09
            r0 = 6
            r1 = r2[r0]
            r0 = 7
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L22
        L1c:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L22:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XA.A09
            java.lang.String r1 = "Hv2WK1fJh7GnXaP"
            r0 = 6
            r2[r0] = r1
            java.lang.String r1 = "jwUFRNkRPBL5IaL"
            r0 = 7
            r2[r0] = r1
            if (r4 >= r5) goto L5c
            r5 = r3[r4]
            int r5 = r5 - r6
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XA.A09
            r0 = 4
            r1 = r2[r0]
            r0 = 0
            r2 = r2[r0]
            r0 = 26
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L48
            goto L1c
        L48:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.XA.A09
            java.lang.String r1 = "3jbuj6iR6sIerVLqEJ9xAsC0KuP7QrbG"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "qsuffxm3RCjhy50iWQEl04Txy4tWGAPw"
            r0 = 3
            r2[r0] = r1
            int r0 = r5 + (-98)
            byte r0 = (byte) r0
            r3[r4] = r0
            int r4 = r4 + 1
            goto L9
        L5c:
            java.lang.String r0 = new java.lang.String
            r0.<init>(r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.XA.A06(int, int, int):java.lang.String");
    }

    public static void A07() {
        A08 = new byte[]{-58, -64, -56, -13, -59, -62, -13, -64, -16, 2, 16, 16, 6, 12, 11, -67, 1, -2, 17, -2, -67, 6, 11, 6, 17, 6, -2, 9, 6, 23, 2, 1, 33, 20, 31, 30, 33, 35, 2, 20, 34, 34, 24, 30, 29, -13, 16, 35, 16, -8, 29, 24, 35, 24, 16, 27, 24, 41, 20, 19};
        if (A09[1].length() == 32) {
            throw new RuntimeException();
        }
        String[] strArr = A09;
        strArr[2] = "XQj6tBQR93KUWcmqG7acynHpkyXbPHo4";
        strArr[3] = "0fPU7ngiro1m2vFzwgFa3cBnolZ3o5pA";
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final synchronized void A0C(C1202Xb c1202Xb) {
        if (this.A06 != null) {
            return;
        }
        this.A03 = A01(c1202Xb);
        this.A06 = A05(c1202Xb, this.A03, A03(c1202Xb));
        A09(c1202Xb, A00(c1202Xb, this.A06));
        A0A(c1202Xb, this.A06);
        A0B(c1202Xb, this.A06);
        if (this.A06 != null) {
            this.A06.A5W();
        }
    }

    static {
        A07();
    }

    @Nullable
    public static InterfaceC05345q A00(C1202Xb c1202Xb, @Nullable InterfaceC0773Ga interfaceC0773Ga) {
        if (!IK.A1J(c1202Xb) || interfaceC0773Ga == null) {
            return null;
        }
        return AbstractC05355r.A00().A01(interfaceC0773Ga);
    }

    public static InterfaceC05667e A01(C1202Xb c1202Xb) {
        return C7f.A00().A01(c1202Xb, new XH());
    }

    public static synchronized XA A02() {
        XA xa;
        synchronized (XA.class) {
            if (A07 == null) {
                A07 = new XA();
            }
            xa = A07;
        }
        return xa;
    }

    @Nullable
    public static QG A03(C1202Xb c1202Xb) {
        if (!IK.A1F(c1202Xb)) {
            return null;
        }
        return QY.A01(c1202Xb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C7P
    @Nullable
    /* renamed from: A04 */
    public final synchronized InterfaceC0773Ga A7p() {
        return this.A06;
    }

    @Nullable
    public static InterfaceC0773Ga A05(C1202Xb c1202Xb, InterfaceC05667e interfaceC05667e, @Nullable QG qg) {
        if (!IK.A23(c1202Xb) || qg == null) {
            return null;
        }
        return AbstractC1044Qv.A00().A01(c1202Xb, interfaceC05667e, qg, C0853Jh.A04(c1202Xb), new XB(new C0847Ja(c1202Xb, A06(0, 0, 122), null, JF.A07, AdSettings.getTestAdType() != AdSettings.TestAdType.DEFAULT ? AdSettings.getTestAdType().getAdTypeString() : null, 0, AdSettings.isTestMode(c1202Xb), AdSettings.isMixedAudience(), new JK(), L3.A01(IK.A0I(c1202Xb)), null, null), c1202Xb), C1042Qt.A00().A00());
    }

    public static void A08() {
        String A06 = A06(32, 28, 77);
        if (A09[5].length() == 20) {
            throw new RuntimeException();
        }
        A09[5] = "4ii3kc4oT9MJsiDOLfNQb5ib2";
        JO.A05(A06, A06(8, 24, 59), A06(0, 8, 46));
    }

    public static void A09(C1202Xb c1202Xb, @Nullable InterfaceC05345q interfaceC05345q) {
        if (!IK.A1J(c1202Xb) || interfaceC05345q == null) {
            return;
        }
        AbstractC05325o.A00().A01(interfaceC05345q, c1202Xb);
    }

    public static void A0A(C1202Xb c1202Xb, @Nullable InterfaceC0773Ga interfaceC0773Ga) {
        if (!IK.A0j(c1202Xb) || interfaceC0773Ga == null) {
            return;
        }
        new C6B(c1202Xb, interfaceC0773Ga, new C6C(), DynamicLoaderImpl.getBidderTokenProviderApi().A00());
    }

    public static void A0B(C1202Xb c1202Xb, @Nullable InterfaceC0773Ga interfaceC0773Ga) {
        if (interfaceC0773Ga == null) {
            return;
        }
        IN.A00(c1202Xb, interfaceC0773Ga);
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final InterfaceC0821Ia A5e(C1202Xb c1202Xb) {
        return UB.A01(c1202Xb);
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final synchronized C7O A5t(C7N c7n) {
        if (this.A02 == null) {
            this.A02 = new XC(this);
        }
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final synchronized C6Q A64() {
        if (this.A01 == null) {
            this.A01 = new C1204Xd();
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final synchronized InterfaceC05667e A6R(C7N c7n) {
        if (this.A03 == null) {
            this.A03 = A01(c7n.A01());
        }
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final synchronized InterfaceC05777r A6S(C7N c7n) {
        return new XQ(c7n);
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final synchronized C7Q A6c(C7N c7n) {
        return new C0714Dr(this, c7n);
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    @Nullable
    public final synchronized C0U A6p(C7N c7n) {
        if (!IK.A0v(c7n)) {
            return null;
        }
        if (this.A00 == null) {
            this.A00 = C0V.A00().A01(new XF(c7n));
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final synchronized C7S A7X(C7N c7n) {
        return new XD(c7n);
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final C1202Xb A7Y(Context context) {
        C1202Xb sdkContext = C7M.A00();
        if (sdkContext == null) {
            C1202Xb sdkContext2 = new C1202Xb(context, this);
            C7M.A01(sdkContext2);
            return sdkContext2;
        }
        return sdkContext;
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final synchronized InterfaceC0833Im A7Z(C1202Xb c1202Xb) {
        if (this.A05 == null) {
            this.A05 = new UI(c1202Xb);
        }
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.C7P
    public final synchronized C8I A7f() {
        if (this.A04 == null) {
            this.A04 = new C8I();
            A08();
        }
        return this.A04;
    }
}
