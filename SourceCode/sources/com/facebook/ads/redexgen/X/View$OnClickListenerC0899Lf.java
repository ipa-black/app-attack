package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
/* renamed from: com.facebook.ads.redexgen.X.Lf  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class View$OnClickListenerC0899Lf implements View.OnClickListener {
    public final /* synthetic */ C1V A00;
    public final /* synthetic */ C0829Ii A01;
    public final /* synthetic */ C0900Lg A02;
    public final /* synthetic */ InterfaceC0903Lj A03;
    public final /* synthetic */ String A04;

    public View$OnClickListenerC0899Lf(C0900Lg c0900Lg, C0829Ii c0829Ii, InterfaceC0903Lj interfaceC0903Lj, String str, C1V c1v) {
        this.A02 = c0900Lg;
        this.A01 = c0829Ii;
        this.A03 = interfaceC0903Lj;
        this.A04 = str;
        this.A00 = c1v;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C2D c2d;
        C1203Xc c1203Xc;
        C1203Xc c1203Xc2;
        if (C0864Jt.A02(this)) {
            return;
        }
        try {
            this.A01.A04(EnumC0828Ih.A0A, null);
            c2d = this.A02.A02;
            c1203Xc = this.A02.A03;
            if (c2d.A0O(c1203Xc.A01(), true)) {
                this.A03.A8y(this.A04, this.A00);
            } else if (!TextUtils.isEmpty(this.A00.A00())) {
                KS ks = new KS();
                c1203Xc2 = this.A02.A03;
                KS.A0E(ks, c1203Xc2, KT.A00(this.A00.A00()), this.A04);
            }
        } catch (Throwable th) {
            C0864Jt.A00(th, this);
        }
    }
}
