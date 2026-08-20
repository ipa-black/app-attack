package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Ea  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0723Ea implements Runnable {
    public final /* synthetic */ C0727Ee A00;
    public final /* synthetic */ InterfaceC0730Eh A01;

    public RunnableC0723Ea(C0727Ee c0727Ee, InterfaceC0730Eh interfaceC0730Eh) {
        this.A00 = c0727Ee;
        this.A01 = interfaceC0730Eh;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A01.ACH(this.A00.A00, this.A00.A01);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
