package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Dn  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0710Dn implements Runnable {
    public final /* synthetic */ RunnableC0713Dq A00;

    public RunnableC0710Dn(RunnableC0713Dq runnableC0713Dq) {
        this.A00 = runnableC0713Dq;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A00.A0F(5, 3);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
