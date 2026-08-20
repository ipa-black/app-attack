package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import org.json.JSONException;
/* renamed from: com.facebook.ads.redexgen.X.Tf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1105Tf implements QH {
    public static byte[] A03;
    public final /* synthetic */ long A00;
    public final /* synthetic */ C0847Ja A01;
    public final /* synthetic */ C0849Jd A02;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 10);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{99, 96, 103, 103, 96, 50, 103, 101, 18, 23, 31, 66, 21, 68, 21, 31, 1, 24, 4, 5, 14, 51, 40, 46, 59, 63, 34, 36, 37, 113, 107, 108, 90, 77, 73, 90, 77, 31, 90, 77, 77, 80, 77, 31, 80, 92, 92, 74, 77, 77, 90, 91, 75, 125, 106, 110, 125, 106, 56, 106, 125, 104, 116, 113, 125, 124, 56, 107, 109, 123, 123, 125, 107, 107, 126, 109, 116, 116, 97, 75, 74, 103, 75, 73, 84, 72, 65, 80, 65, 95, 94, 117, 66, 66, 95, 66};
    }

    public C1105Tf(C0849Jd c0849Jd, C0847Ja c0847Ja, long j) {
        this.A02 = c0849Jd;
        this.A01 = c0847Ja;
        this.A00 = j;
    }

    private final void A02(QT qt) {
        C1203Xc c1203Xc;
        long j;
        C1203Xc c1203Xc2;
        long j2;
        C0850Je c0850Je;
        C1203Xc c1203Xc3;
        C1203Xc c1203Xc4;
        long j3;
        JZ.A06(this.A01);
        try {
            QF response = qt.A00();
            if (response != null) {
                String A5s = response.A5s();
                c0850Je = this.A02.A05;
                c1203Xc3 = this.A02.A04;
                C0852Jg serverResponse = c0850Je.A06(c1203Xc3, A5s, this.A00);
                if (serverResponse.A01() == EnumC0851Jf.A03) {
                    C1102Tb c1102Tb = (C1102Tb) serverResponse;
                    String A04 = c1102Tb.A04();
                    AdErrorType adErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(c1102Tb.A03(), AdErrorType.ERROR_MESSAGE);
                    if (A04 != null) {
                        A5s = A04;
                    }
                    c1203Xc4 = this.A02.A04;
                    C0R A0E = c1203Xc4.A0E();
                    j3 = this.A02.A00;
                    A0E.A2k(LC.A01(j3), adErrorTypeFromCode.getErrorCode(), A5s, adErrorTypeFromCode.isPublicError());
                    this.A02.A0D(JA.A01(adErrorTypeFromCode, A5s));
                    return;
                }
            }
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String errorMessage = qt.getMessage();
            c1203Xc2 = this.A02.A04;
            C0R A0E2 = c1203Xc2.A0E();
            j2 = this.A02.A00;
            A0E2.A2k(LC.A01(j2), adErrorType.getErrorCode(), errorMessage, adErrorType.isPublicError());
            this.A02.A0D(JA.A01(adErrorType, errorMessage));
        } catch (JSONException e2) {
            AdErrorType adErrorType2 = AdErrorType.NETWORK_ERROR;
            String message = qt.getMessage();
            c1203Xc = this.A02.A04;
            C0R A0E3 = c1203Xc.A0E();
            j = this.A02.A00;
            long A01 = LC.A01(j);
            int errorCode = adErrorType2.getErrorCode();
            A0E3.A2k(A01, errorCode, A00(16, 15, 65) + e2.getMessage(), adErrorType2.isPublicError());
            this.A02.A0D(JA.A01(adErrorType2, message));
        }
    }

    @Override // com.facebook.ads.redexgen.X.QH
    public final void AAZ(QF qf) {
        JO.A05(A00(79, 10, 46), A00(52, 27, 18), A00(0, 8, 90));
        if (qf != null) {
            String A5s = qf.A5s();
            JZ.A06(this.A01);
            this.A02.A0N(A5s, this.A00, this.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.X.QH
    public final void AAw(Exception exc) {
        C1203Xc c1203Xc;
        long j;
        JO.A05(A00(89, 7, 58), A00(31, 21, 53), A00(8, 8, 45));
        if (QT.class.equals(exc.getClass())) {
            A02((QT) exc);
            return;
        }
        AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
        String errorMessage = exc.getMessage();
        c1203Xc = this.A02.A04;
        C0R A0E = c1203Xc.A0E();
        j = this.A02.A00;
        A0E.A2k(LC.A01(j), adErrorType.getErrorCode(), errorMessage, adErrorType.isPublicError());
        this.A02.A0D(JA.A01(adErrorType, errorMessage));
    }
}
