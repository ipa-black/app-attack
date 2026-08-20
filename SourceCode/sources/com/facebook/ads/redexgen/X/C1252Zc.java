package com.facebook.ads.redexgen.X;

import android.view.View;
import java.util.Arrays;
/* renamed from: com.facebook.ads.redexgen.X.Zc  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1252Zc implements InterfaceC04120v {
    public static byte[] A02;
    public static String[] A03 = {"7FIKHU9lgq27", "AgQqvAltXhi1bYF8zppFCZ", "CRAmwsbXNtyv0vmCJJ9qOPCwxUiND3E6", "ItQqdqoRYHMWKQzbVRTeHzNwEAi", "W2szVhKnaW", "HNVKE5hkEvipBMdeuLWXlSQ07SgK2Jmi", "9NOG2BA2dnlUEqMWgY53wMXC47FXKBrl", "EneshuO9jiHnlHF2bjWwp7WA0EKVaMOF"};
    public final /* synthetic */ C0742Et A00;
    public final /* synthetic */ Runnable A01;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b2 = (byte) ((copyOfRange[i4] - i3) - 16);
            if (A03[2].charAt(4) == 'y') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[5] = "2VG06oAYTcRzKBDE7gWFCU36hzL5px1b";
            strArr[7] = "j1xG2z3v9jq0UO66H2WqYNbpklLAu6IG";
            copyOfRange[i4] = b2;
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{115, 114, 117, 114, -94, 116, 117, 112, -124, -93, -80, -80, -89, -76, 98, -85, -81, -78, -76, -89, -75, -75, -85, -79, -80, 98, -88, -85, -76, -89, -90, -118, -119, 93, 124, -119, -119, Byte.MIN_VALUE, -115, 103, -118, -126, -126, -124, -119, -126, 100, -120, -117, -115, Byte.MIN_VALUE, -114, -114, -124, -118, -119};
    }

    static {
        A01();
    }

    public C1252Zc(C0742Et c0742Et, Runnable runnable) {
        this.A00 = c0742Et;
        this.A01 = runnable;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04120v
    public final void AAO(C1286aA c1286aA) {
        C0718Dv c0718Dv;
        c0718Dv = this.A00.A01;
        c0718Dv.A0E().A3k();
        this.A00.A06.A0C();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04120v
    public final void AAP(C1286aA c1286aA, View view) {
        C0718Dv c0718Dv;
        c0718Dv = this.A00.A01;
        c0718Dv.A0E().A3j(c1286aA == ((AbstractC1250Za) this.A00).A00);
        if (c1286aA != ((AbstractC1250Za) this.A00).A00) {
            return;
        }
        this.A00.A0E().removeCallbacks(this.A01);
        InterfaceC04040n interfaceC04040n = ((AbstractC1250Za) this.A00).A01;
        C0742Et c0742Et = this.A00;
        ((AbstractC1250Za) c0742Et).A01 = c1286aA;
        c0742Et.A00 = view;
        if (!this.A00.A0C) {
            this.A00.A06.A0F(c1286aA);
            return;
        }
        this.A00.A06.A0E(view);
        this.A00.A0M(interfaceC04040n);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04120v
    public final void AAQ(C1286aA c1286aA) {
        C0718Dv c0718Dv;
        JO.A05(A00(31, 25, 11), A00(8, 23, 50), A00(0, 8, 46));
        c0718Dv = this.A00.A01;
        c0718Dv.A0E().A3m();
        this.A00.A06.A0D();
        this.A00.A0K();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04120v
    public final void ABP(C1286aA c1286aA, JA ja) {
        C0718Dv c0718Dv;
        c0718Dv = this.A00.A01;
        c0718Dv.A0E().A3l(c1286aA == ((AbstractC1250Za) this.A00).A00, ja.A03().getErrorCode());
        if (c1286aA != ((AbstractC1250Za) this.A00).A00) {
            return;
        }
        this.A00.A0E().removeCallbacks(this.A01);
        this.A00.A0M(c1286aA);
        this.A00.AAv(ja);
    }
}
