package com.facebook.ads.redexgen.X;

import android.view.View;
/* loaded from: assets/audience_network.dex */
public class PZ implements View.OnClickListener {
    public final /* synthetic */ C0858Jn A00;

    public PZ(C0858Jn c0858Jn) {
        this.A00 = c0858Jn;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C0829Ii c0829Ii;
        C1203Xc c1203Xc;
        RA ra;
        boolean A07;
        RA ra2;
        RA ra3;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            c0829Ii = this.A00.A03;
            c0829Ii.A04(EnumC0828Ih.A0d, null);
            c1203Xc = this.A00.A02;
            c1203Xc.A0E().A30();
            ra = this.A00.A00;
            if (ra != null) {
                A07 = this.A00.A07();
                if (A07) {
                    ra3 = this.A00.A00;
                    ra3.setVolume(1.0f);
                } else {
                    ra2 = this.A00.A00;
                    ra2.setVolume(0.0f);
                }
                this.A00.A09();
            }
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
