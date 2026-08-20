package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Base64OutputStream;
import androidx.annotation.Nullable;
import com.google.common.primitives.SignedBytes;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.DeflaterOutputStream;
import org.json.JSONObject;
/* loaded from: assets/audience_network.dex */
public final class X7 implements C8M {
    @Nullable
    public static PackageInfo A03;
    public static EnumC0875Kf A04;
    @Nullable
    public static String A05;
    public static boolean A06;
    public static byte[] A07;
    public static String[] A08 = {"rjWu3o3XUIKJimpXtRLH", "N3hUjd9gC1zTrolrzHWDwio6K0KaeF7v", "V8BOZxTrBek9nlJry76rEN1tEiA1lgnf", "2kaCuDD1e44XjFqxj97oS3bW7Y4jUXps", "VcJxC1jbHxk7XwGyeCWvHwY9E4qRcx1x", "dO6RHNbAuKw0kDbwpnJR", "8jPNINbp0cYAxxIn", "ugIdyp1aSJPFHYCiUHctz2XPYC5YD6Ud"};
    public static final C0T[] A09;
    public static final AtomicBoolean A0A;
    public static final AtomicInteger A0B;
    public final C6C A00;
    public final C7N A01;
    public final AnonymousClass82 A02;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A08[6].length() == 9) {
                throw new RuntimeException();
            }
            String[] strArr = A08;
            strArr[1] = "AJGqtkftO03LFXDJsHlFXR4ujVWNfKsn";
            strArr[7] = "0weTThgY8dzMPuXGgH30KJvXs1017h9U";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 73);
            i4++;
        }
    }

    public static void A08() {
        A07 = new byte[]{40, 13, 21, 23, 23, 17, 7, 7, 29, 22, 29, 24, 29, 0, 13, 11, 17, 26, 21, 22, 24, 17, 16, 41, 46, 56, 45, 42, 60, 87, 98, 109, 98, 111, 108, 100, 85, 68, 68, 75, 89, 93, 90, 75, 71, 80, 95, 75, 66, 81, 70, 71, 93, 91, 90, 78, 92, 71, 78, 92, 44, 62, 36, 41, 86, 67, 67, 69, 94, 85, 66, 67, 94, 88, 89, 72, 94, 83, 106, 97, 108, 108, 109, 122, 119, 124, 103, 99, 109, 102, 119, 109, 112, 124, 122, 105, 123, 62, 41, 50, 56, 48, 57, 79, 77, 92, 92, 73, 72, 83, 69, 72, 95, 21, 23, 4, 4, 31, 19, 4, 67, 70, 83, 70, 88, 87, 85, 72, 68, 66, 84, 84, 78, 73, SignedBytes.MAX_POWER_OF_TWO, 88, 72, 87, 83, 78, 72, 73, 84, 92, 89, 76, 89, 71, 72, 74, 87, 91, 93, 75, 75, 81, 86, 95, 71, 87, 72, 76, 81, 87, 86, 75, 71, 91, 87, 77, 86, 76, 74, 65, 111, 106, Byte.MAX_VALUE, 106, 116, 123, 121, 100, 104, 110, 120, 120, 98, 101, 108, 116, 100, 123, Byte.MAX_VALUE, 98, 100, 101, 120, 116, 120, Byte.MAX_VALUE, 106, Byte.MAX_VALUE, 110, 28, 29, 22, 11, 17, 12, 1, 13, 30, 5, 5, 14, 7, 20, 8, 4, 25, 14, 20, 14, 29, 14, 5, 31, 24, 48, 35, 56, 56, 51, 58, 41, 58, 57, 49, 49, 51, 50, 30, 57, 49, 52, 61, 60, 120, 44, 55, 120, 58, 45, 49, 52, 60, 120, 45, 43, 61, 42, 120, 44, 55, 51, 61, 54, 95, 86, 68, 72, 82, 79, 88, 71, 91, 86, 78, 82, 69, 52, 57, 59, 60, 48, 61, 38, 58, 56, 58, 49, 60, 38, 45, 42, 38, 52, 42, 37, 40, 51, 63, 35, 57, 62, 47, 41, 47, 40, 53, 50, 39, 42, 42, 35, 52, 75, 72, 68, 70, 75, 66, 109, 97, 107, 101, 5, 13, 12, 1, 9, 28, 1, 7, 6, 23, 27, 13, 26, 30, 1, 11, 13, 72, 67, 82, 81, 73, 84, 77, 89, 82, 95, 86, 67, SignedBytes.MAX_POWER_OF_TWO, 76, 90, 67, 90, 92, 80, 90, 92, 74, 93, 80, 70, 75, 15, 18, 18, 9, 24, 25, 96, 102, 116, 109, 116, 112, 109, 115, 98, 98, 109, 123, 124, 97, 102, 115, 126, 126, 119, 118, 96, 102, 116, 109, 116, 112, 109, 115, 98, 98, 109, 100, 119, 96, 97, 123, 125, 124, 63, 47, 62, 41, 41, 34, 51, 36, 41, 37, 43, 36, 56, Byte.MAX_VALUE, 111, 126, 105, 105, 98, 115, 123, 101, 104, 120, 100, 53, 34, 45, 57, 37, 39, 54, 39, 36, 47, 42, 47, 50, 63, 28, 10, 28, 28, 6, 0, 1, 16, 27, 6, 2, 10, 70, 93, 90, 71, 74, 34, 36, 50, 37, 40, 54, 48, 50, 57, 35, 66, 85, 88, 68, 85, 70, 85, 89, 71, Byte.MAX_VALUE, 125, 118, 125, 106, 113, 123, 53, 46, 55, 55};
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x01b8, code lost:
        if (r3 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x01ba, code lost:
        r5.put(A03(55, 5, 70), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x01c6, code lost:
        r5.put(A03(org.apache.kerberos.service.KdcConfiguration.DEFAULT_CHANGEPW_PORT, 5, 90), java.lang.String.valueOf(com.facebook.ads.redexgen.X.C0879Kl.A05(r9.A01)));
        r3 = r9.A01.A04().A77();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x01e6, code lost:
        if (r3 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x01e8, code lost:
        r5.put(A03(326, 17, 1), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01f4, code lost:
        r5.put(A03(2, 21, 29), java.lang.String.valueOf(r9.A02.A0C()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0211, code lost:
        if (r9.A02.A03() == (-1)) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0213, code lost:
        r5.put(A03(36, 19, 93), java.lang.String.valueOf(r9.A02.A03()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x022a, code lost:
        r5.put(A03(479, 9, 93), com.facebook.ads.redexgen.X.C8H.A05(r9.A01));
        r5.put(A03(30, 6, 106), com.facebook.ads.redexgen.X.C0884Kq.A01(com.facebook.ads.redexgen.X.AnonymousClass81.A02()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0257, code lost:
        if (com.facebook.ads.redexgen.X.IJ.A05(r9.A01) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0259, code lost:
        r3 = r9.A01.A04().A6m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0263, code lost:
        if (r3 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0265, code lost:
        r5.put(A03(60, 4, 36), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0271, code lost:
        r3 = r9.A01.A04().A7C();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x027f, code lost:
        if (android.text.TextUtils.isEmpty(r3) != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0281, code lost:
        r5.put(A03(355, 14, 70), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x028e, code lost:
        r8 = r9.A01.A06().A6Q();
        r4 = A03(174, 29, 98);
        r7 = A03(143, 31, 81);
        r3 = A03(120, 23, 78);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x02b6, code lost:
        if (r8 == null) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x02b8, code lost:
        r5.put(r3, r8.A08());
        r5.put(r7, java.lang.String.valueOf(r8.A05()));
        r5.put(r4, java.lang.String.valueOf(r8.A06()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x02d5, code lost:
        r5.put(A03(103, 10, 69), com.facebook.ads.redexgen.X.C04110u.A01(r9.A01).A0K());
        r3 = r9.A00.A03(r9.A01);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x02f4, code lost:
        if (r3 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x02fa, code lost:
        if (android.text.TextUtils.isEmpty(r3) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x02fc, code lost:
        r5.put(A03(78, 19, 97), r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0309, code lost:
        r5.put(A03(267, 13, 94), java.lang.String.valueOf(r9.A01.A03().A8F()));
        r5.put(A03(228, 13, 63), java.lang.String.valueOf(com.facebook.ads.redexgen.X.C05727m.A0H(r9.A01)));
        r7 = new java.lang.StringBuilder();
        r4 = com.facebook.ads.redexgen.X.X7.A09;
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0345, code lost:
        if (r3 >= r4.length) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0347, code lost:
        r7.append(r4[r3].A02() + 4000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0354, code lost:
        if (r3 == (r4.length - 1)) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0356, code lost:
        r7.append(A03(1, 1, 104));
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0361, code lost:
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0364, code lost:
        r0 = A03(495, 4, 18);
        r5.put(r3, r0);
        r5.put(r7, r0);
        r5.put(r4, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0384, code lost:
        if (r3 != null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0388, code lost:
        r5.put(A03(com.explorestack.protobuf.openrtb.LossReason.LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS_VALUE, 18, 2), r7.toString());
        r4 = A00(r9.A01);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x039e, code lost:
        if (r4 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x03a0, code lost:
        r6 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x03a1, code lost:
        r5.put(A03(375, 20, 123), java.lang.String.valueOf(r6));
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x03b2, code lost:
        if (r4 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x03b4, code lost:
        r5.put(A03(395, 18, 123), java.lang.String.valueOf(r4.versionCode));
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x03c7, code lost:
        return r5;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.C8M
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.String> A6d() {
        /*
            Method dump skipped, instructions count: 968
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.X7.A6d():java.util.Map");
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.C8M
    public final String A7l(C8K c8k) {
        A09(this.A01, true);
        ByteArrayOutputStream byteArrayOutputStream = null;
        Base64OutputStream base64OutputStream = null;
        DeflaterOutputStream deflaterOutputStream = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 0);
                deflaterOutputStream = new DeflaterOutputStream(base64OutputStream);
                Map<String, String> A6d = A6d();
                if (TextUtils.isEmpty(C05425y.A00().A03())) {
                    C05425y.A07(this.A01);
                }
                A6d.put(A03(280, 4, 52), C05425y.A00().A03());
                A6d.put(A03(469, 10, 62), C8R.A06(this.A02, this.A01, false));
                if (IK.A1S(this.A01)) {
                    A6d.put(A03(103, 10, 69), C04110u.A01(this.A01).A0K());
                }
                Iterator<Map.Entry<String, String>> it = A6d.entrySet().iterator();
                while (it.hasNext()) {
                    if (!c8k.A2O(it.next().getKey())) {
                        it.remove();
                    }
                }
                deflaterOutputStream.write(new JSONObject(A6d).toString().getBytes());
                deflaterOutputStream.close();
                String replaceAll = byteArrayOutputStream.toString().replaceAll(A03(0, 1, 107), A03(0, 0, 37));
                try {
                    deflaterOutputStream.close();
                    base64OutputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException unused) {
                }
                return replaceAll;
            } catch (Throwable th) {
                if (deflaterOutputStream != null) {
                    try {
                        deflaterOutputStream.close();
                    } catch (IOException unused2) {
                        throw th;
                    }
                }
                if (base64OutputStream != null) {
                    base64OutputStream.close();
                }
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
                throw th;
            }
        } catch (IOException e2) {
            throw new RuntimeException(A03(241, 26, 17), e2);
        }
    }

    static {
        A08();
        A0A = new AtomicBoolean();
        A0B = new AtomicInteger(0);
        A05 = null;
        A06 = false;
        A09 = new C0T[]{C0T.A11, C0T.A0f, C0T.A12, C0T.A1A, C0T.A0w, C0T.A0y, C0T.A1w, C0T.A1x, C0T.A1y};
    }

    public X7(C7N c7n, boolean z, C6C c6c) {
        this.A01 = c7n;
        this.A02 = new AnonymousClass82(c7n);
        this.A00 = c6c;
        A09(c7n, z);
    }

    @Nullable
    public static synchronized PackageInfo A00(C7N c7n) {
        PackageInfo packageInfo;
        synchronized (X7.class) {
            if (!A06) {
                A03 = C0887Kt.A00(c7n);
                A06 = true;
            }
            packageInfo = A03;
        }
        return packageInfo;
    }

    public static synchronized EnumC0875Kf A01(C7N c7n) {
        EnumC0875Kf enumC0875Kf;
        synchronized (X7.class) {
            if (A04 == null) {
                A04 = C0876Kg.A00(c7n.A04().A8f());
            }
            enumC0875Kf = A04;
        }
        return enumC0875Kf;
    }

    @Nullable
    @SuppressLint({"CatchGeneralException"})
    public static String A04(C7N c7n, String str) {
        try {
            PackageManager packageManager = c7n.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return C0881Kn.A03(packageManager.getApplicationInfo(str, 0).sourceDir);
        } catch (Exception e2) {
            if (A0A.compareAndSet(false, true)) {
                c7n.A07().A9C(A03(488, 7, 81), C05787s.A1P, new C05797t(e2));
            }
            return null;
        }
    }

    @SuppressLint({"CatchGeneralException"})
    public static void A09(final C7N c7n, boolean z) {
        if (!A0B.compareAndSet(0, 1)) {
            return;
        }
        A01(c7n);
        try {
            final SharedPreferences A00 = C0857Jm.A00(c7n);
            final AnonymousClass82 anonymousClass82 = new AnonymousClass82(c7n);
            final String str = A03(26, 4, 37) + anonymousClass82.A06();
            A05 = A00.getString(str, null);
            FutureTask futureTask = new FutureTask(new Callable<Boolean>() { // from class: com.facebook.ads.redexgen.X.8O
                public static byte[] A04;
                public static String[] A05 = {"XdxsWQHKmAYrPa6mv803llFsbG6xUBv1", "0ZMGl2pSIAaZIEqvxPmnMQII5PMyDfzp", "xK6bN8ERsE3qlK", "WJOztIfqKvqLg1zb8DcclROO5I1m6hYl", "NZ35AS4Ok4U2uFg9Bn0RAVLmEZFAhNaA", "i6NGDYiwjEbiTB59W8H8ewYatIcL2Rm5", "tt3j", "3tQ5yRyF2hXRO3n7qZm1zDaXW"};

                public static String A01(int i, int i2, int i3) {
                    byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
                    int i4 = 0;
                    while (true) {
                        int length = copyOfRange.length;
                        if (A05[2].length() != 14) {
                            throw new RuntimeException();
                        }
                        A05[0] = "ijq86j9eF5Bfako4vk0V9m1lrfYXSgO1";
                        if (i4 >= length) {
                            return new String(copyOfRange);
                        }
                        copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 105);
                        i4++;
                    }
                }

                public static void A02() {
                    A04 = new byte[]{124, 125, 115, 110, 125, 109, 106, 102, 100, 39, 104, 103, 109, 123, 102, 96, 109, 39, Byte.MAX_VALUE, 108, 103, 109, 96, 103, 110, 120, 104, 122, 107, 114, 78, 94, 65, 74, 78, 111, 109, 102, 109, 122, 97, 107};
                }

                static {
                    A02();
                }

                /* JADX INFO: Access modifiers changed from: private */
                /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
                    if (r0.equals(r3) != false) goto L15;
                 */
                @Override // java.util.concurrent.Callable
                /* renamed from: A00 */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Boolean call() throws java.lang.Exception {
                    /*
                        r8 = this;
                        r7 = 0
                        int r1 = android.os.Build.VERSION.SDK_INT
                        r0 = 31
                        if (r1 >= r0) goto L17
                        java.lang.String r3 = android.os.Build.VERSION.CODENAME
                        r2 = 0
                        r1 = 1
                        r0 = 70
                        java.lang.String r0 = A01(r2, r1, r0)
                        boolean r0 = r0.equals(r3)
                        if (r0 == 0) goto L3a
                    L17:
                        com.facebook.ads.redexgen.X.7N r0 = com.facebook.ads.redexgen.X.C7N.this
                        boolean r0 = com.facebook.ads.redexgen.X.IK.A25(r0)
                        if (r0 == 0) goto L3a
                        com.facebook.ads.redexgen.X.82 r0 = r2
                        java.lang.String r3 = r0.A0B()
                        r2 = 6
                        r1 = 19
                        r0 = 96
                        java.lang.String r0 = A01(r2, r1, r0)
                        boolean r0 = r0.equals(r3)
                        if (r0 == 0) goto L3a
                        com.facebook.ads.redexgen.X.7N r0 = com.facebook.ads.redexgen.X.C7N.this
                        java.lang.String r7 = com.facebook.ads.redexgen.X.C0881Kn.A01(r0)
                    L3a:
                        r6 = 1
                        if (r7 != 0) goto L6a
                        com.facebook.ads.redexgen.X.7N r1 = com.facebook.ads.redexgen.X.C7N.this
                        java.lang.String r0 = r1.getPackageName()
                        java.lang.String r0 = com.facebook.ads.redexgen.X.X7.A05(r1, r0)
                        com.facebook.ads.redexgen.X.X7.A06(r0)
                    L4a:
                        android.content.SharedPreferences r0 = r3
                        android.content.SharedPreferences$Editor r2 = r0.edit()
                        java.lang.String r1 = r4
                        java.lang.String r0 = com.facebook.ads.redexgen.X.X7.A02()
                        android.content.SharedPreferences$Editor r0 = r2.putString(r1, r0)
                        r0.apply()
                        java.util.concurrent.atomic.AtomicInteger r1 = com.facebook.ads.redexgen.X.X7.A07()
                        r0 = 2
                        r1.set(r0)
                        java.lang.Boolean r0 = java.lang.Boolean.valueOf(r6)
                        return r0
                    L6a:
                        com.facebook.ads.redexgen.X.7N r0 = com.facebook.ads.redexgen.X.C7N.this
                        boolean r0 = com.facebook.ads.redexgen.X.IK.A1D(r0)
                        if (r0 == 0) goto Lc7
                        com.facebook.ads.redexgen.X.7N r1 = com.facebook.ads.redexgen.X.C7N.this
                        java.lang.String r0 = r1.getPackageName()
                        java.lang.String r4 = com.facebook.ads.redexgen.X.X7.A05(r1, r0)
                        r2 = 1
                        r1 = 5
                        r0 = 119(0x77, float:1.67E-43)
                        java.lang.String r0 = A01(r2, r1, r0)
                        com.facebook.ads.redexgen.X.7t r5 = new com.facebook.ads.redexgen.X.7t
                        r5.<init>(r0)
                        r5.A03(r6)
                        r5.A04(r6)
                        r0 = 0
                        r5.A08(r0)
                        org.json.JSONObject r3 = new org.json.JSONObject
                        r3.<init>()
                        r2 = 25
                        r1 = 5
                        r0 = 114(0x72, float:1.6E-43)
                        java.lang.String r0 = A01(r2, r1, r0)
                        r3.put(r0, r7)
                        r2 = 30
                        r1 = 5
                        r0 = 68
                        java.lang.String r0 = A01(r2, r1, r0)
                        r3.put(r0, r4)
                        r5.A05(r3)
                        com.facebook.ads.redexgen.X.7N r0 = com.facebook.ads.redexgen.X.C7N.this
                        com.facebook.ads.redexgen.X.7r r4 = r0.A07()
                        int r3 = com.facebook.ads.redexgen.X.C05787s.A1I
                        r2 = 35
                        r1 = 7
                        r0 = 97
                        java.lang.String r0 = A01(r2, r1, r0)
                        r4.A9D(r0, r3, r5)
                    Lc7:
                        com.facebook.ads.redexgen.X.X7.A06(r7)
                        goto L4a
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8O.call():java.lang.Boolean");
                }
            });
            Executors.newSingleThreadExecutor().submit(futureTask);
            if (z) {
                futureTask.get();
            }
        } catch (Exception unused) {
            A0B.set(0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C8M
    public final String A7k() {
        return A7l(C8L.A00());
    }
}
