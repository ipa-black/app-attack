package com.facebook.ads.redexgen.X;

import java.io.IOException;
/* loaded from: assets/audience_network.dex */
public class EZ implements Runnable {
    public final /* synthetic */ C0727Ee A00;
    public final /* synthetic */ C0728Ef A01;
    public final /* synthetic */ C0729Eg A02;
    public final /* synthetic */ InterfaceC0730Eh A03;
    public final /* synthetic */ IOException A04;
    public final /* synthetic */ boolean A05;

    public EZ(C0727Ee c0727Ee, InterfaceC0730Eh interfaceC0730Eh, C0728Ef c0728Ef, C0729Eg c0729Eg, IOException iOException, boolean z) {
        this.A00 = c0727Ee;
        this.A03 = interfaceC0730Eh;
        this.A01 = c0728Ef;
        this.A02 = c0729Eg;
        this.A04 = iOException;
        this.A05 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A03.ABW(this.A00.A00, this.A00.A01, this.A01, this.A02, this.A04, this.A05);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
