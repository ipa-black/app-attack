package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Ax  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC0659Ax implements Runnable {
    public final /* synthetic */ B2 A00;
    public final /* synthetic */ B3 A01;

    public RunnableC0659Ax(B2 b2, B3 b3) {
        this.A00 = b2;
        this.A01 = b3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A01.AAn();
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
