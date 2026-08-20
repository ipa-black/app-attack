package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Do  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0711Do implements Runnable {
    public final /* synthetic */ RunnableC0713Dq A00;
    public final /* synthetic */ Throwable A01;

    public RunnableC0711Do(RunnableC0713Dq runnableC0713Dq, Throwable th) {
        this.A00 = runnableC0713Dq;
        this.A01 = th;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean A0G;
        boolean A0F;
        boolean A0F2;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            A0G = this.A00.A0G(1, this.A01 != null ? 4 : 2, this.A01);
            if (A0G) {
                return;
            }
            A0F = this.A00.A0F(6, 3);
            if (A0F) {
                return;
            }
            A0F2 = this.A00.A0F(7, 0);
            if (!A0F2) {
                throw new IllegalStateException();
            }
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
