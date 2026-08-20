package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class I8 implements Runnable {
    public final /* synthetic */ C0651Ap A00;
    public final /* synthetic */ IF A01;

    public I8(IF r1, C0651Ap c0651Ap) {
        this.A01 = r1;
        this.A00 = c0651Ap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IG ig;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            ig = this.A01.A01;
            ig.ACy(this.A00);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
