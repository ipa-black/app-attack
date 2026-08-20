package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Ar  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0653Ar extends Thread {
    public final /* synthetic */ AbstractC1179We A00;

    public C0653Ar(AbstractC1179We abstractC1179We) {
        this.A00 = abstractC1179We;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A00.A0M();
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
