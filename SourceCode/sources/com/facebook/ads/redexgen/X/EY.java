package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class EY implements Runnable {
    public final /* synthetic */ C0727Ee A00;
    public final /* synthetic */ C0728Ef A01;
    public final /* synthetic */ C0729Eg A02;
    public final /* synthetic */ InterfaceC0730Eh A03;

    public EY(C0727Ee c0727Ee, InterfaceC0730Eh interfaceC0730Eh, C0728Ef c0728Ef, C0729Eg c0729Eg) {
        this.A00 = c0727Ee;
        this.A03 = interfaceC0730Eh;
        this.A01 = c0728Ef;
        this.A02 = c0729Eg;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A03.ABR(this.A00.A00, this.A00.A01, this.A01, this.A02);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
