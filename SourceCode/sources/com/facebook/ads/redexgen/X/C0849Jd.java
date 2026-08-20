package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: com.facebook.ads.redexgen.X.Jd  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C0849Jd {
    public static byte[] A07;
    public static final LO A08;
    public static final Executor A09;
    public long A00;
    @Nullable
    public Jc A01;
    @Nullable
    public Map<String, String> A02;
    public final C2D A03;
    public final C1203Xc A04;
    public final C0850Je A05;
    public final String A06;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(copyOfRange);
    }

    public static void A0A() {
        A07 = new byte[]{60, 61, 62, 104, 63, 105, 104, 105, 122, 105, 107, 119, 117, 78, 65, 68, 72, 67, 89, 82, 95, 72, 92, 88, 72, 94, 89, 82, 68, 73, 98, 88, 11, 121, 101, 17, 11, 100, 101, 10, 108, 99, 102, 102, 10, 88, 79, 73, 79, 67, 92, 79, 78, 20, 53, 122, 28, 51, 54, 54, 122, 63, 40, 40, 53, 40, 122, 57, 53, 62, 63, 122, 1, Byte.MAX_VALUE, 41, 7, 122, Byte.MAX_VALUE, 41, 15, 13, 6, 13, 26, 1, 11, 81, 90, 75, 72, 80, 77, 84, 40, 41, 0, 47, 42, 42, 14, 41, 41, 45};
    }

    static {
        A0A();
        A08 = new LO();
        A09 = Executors.newCachedThreadPool(A08);
    }

    public C0849Jd(C1203Xc c1203Xc) {
        this(c1203Xc, C2E.A00(c1203Xc.A01()));
    }

    public C0849Jd(C1203Xc c1203Xc, C2D c2d) {
        this.A00 = -1L;
        this.A04 = c1203Xc;
        this.A05 = C0850Je.A00();
        this.A06 = C0853Jh.A01(c1203Xc);
        this.A03 = c2d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public QH A03(long j, C0847Ja c0847Ja) {
        return new C1105Tf(this, c0847Ja, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09() {
        C1203Xc c1203Xc = this.A04;
        if (c1203Xc == null || !QY.A0A(c1203Xc)) {
            return;
        }
        C05797t c05797t = new C05797t(A05(8, 5, 107));
        c05797t.A03(1);
        this.A04.A07().A9C(A05(86, 7, 111), C05787s.A1w, c05797t);
    }

    private void A0B(int i, String str) {
        String A05 = A05(93, 10, 22);
        JO.A05(A05, A05(37, 16, 122), A05(0, 8, 90));
        JO.A04(A05, String.format(Locale.US, A05(53, 26, 10), Integer.valueOf(i), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0C(JA ja) {
        Jc jc = this.A01;
        if (jc != null) {
            jc.AAv(ja);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(JA ja) {
        LF.A00(new C1104Td(this, ja));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0K(C1103Tc c1103Tc) {
        Jc jc = this.A01;
        if (jc != null) {
            jc.ACh(c1103Tc);
        }
    }

    private void A0L(C1103Tc c1103Tc) {
        C7T syncModule;
        LF.A00(new Te(this, c1103Tc));
        if (IK.A1v(this.A04) && (syncModule = this.A04.A05()) != null) {
            syncModule.A5W();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0M(String str, long j, C0847Ja c0847Ja) {
        String str2;
        try {
            try {
                C0852Jg A06 = this.A05.A06(this.A04, str, j);
                C8A A00 = A06.A00();
                if (A00 != null) {
                    IK.A0P(this.A04).A2L(A00.A08());
                    this.A04.A07().A9i();
                    this.A03.A0N(A00.A06());
                    JZ.A05(A00.A05().A0B(), c0847Ja);
                    LZ.A01(this.A04, A09, A00);
                    C05797t c05797t = new C05797t(A05(30, 7, 123) + C0879Kl.A02());
                    c05797t.A04(1);
                    c05797t.A08(false);
                    this.A04.A07().A9c(A05(79, 7, 56), C05787s.A1W, c05797t);
                }
                int i = C0848Jb.A00[A06.A01().ordinal()];
                if (i == 1) {
                    C1103Tc c1103Tc = (C1103Tc) A06;
                    if (A00 != null) {
                        if (A00.A05().A0E()) {
                            JZ.A07(str, c0847Ja);
                        }
                        if (this.A02 != null) {
                            str2 = this.A02.get(A05(13, 17, 93));
                        } else {
                            str2 = null;
                        }
                        if (!TextUtils.isEmpty(A06.A02()) && !TextUtils.isEmpty(str2)) {
                            this.A04.A02().AER(this.A04, str2, A06.A02());
                        }
                    }
                    this.A04.A0E().A2l(LC.A01(this.A00));
                    A0L(c1103Tc);
                } else if (i != 2) {
                    AdErrorType adErrorType = AdErrorType.UNKNOWN_RESPONSE;
                    this.A04.A0E().A2k(LC.A01(this.A00), adErrorType.getErrorCode(), str, adErrorType.isPublicError());
                    A0D(JA.A01(adErrorType, str));
                } else {
                    C1102Tb c1102Tb = (C1102Tb) A06;
                    String A04 = c1102Tb.A04();
                    AdErrorType adErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(c1102Tb.A03(), AdErrorType.ERROR_MESSAGE);
                    A0B(c1102Tb.A03(), A04);
                    if (A04 == null) {
                        A04 = str;
                    }
                    this.A04.A0E().A2k(LC.A01(this.A00), adErrorTypeFromCode.getErrorCode(), A04, adErrorTypeFromCode.isPublicError());
                    A0D(JA.A01(adErrorTypeFromCode, A04));
                }
            } catch (Exception e2) {
                e = e2;
                String message = e.getMessage();
                AdErrorType adErrorType2 = AdErrorType.PARSER_FAILURE;
                this.A04.A0E().A2k(LC.A01(this.A00), adErrorType2.getErrorCode(), message, adErrorType2.isPublicError());
                A0D(JA.A01(adErrorType2, message));
            }
        } catch (Exception e3) {
            e = e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N(String str, long j, C0847Ja c0847Ja) {
        A09.execute(new C1106Tg(this, str, j, c0847Ja));
    }

    public final void A0O(C0847Ja c0847Ja) {
        this.A00 = System.currentTimeMillis();
        AnonymousClass81.A0B(this.A04);
        if (JZ.A08(c0847Ja)) {
            LQ.A06.execute(new C1108Ti(this));
            String A02 = JZ.A02(c0847Ja);
            if (A02 != null) {
                this.A04.A0E().AFn();
                A0N(A02, 0L, c0847Ja);
                return;
            }
            AdErrorType adErrorType = AdErrorType.LOAD_TOO_FREQUENTLY;
            this.A04.A0E().A2k(LC.A01(this.A00), adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage(), adErrorType.isPublicError());
            A0D(JA.A01(adErrorType, null));
            return;
        }
        A09.execute(new C1107Th(this, c0847Ja));
    }

    public final void A0P(Jc jc) {
        this.A01 = jc;
    }
}
