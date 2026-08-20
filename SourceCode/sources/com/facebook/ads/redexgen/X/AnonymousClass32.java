package com.facebook.ads.redexgen.X;

import android.util.Log;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.facebook.ads.redexgen.X.32  reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class AnonymousClass32 extends BN {
    public static byte[] A05;
    public static String[] A06 = {"qvo0GMLMlCI9r2KvubgW", "xANfLU", "vfLxBByg2WxKhxozFOdEyd4oNWbI2yKZ", "M6AXkYe8VdVGq", "jqpt9kLQVEpjtzmdo0kCC28NolZOOofM", "wQfQ1ikODVE5", "8nxGlLt3aQnzE5X", "LzSrLgRmD2ZM4QoK2ANM"};
    public static final Pattern A07;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public final boolean A04;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 52);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A05 = new byte[]{7, 81, 70, 67, 81, 37, 29, 82, 80, 67, 80, 70, 81, 37, 29, 82, 80, 67, 81, 37, 29, 82, 80, 81, 70, 67, 67, 5, 37, 87, 80, 81, 37, 29, 82, 80, 49, 108, 65, 73, 68, 71, 79, 93, 77, 18, 8, 67, 106, 119, 104, 100, 113, 63, 37, 76, 116, 118, 111, 111, 118, 113, 120, 63, 123, 118, 126, 115, 112, 120, 106, 122, 63, 115, 118, 113, 122, 63, 125, 122, 121, 112, 109, 122, 63, 124, 112, 114, 111, 115, 122, 107, 122, 63, 121, 112, 109, 114, 126, 107, 37, 63, 32, 24, 26, 3, 3, 26, 29, 20, 83, 23, 26, 18, 31, 28, 20, 6, 22, 83, 31, 26, 29, 22, 83, 4, 26, 7, 27, 83, 21, 22, 4, 22, 1, 83, 16, 28, 31, 6, 30, 29, 0, 83, 7, 27, 18, 29, 83, 21, 28, 1, 30, 18, 7, 73, 83, 8, 48, 50, 43, 43, 50, 53, 60, 123, 50, 53, 45, 58, 55, 50, 63, 123, 47, 50, 54, 50, 53, 60, 97, 123, 65, 97, 115, 86, 119, 113, 125, 118, 119, 96, 26, 4, 55, 36, 47, 53, 50, 28, 70, 70, 84, 90, 90, 104, 85, 114, 39, 35, 54, 85, 116, 110, 101, 111, 102, 97, 116, 103, 97, 18, 3, 30, 18};
    }

    static {
        A03();
        A07 = Pattern.compile(A02(1, 35, 77));
    }

    public AnonymousClass32() {
        this(null);
    }

    public AnonymousClass32(@Nullable List<byte[]> list) {
        super(A02(182, 10, 38));
        if (list != null && !list.isEmpty()) {
            this.A04 = true;
            String A0Q = C0815Hs.A0Q(list.get(0));
            String formatLine = A02(47, 8, 49);
            HD.A03(A0Q.startsWith(formatLine));
            A06(A0Q);
            A04(new C0799Hc(list.get(1)));
            return;
        }
        this.A04 = false;
    }

    public static long A00(String str) {
        Matcher matcher = A07.matcher(str);
        if (!matcher.matches()) {
            return C.TIME_UNSET;
        }
        return (Long.parseLong(matcher.group(1)) * 60 * 60 * 1000000) + (Long.parseLong(matcher.group(2)) * 60 * 1000000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(4)) * 10000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.BN
    /* renamed from: A01 */
    public final V0 A0b(byte[] bArr, int i, boolean z) {
        ArrayList arrayList = new ArrayList();
        HS hs = new HS();
        C0799Hc c0799Hc = new C0799Hc(bArr, i);
        if (!this.A04) {
            A04(c0799Hc);
        }
        A05(c0799Hc, arrayList, hs);
        FQ[] fqArr = new FQ[arrayList.size()];
        arrayList.toArray(fqArr);
        return new V0(fqArr, hs.A05());
    }

    private void A04(C0799Hc c0799Hc) {
        String A0P;
        do {
            A0P = c0799Hc.A0P();
            if (A0P == null) {
                return;
            }
        } while (!A0P.startsWith(A02(192, 8, 117)));
    }

    private void A05(C0799Hc c0799Hc, List<FQ> list, HS hs) {
        while (true) {
            String A0P = c0799Hc.A0P();
            if (A0P != null) {
                if (!this.A04 && A0P.startsWith(A02(47, 8, 49))) {
                    A06(A0P);
                } else if (A0P.startsWith(A02(37, 10, 28))) {
                    A07(A0P, list, hs);
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006e, code lost:
        if (r8.equals(A02(216, 5, 33)) == false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void A06(java.lang.String r11) {
        /*
            r10 = this;
            r2 = 47
            r1 = 8
            r0 = 49
            java.lang.String r0 = A02(r2, r1, r0)
            int r0 = r0.length()
            java.lang.String r3 = r11.substring(r0)
            r2 = 36
            r1 = 1
            r0 = 41
            java.lang.String r0 = A02(r2, r1, r0)
            java.lang.String[] r7 = android.text.TextUtils.split(r3, r0)
            int r0 = r7.length
            r10.A01 = r0
            r4 = -1
            r10.A02 = r4
            r10.A00 = r4
            r10.A03 = r4
            r6 = 0
        L2a:
            int r0 = r10.A01
            r9 = 0
            if (r6 >= r0) goto L93
            r0 = r7[r6]
            java.lang.String r0 = r0.trim()
            java.lang.String r8 = com.facebook.ads.redexgen.X.C0815Hs.A0M(r0)
            int r1 = r8.hashCode()
            r0 = 100571(0x188db, float:1.4093E-40)
            r5 = 2
            r3 = 1
            if (r1 == r0) goto L82
            r0 = 3556653(0x36452d, float:4.983932E-39)
            if (r1 == r0) goto L71
            r0 = 109757538(0x68ac462, float:5.219839E-35)
            if (r1 == r0) goto L61
        L4e:
            r9 = -1
        L4f:
            if (r9 == 0) goto L5e
            if (r9 == r3) goto L5b
            if (r9 == r5) goto L58
        L55:
            int r6 = r6 + 1
            goto L2a
        L58:
            r10.A03 = r6
            goto L55
        L5b:
            r10.A00 = r6
            goto L55
        L5e:
            r10.A02 = r6
            goto L55
        L61:
            r2 = 216(0xd8, float:3.03E-43)
            r1 = 5
            r0 = 33
            java.lang.String r0 = A02(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto L4e
            goto L4f
        L71:
            r2 = 221(0xdd, float:3.1E-43)
            r1 = 4
            r0 = 82
            java.lang.String r0 = A02(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto L4e
            r9 = 2
            goto L4f
        L82:
            r2 = 213(0xd5, float:2.98E-43)
            r1 = 3
            r0 = 63
            java.lang.String r0 = A02(r2, r1, r0)
            boolean r0 = r8.equals(r0)
            if (r0 == 0) goto L4e
            r9 = 1
            goto L4f
        L93:
            int r0 = r10.A02
            if (r0 == r4) goto L9f
            int r0 = r10.A00
            if (r0 == r4) goto L9f
            int r0 = r10.A03
            if (r0 != r4) goto La1
        L9f:
            r10.A01 = r9
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AnonymousClass32.A06(java.lang.String):void");
    }

    private void A07(String str, List<FQ> list, HS hs) {
        int i = this.A01;
        String A02 = A02(182, 10, 38);
        if (i == 0) {
            Log.w(A02, A02(55, 47, 43) + str);
            return;
        }
        String[] split = str.substring(A02(37, 10, 28).length()).split(A02(36, 1, 41), this.A01);
        if (split.length != this.A01) {
            Log.w(A02, A02(102, 55, 71) + str);
            return;
        }
        long startTimeUs = A00(split[this.A02]);
        String A022 = A02(157, 25, 111);
        if (startTimeUs == C.TIME_UNSET) {
            Log.w(A02, A022 + str);
            return;
        }
        long j = C.TIME_UNSET;
        String str2 = split[this.A00];
        if (!str2.trim().isEmpty()) {
            j = A00(str2);
            if (j == C.TIME_UNSET) {
                Log.w(A02, A022 + str);
                return;
            }
        }
        String replaceAll = split[this.A03].replaceAll(A02(LossReason.LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE, 7, 61), A02(0, 0, 97));
        String A023 = A02(0, 1, 57);
        list.add(new FQ(replaceAll.replaceAll(A02(200, 3, 46), A023).replaceAll(A02(LossReason.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE, 3, 50), A023)));
        hs.A04(startTimeUs);
        if (j != C.TIME_UNSET) {
            list.add(null);
            String[] strArr = A06;
            if (strArr[3].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A06;
            strArr2[3] = "QluocDWeuHRDa";
            strArr2[6] = "JZgOBObbaiMn4tK";
            hs.A04(j);
        }
    }
}
