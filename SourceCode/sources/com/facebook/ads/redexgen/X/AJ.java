package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class AJ implements Runnable {
    public final /* synthetic */ AL A00;
    public final /* synthetic */ C0651Ap A01;

    public AJ(AL al, C0651Ap c0651Ap) {
        this.A00 = al;
        this.A01 = c0651Ap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AM am;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A01.A00();
            am = this.A00.A01;
            am.AAH(this.A01);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
