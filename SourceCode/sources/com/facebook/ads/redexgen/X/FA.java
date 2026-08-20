package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;
/* loaded from: assets/audience_network.dex */
public class FA extends AbstractC1085Sk {
    public static byte[] A02;
    public final /* synthetic */ C1286aA A00;
    public final /* synthetic */ C1276a0 A01;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 74);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-113, -68, -68, -71, -68, 106, -81, -62, -81, -83, -65, -66, -77, -72, -79, 106, -85, -83, -66, -77, -71, -72, 2, -2, -3, 0};
    }

    public FA(C1286aA c1286aA, C1276a0 c1276a0) {
        this.A00 = c1286aA;
        this.A01 = c1276a0;
    }

    @Override // com.facebook.ads.redexgen.X.N3
    public final void AAF() {
        boolean z;
        this.A00.A0E = true;
        z = this.A00.A0F;
        if (!z) {
            return;
        }
        this.A00.A09();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1085Sk, com.facebook.ads.redexgen.X.N3
    public final void AAV(String str, Map<String, String> extraData) {
        C0718Dv c0718Dv;
        C0718Dv c0718Dv2;
        InterfaceC0821Ia interfaceC0821Ia;
        String str2;
        C0718Dv c0718Dv3;
        InterfaceC04120v interfaceC04120v;
        InterfaceC04120v interfaceC04120v2;
        c0718Dv = this.A00.A03;
        c0718Dv.A0E().A3Z();
        Uri A00 = KT.A00(str);
        if (A00(22, 4, 82).equals(A00.getScheme()) && C03980g.A04(A00.getAuthority())) {
            interfaceC04120v = this.A00.A00;
            if (interfaceC04120v != null) {
                interfaceC04120v2 = this.A00.A00;
                interfaceC04120v2.AAO(this.A00);
            }
        }
        c0718Dv2 = this.A00.A03;
        interfaceC0821Ia = this.A00.A04;
        AbstractC03970f adAction = C03980g.A00(c0718Dv2, interfaceC0821Ia, this.A01.A6B(), A00, extraData);
        if (adAction == null) {
            return;
        }
        try {
            c0718Dv3 = this.A00.A03;
            c0718Dv3.A0E().A3W();
            adAction.A0C();
        } catch (Exception e2) {
            str2 = C1286aA.A0I;
            Log.e(str2, A00(0, 22, 0), e2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1085Sk, com.facebook.ads.redexgen.X.N3
    public final void ABC() {
        C0718Dv c0718Dv;
        C1274Zy c1274Zy;
        C1274Zy c1274Zy2;
        C1274Zy c1274Zy3;
        c0718Dv = this.A00.A03;
        InterfaceC1305aT A0E = c0718Dv.A0E();
        c1274Zy = this.A00.A01;
        A0E.A3a(c1274Zy != null);
        c1274Zy2 = this.A00.A01;
        if (c1274Zy2 == null) {
            return;
        }
        c1274Zy3 = this.A00.A01;
        c1274Zy3.A02();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1085Sk, com.facebook.ads.redexgen.X.N3
    public final void ABu() {
        C0718Dv c0718Dv;
        C1274Zy c1274Zy;
        c0718Dv = this.A00.A03;
        c0718Dv.A0E().A3c();
        c1274Zy = this.A00.A01;
        c1274Zy.A07();
    }

    @Override // com.facebook.ads.redexgen.X.N3
    public final void ADD() {
    }
}
