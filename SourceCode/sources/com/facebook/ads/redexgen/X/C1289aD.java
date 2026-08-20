package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.aD  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1289aD implements OB {
    public final /* synthetic */ C1286aA A00;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.X.OB
    public final void A8x() {
        F3 f3;
        C0718Dv c0718Dv;
        f3 = this.A00.A02;
        String A00 = f3.A0k().A00();
        if (TextUtils.isEmpty(A00)) {
            return;
        }
        KS ks = new KS();
        c0718Dv = this.A00.A03;
        KS.A0E(ks, c0718Dv, KT.A00(A00), this.A00.A6B());
    }

    public C1289aD(C1286aA c1286aA) {
        this.A00 = c1286aA;
    }

    @Override // com.facebook.ads.redexgen.X.OB
    public final void AAs(C06068v c06068v) {
        new Handler(Looper.getMainLooper()).postDelayed(new C1290aE(this, c06068v), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.OB
    public final void AB6() {
    }

    @Override // com.facebook.ads.redexgen.X.OB
    public final void ACm(View view, MotionEvent motionEvent) {
    }
}
