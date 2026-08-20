package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.facebook.ads.redexgen.X.5y  reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C05425y {
    public static byte[] A00;
    public static String[] A01 = {"zJ7sRo3sU3MwvYkxVq5sKXU", "uwqdBBQkb", "sk1pAaPClwmr1DZFuM4XEVJDjMgj4luU", "2DEAuAVf", "LM1sVeBw6DNfIdZzIYsj5hqYQDPEhJFy", "hYSBjzGCwuKpFZFqojmwIwdxMJLMCyYz", "BWOi5Qn34m6VEGTMmYfzcDYeX0GTjOOy", "rscTiGR64sMWr7IEiXLU0M2EjoTwZlLg"};
    public static final AtomicReference<C05405w> A02;
    public static final AtomicReference<String> A03;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 52);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{-98, -90, -95, -100, -84, -77, -94, -81, -81, -90, -95, -94, -95, -97, -88, -97, -84, -93, -99, -20, -25, -23, -28, -30, -14, -7, -24, -11, -11, -20, -25, -24};
    }

    static {
        A05();
        A02 = new AtomicReference<>();
        A03 = new AtomicReference<>(A04(0, 0, 68));
    }

    public static C05405w A00() {
        C05405w c05405w = A02.get();
        if (A01[6].charAt(15) == 'M') {
            String[] strArr = A01;
            strArr[3] = "GQnQs3ZS";
            strArr[1] = "yTwJu7KeR";
            C05405w c05405w2 = c05405w;
            if (c05405w2 == null) {
                C05405w A002 = C05405w.A00();
                String[] strArr2 = A01;
                if (strArr2[3].length() != strArr2[1].length()) {
                    A01[0] = "yvynwBtI7EoQ7kGRkYf58OE";
                    return A002;
                }
            } else {
                return c05405w2;
            }
        }
        throw new RuntimeException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
        if (android.text.TextUtils.isEmpty(r6.A03()) != false) goto L2;
     */
    @androidx.annotation.Nullable
    @android.annotation.SuppressLint({"CatchGeneralException"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.X.C05405w A01(com.facebook.ads.redexgen.X.C7N r5, com.facebook.ads.redexgen.X.C05405w r6) {
        /*
            if (r6 == 0) goto Lc
            java.lang.String r0 = r6.A03()     // Catch: java.lang.Throwable -> L11
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L11
            if (r0 == 0) goto L28
        Lc:
            com.facebook.ads.redexgen.X.5w r0 = com.facebook.ads.redexgen.X.AnonymousClass64.A00(r5)     // Catch: java.lang.Throwable -> L11
            return r0
        L11:
            r0 = move-exception
            com.facebook.ads.redexgen.X.7r r5 = r5.A07()
            int r4 = com.facebook.ads.redexgen.X.C05787s.A1Q
            com.facebook.ads.redexgen.X.7t r3 = new com.facebook.ads.redexgen.X.7t
            r3.<init>(r0)
            r2 = 12
            r1 = 7
            r0 = 6
            java.lang.String r0 = A04(r2, r1, r0)
            r5.A9C(r0, r4, r3)
        L28:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C05425y.A01(com.facebook.ads.redexgen.X.7N, com.facebook.ads.redexgen.X.5w):com.facebook.ads.redexgen.X.5w");
    }

    @Nullable
    @SuppressLint({"CatchGeneralException"})
    public static C05405w A02(C7N c7n, C05405w c05405w, C05415x c05415x) {
        C05435z c05435z = null;
        try {
            if (IJ.A06(c7n) && (c05405w == null || TextUtils.isEmpty(c05405w.A03()))) {
                c05435z = AnonymousClass60.A00(c7n.getContentResolver());
            }
        } catch (Throwable th) {
            c7n.A07().A9C(A04(12, 7, 6), C05787s.A1S, new C05797t(th));
        }
        if (c05435z != null && c05435z.A01 != null) {
            A03.set(c05435z.A01);
            c05415x.A05(c05435z.A01);
        }
        if (c05405w == null && c05435z != null && !TextUtils.isEmpty(c05435z.A00)) {
            return new C05405w(c05435z.A00, c05435z.A02, EnumC05395v.A05);
        }
        return c05405w;
    }

    public static String A03() {
        String attributionId = A03.get();
        if (attributionId == null) {
            return A04(0, 0, 68);
        }
        return attributionId;
    }

    public static void A06(C05415x c05415x) {
        A02.set(c05415x.A02());
        A03.set(c05415x.A03());
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A07(C7N c7n) {
        long j;
        C05405w advertisingIdInfo;
        try {
            C05415x c05415x = new C05415x(c7n);
            A06(c05415x);
            if (A08()) {
                return;
            }
            C05405w advertisingIdInfo2 = A02.get();
            if (advertisingIdInfo2 != null && !TextUtils.isEmpty(advertisingIdInfo2.A03())) {
                j = advertisingIdInfo2.A01();
            } else {
                j = -1;
            }
            if (j > 0 && System.currentTimeMillis() - j < IJ.A00(c7n)) {
                return;
            }
            if (IJ.A07(c7n)) {
                advertisingIdInfo = A01(c7n, A02(c7n, null, c05415x));
            } else {
                advertisingIdInfo = A02(c7n, A01(c7n, null), c05415x);
            }
            if (advertisingIdInfo != null && !TextUtils.isEmpty(advertisingIdInfo.A03())) {
                A02.set(advertisingIdInfo);
                c05415x.A04(advertisingIdInfo);
            }
        } catch (Throwable t) {
            c7n.A07().A9C(A04(12, 7, 6), C05787s.A1R, new C05797t(t));
        }
    }

    public static boolean A08() {
        boolean z = false;
        boolean updated = KV.A04();
        if (updated) {
            if (A01[0].length() != 23) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[3] = "OqjdKmMb";
            strArr[1] = "Sbvi0a9C0";
            String A04 = A04(0, 12, 9);
            boolean updated2 = KV.A05(A04);
            if (updated2) {
                A03.set(KV.A01(A04));
                z = true;
            }
        }
        boolean A042 = KV.A04();
        String[] strArr2 = A01;
        if (strArr2[5].charAt(29) != strArr2[4].charAt(29)) {
            A01[6] = "1QSggKSi3jrfAw1MbHCsavUz8mNGSj1M";
            if (!A042) {
                return z;
            }
        } else {
            A01[6] = "SqTb5lTJEle7YRZML8ItyxwGEN07wws1";
            if (!A042) {
                return z;
            }
        }
        String A043 = A04(19, 13, 79);
        boolean updated3 = KV.A05(A043);
        if (updated3) {
            String A012 = KV.A01(A043);
            AtomicReference<C05405w> atomicReference = A02;
            if (A012 == null) {
                A012 = A04(0, 0, 68);
            }
            atomicReference.set(new C05405w(A012, false, EnumC05395v.A04));
            return true;
        }
        return z;
    }
}
