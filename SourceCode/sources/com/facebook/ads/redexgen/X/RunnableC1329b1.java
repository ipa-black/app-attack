package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.b1  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1329b1 implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C1328b0 A01;

    public RunnableC1329b1(C1328b0 c1328b0, int i) {
        this.A01 = c1328b0;
        this.A00 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        RO ro;
        Handler handler;
        Runnable runnable;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            z = this.A01.A01;
            if (z) {
                C1328b0 c1328b0 = this.A01;
                ro = this.A01.A05;
                c1328b0.A04(ro.A9v());
                handler = this.A01.A04;
                runnable = this.A01.A09;
                handler.postDelayed(runnable, this.A00);
            }
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
