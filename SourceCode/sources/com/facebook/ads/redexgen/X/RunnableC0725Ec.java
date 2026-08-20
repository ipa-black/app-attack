package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Ec  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0725Ec implements Runnable {
    public final /* synthetic */ C0727Ee A00;
    public final /* synthetic */ C0729Eg A01;
    public final /* synthetic */ InterfaceC0730Eh A02;

    public RunnableC0725Ec(C0727Ee c0727Ee, InterfaceC0730Eh interfaceC0730Eh, C0729Eg c0729Eg) {
        this.A00 = c0727Ee;
        this.A02 = interfaceC0730Eh;
        this.A01 = c0729Eg;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A02.AAm(this.A00.A00, this.A00.A01, this.A01);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
