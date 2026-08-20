package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class T1 implements InterfaceC0993Ow {
    public static byte[] A01;
    public final /* synthetic */ T0 A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{29, 27, 13, 26, 11, 4, 1, 11, 3};
    }

    public T1(T0 t0) {
        this.A00 = t0;
    }

    public /* synthetic */ T1(T0 t0, T8 t8) {
        this(t0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0993Ow
    public final void AAd() {
        this.A00.A0X(true, A00(0, 9, 55));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0993Ow
    public final void ABC() {
        AbstractC1268Zs abstractC1268Zs;
        InterfaceC0903Lj interfaceC0903Lj;
        MC mc;
        InterfaceC0821Ia interfaceC0821Ia;
        AbstractC1268Zs abstractC1268Zs2;
        C0995Oy c0995Oy;
        C0995Oy c0995Oy2;
        AbstractC1268Zs abstractC1268Zs3;
        C1203Xc c1203Xc;
        abstractC1268Zs = this.A00.A0G;
        if (!TextUtils.isEmpty(abstractC1268Zs.A0m())) {
            interfaceC0821Ia = this.A00.A0K;
            abstractC1268Zs2 = this.A00.A0G;
            String A0m = abstractC1268Zs2.A0m();
            NA na = new NA();
            c0995Oy = this.A00.A07;
            NA A03 = na.A03(c0995Oy.getViewabilityChecker());
            c0995Oy2 = this.A00.A07;
            interfaceC0821Ia.A9H(A0m, A03.A02(c0995Oy2.getTouchDataRecorder()).A05());
            abstractC1268Zs3 = this.A00.A0G;
            AnonymousClass29.A00(abstractC1268Zs3.A0I());
            c1203Xc = this.A00.A0J;
            c1203Xc.A0E().A2Z();
        }
        interfaceC0903Lj = this.A00.A0O;
        mc = this.A00.A0P;
        interfaceC0903Lj.A3t(mc.A6t());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0993Ow
    public final void ABX() {
        InterfaceC0903Lj interfaceC0903Lj;
        MC mc;
        interfaceC0903Lj = this.A00.A0O;
        mc = this.A00.A0P;
        interfaceC0903Lj.A3t(mc.A6g());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0993Ow
    public final void ADD() {
        InterfaceC0903Lj interfaceC0903Lj;
        interfaceC0903Lj = this.A00.A0O;
        interfaceC0903Lj.AAR(15);
    }
}
