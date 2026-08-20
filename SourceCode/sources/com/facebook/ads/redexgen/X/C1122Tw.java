package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Tw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1122Tw implements C6E {
    public static byte[] A03;
    public static String[] A04 = {"WE91vPqiHLcyJwrbQHRJcIvZwn5D9l", "3LK2x46Pp3Ld9onr8DyN9Ggm", "60IU9PqapOW3gkaytJRkZEg3", "UqNMzTGRyBNLAx", "QjYmXRpW4", "DeQ01HErfJf7NLfnuVX6corDAbYDzPur", "bhlqPTI7mETXQlgoFXHPJBBhjQPpzoup", "oYTMQ3SHL"};
    public final /* synthetic */ C1283a7 A00;
    public final /* synthetic */ C1115Tp A01;
    public final /* synthetic */ boolean A02;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 60);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-16, 11, 19, 22, 15, 14, -54, 30, 25, -54, 14, 25, 33, 24, 22, 25, 11, 14, -54, 11, -54, 23, 15, 14, 19, 11, -40};
    }

    static {
        A01();
    }

    public C1122Tw(C1115Tp c1115Tp, C1283a7 c1283a7, boolean z) {
        this.A01 = c1115Tp;
        this.A00 = c1283a7;
        this.A02 = z;
    }

    @Override // com.facebook.ads.redexgen.X.C6E
    public final void AAT() {
        C1203Xc c1203Xc;
        long j;
        InterfaceC1114To interfaceC1114To;
        InterfaceC1114To interfaceC1114To2;
        if (this.A01.A0a != null) {
            this.A01.A0a.A0J();
            this.A01.A0a = null;
        }
        AdErrorType adErrorType = AdErrorType.CACHE_FAILURE_ERROR;
        String A00 = A00(0, 27, 110);
        c1203Xc = this.A01.A0c;
        C0R A0E = c1203Xc.A0E();
        j = this.A01.A00;
        A0E.A2b(LC.A01(j), adErrorType.getErrorCode(), A00);
        interfaceC1114To = this.A01.A0G;
        if (interfaceC1114To != null) {
            C1115Tp c1115Tp = this.A01;
            String[] strArr = A04;
            String errorMessage = strArr[4];
            if (errorMessage.length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A04[6] = "7cQ3648pyLFx7h83cxUuTBVDS0jRS450";
            interfaceC1114To2 = c1115Tp.A0G;
            interfaceC1114To2.AAv(JA.A01(adErrorType, A00));
        }
    }

    @Override // com.facebook.ads.redexgen.X.C6E
    public final void AAb() {
        InterfaceC1114To interfaceC1114To;
        EnumC0839Is enumC0839Is;
        C1203Xc c1203Xc;
        InterfaceC1114To interfaceC1114To2;
        C1203Xc c1203Xc2;
        boolean A0q;
        InterfaceC1114To interfaceC1114To3;
        C0740Er c0740Er;
        C0740Er c0740Er2;
        C1115Tp c1115Tp = this.A01;
        c1115Tp.A0a = this.A00;
        if (this.A02) {
            c0740Er = c1115Tp.A0A;
            if (c0740Er != null) {
                c0740Er2 = this.A01.A0A;
                String[] strArr = A04;
                if (strArr[4].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A04;
                strArr2[4] = "vb7V14ygc";
                strArr2[7] = "eJXYUqUMt";
                c0740Er2.A0H();
            }
        }
        interfaceC1114To = this.A01.A0G;
        if (interfaceC1114To != null) {
            enumC0839Is = this.A01.A0E;
            if (enumC0839Is.equals(EnumC0839Is.A04)) {
                A0q = this.A01.A0q();
                if (!A0q) {
                    interfaceC1114To3 = this.A01.A0G;
                    interfaceC1114To3.ABg();
                }
            }
            if (this.A02) {
                c1203Xc = this.A01.A0c;
                if (!IK.A1K(c1203Xc) || this.A01.A0z() == null || !this.A01.A0z().A0a()) {
                    interfaceC1114To2 = this.A01.A0G;
                    interfaceC1114To2.AA8();
                    return;
                }
                C1115Tp c1115Tp2 = this.A01;
                c1203Xc2 = c1115Tp2.A0c;
                c1115Tp2.A0M = ON.A01(c1203Xc2, this.A01.A0z(), 4, new C1123Tx(this));
            }
        }
    }
}
