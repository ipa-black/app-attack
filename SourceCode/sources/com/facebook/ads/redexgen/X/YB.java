package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.NativeAd;
/* loaded from: assets/audience_network.dex */
public class YB implements OB {
    public final /* synthetic */ NativeAd A00;
    public final /* synthetic */ Y6 A01;
    public final /* synthetic */ C1115Tp A02;

    public YB(Y6 y6, C1115Tp c1115Tp, NativeAd nativeAd) {
        this.A01 = y6;
        this.A02 = c1115Tp;
        this.A00 = nativeAd;
    }

    @Override // com.facebook.ads.redexgen.X.OB
    public final void A8x() {
    }

    @Override // com.facebook.ads.redexgen.X.OB
    public final void AAs(C06068v c06068v) {
        new Handler(Looper.getMainLooper()).postDelayed(new YC(this, c06068v), 1L);
    }

    @Override // com.facebook.ads.redexgen.X.OB
    public final void AB6() {
        C06068v c06068v;
        C06068v c06068v2;
        c06068v = this.A01.A0A;
        if (c06068v != null) {
            c06068v2 = this.A01.A0A;
            c06068v2.A08();
        }
    }

    @Override // com.facebook.ads.redexgen.X.OB
    public final void ACm(View view, MotionEvent motionEvent) {
        C1203Xc c1203Xc;
        boolean A0J;
        LD A19 = this.A02.A19();
        c1203Xc = this.A01.A07;
        A19.A06(c1203Xc, motionEvent, view, view);
        if (motionEvent.getAction() == 1) {
            A0J = this.A01.A0J(this.A00);
            if (!A0J && this.A02.A12() != null) {
                this.A02.A12().onClick(view);
            }
        }
    }
}
