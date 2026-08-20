package com.facebook.ads.redexgen.X;

import android.os.Handler;
/* renamed from: com.facebook.ads.redexgen.X.Pv  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1018Pv implements Runnable {
    public final /* synthetic */ C1021Py A00;

    public RunnableC1018Pv(C1021Py c1021Py) {
        this.A00 = c1021Py;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler;
        Handler handler2;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A00.A09();
            handler = this.A00.A04;
            handler.removeCallbacks(this);
            handler2 = this.A00.A04;
            handler2.postDelayed(this, 250L);
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
