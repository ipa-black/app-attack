package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.4z  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C05174z {
    public static byte[] A02;
    public static String[] A03 = {"WXpxlTya5H7kpLIT7UUfzIgXOYds4Vfk", "JVDNa5tAOP", "C1CZfaM4quGDjTOWU4x6KBGTC5pPu33J", "VymAVHyd", "K8p7KG0zsDoAf7GmBTiUCUpdPzk9iS4o", "MydLOSuorekD0WEADrXIrTB2aFx1Ufvf", "1zIVUT6Fxq52O6VZbnoN9TsXnO1jN3fj", "z9Q03TMU5lxkReREt3I6AE4mCa6N3G46"};
    @VisibleForTesting
    public final C1247Yx<AbstractC05094r, C05154x> A00 = new C1247Yx<>();
    @VisibleForTesting
    public final C04462d<AbstractC05094r> A01 = new C04462d<>();

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 71);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-99, -59, -61, -60, 112, -64, -62, -65, -58, -71, -76, -75, 112, -74, -68, -79, -73, 112, -96, -94, -107, 112, -65, -62, 112, -96, -97, -93, -92};
    }

    static {
        A02();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0041, code lost:
        if (r5 != 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
        r0 = r9 ^ (-1);
        r3.A00 &= r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x004b, code lost:
        if (r9 != 4) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
        r5 = r3.A02;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004f, code lost:
        r6 = r3.A00;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005e, code lost:
        if (com.facebook.ads.redexgen.X.C05174z.A03[5].charAt(20) == 'R') goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0060, code lost:
        r2 = com.facebook.ads.redexgen.X.C05174z.A03;
        r2[0] = "LDlhycQGZBtlD6IMRSONBH11SqKxQWfy";
        r2[6] = "DCgYh9gvbnrpKHe96mnmPCff01xTtOfJ";
        r0 = r6 & 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006e, code lost:
        if (r0 != 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0070, code lost:
        r7.A00.A0A(r4);
        com.facebook.ads.redexgen.X.C05154x.A02(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0079, code lost:
        r2 = com.facebook.ads.redexgen.X.C05174z.A03;
        r2[7] = "9mfdPnfY5V3FVy8Q2gQ6uDsmmOIXndsz";
        r2[2] = "ekMjHGebRREBiMI4gT56rHDvbCCByAvd";
        r0 = r6 & 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0087, code lost:
        if (r0 != 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008a, code lost:
        r2 = com.facebook.ads.redexgen.X.C05174z.A03;
        r1 = r2[7];
        r2 = r2[2];
        r1 = r1.charAt(19);
        r0 = r2.charAt(19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009e, code lost:
        if (r1 == r0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a5, code lost:
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a6, code lost:
        r2 = com.facebook.ads.redexgen.X.C05174z.A03;
        r2[1] = "AZoo0ocwP6";
        r2[3] = "Mxzo3dXJ";
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b2, code lost:
        if (r9 != 8) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b4, code lost:
        r5 = r3.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c3, code lost:
        if (r5 != 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d5, code lost:
        throw new java.lang.IllegalArgumentException(A01(0, 29, 9));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.facebook.ads.redexgen.X.C4U A00(com.facebook.ads.redexgen.X.AbstractC05094r r8, int r9) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C05174z.A00(com.facebook.ads.redexgen.X.4r, int):com.facebook.ads.redexgen.X.4U");
    }

    @Nullable
    public final C4U A03(AbstractC05094r abstractC05094r) {
        return A00(abstractC05094r, 8);
    }

    @Nullable
    public final C4U A04(AbstractC05094r abstractC05094r) {
        return A00(abstractC05094r, 4);
    }

    public final AbstractC05094r A05(long j) {
        return this.A01.A08(j);
    }

    public final void A06() {
        this.A00.clear();
        this.A01.A09();
    }

    public final void A07() {
        C05154x.A01();
    }

    public final void A08(long j, AbstractC05094r abstractC05094r) {
        this.A01.A0B(j, abstractC05094r);
    }

    public final void A09(AbstractC05094r abstractC05094r) {
        C05154x c05154x = this.A00.get(abstractC05094r);
        if (c05154x == null) {
            c05154x = C05154x.A00();
            this.A00.put(abstractC05094r, c05154x);
        }
        c05154x.A00 |= 1;
    }

    public final void A0A(AbstractC05094r abstractC05094r) {
        C05154x c05154x = this.A00.get(abstractC05094r);
        if (c05154x == null) {
            return;
        }
        c05154x.A00 &= -2;
    }

    public final void A0B(AbstractC05094r abstractC05094r) {
        int A06 = this.A01.A06() - 1;
        while (true) {
            if (A06 < 0) {
                break;
            } else if (abstractC05094r == this.A01.A07(A06)) {
                this.A01.A0A(A06);
                break;
            } else {
                A06--;
            }
        }
        C05154x info = this.A00.remove(abstractC05094r);
        if (info != null) {
            C05154x.A02(info);
        }
    }

    public final void A0C(AbstractC05094r abstractC05094r) {
        A0A(abstractC05094r);
    }

    public final void A0D(AbstractC05094r abstractC05094r, C4U c4u) {
        C05154x c05154x = this.A00.get(abstractC05094r);
        if (c05154x == null) {
            c05154x = C05154x.A00();
            this.A00.put(abstractC05094r, c05154x);
        }
        c05154x.A00 |= 2;
        c05154x.A02 = c4u;
    }

    public final void A0E(AbstractC05094r abstractC05094r, C4U c4u) {
        C05154x c05154x = this.A00.get(abstractC05094r);
        if (c05154x == null) {
            c05154x = C05154x.A00();
            this.A00.put(abstractC05094r, c05154x);
        }
        c05154x.A01 = c4u;
        c05154x.A00 |= 8;
    }

    public final void A0F(AbstractC05094r abstractC05094r, C4U c4u) {
        C05154x c05154x = this.A00.get(abstractC05094r);
        if (c05154x == null) {
            c05154x = C05154x.A00();
            this.A00.put(abstractC05094r, c05154x);
        }
        c05154x.A02 = c4u;
        c05154x.A00 |= 4;
    }

    public final void A0G(InterfaceC05164y interfaceC05164y) {
        for (int size = this.A00.size() - 1; size >= 0; size--) {
            AbstractC05094r A09 = this.A00.A09(size);
            C05154x record = this.A00.A0A(size);
            if ((record.A00 & 3) == 3) {
                interfaceC05164y.AFi(A09);
            } else {
                int index = record.A00;
                if ((index & 1) != 0) {
                    if (record.A02 == null) {
                        interfaceC05164y.AFi(A09);
                    } else {
                        C4U c4u = record.A02;
                        C4U c4u2 = record.A01;
                        if (A03[5].charAt(20) == 'R') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A03;
                        strArr[1] = "fJVAe19tdP";
                        strArr[3] = "3fJsXDGb";
                        interfaceC05164y.ADf(A09, c4u, c4u2);
                    }
                } else if ((record.A00 & 14) == 14) {
                    interfaceC05164y.ADd(A09, record.A02, record.A01);
                } else if ((record.A00 & 12) == 12) {
                    interfaceC05164y.ADh(A09, record.A02, record.A01);
                } else {
                    int index2 = record.A00;
                    if ((index2 & 4) != 0) {
                        interfaceC05164y.ADf(A09, record.A02, null);
                    } else {
                        int index3 = record.A00;
                        if ((index3 & 8) != 0) {
                            interfaceC05164y.ADd(A09, record.A02, record.A01);
                        }
                    }
                }
            }
            C05154x.A02(record);
        }
    }

    public final boolean A0H(AbstractC05094r abstractC05094r) {
        C05154x record = this.A00.get(abstractC05094r);
        return (record == null || (record.A00 & 1) == 0) ? false : true;
    }

    public final boolean A0I(AbstractC05094r abstractC05094r) {
        C05154x record = this.A00.get(abstractC05094r);
        return (record == null || (record.A00 & 4) == 0) ? false : true;
    }
}
