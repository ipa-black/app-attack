package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.view.FullScreenAdToolbar;
/* renamed from: com.facebook.ads.redexgen.X.Rs  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1067Rs implements InterfaceC0973Ob {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C1065Rq A01;

    public C1067Rs(C1065Rq c1065Rq, int i) {
        this.A01 = c1065Rq;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0973Ob
    public final void ACv(int i) {
        C1065Rq.A00(this.A01, i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0973Ob
    public final void ACz(String str) {
        C1203Xc c1203Xc;
        InterfaceC0903Lj interfaceC0903Lj;
        MC mc;
        c1203Xc = this.A01.A0B;
        c1203Xc.A0E().A2o(str);
        interfaceC0903Lj = this.A01.A0F;
        mc = this.A01.A0H;
        interfaceC0903Lj.A3t(mc.A6g());
        this.A01.A09();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0973Ob
    public final void AD1() {
        this.A01.A0O(false, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0973Ob
    public final void AD8(C05616y c05616y) {
        this.A01.A0N(c05616y);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0973Ob
    public final void AFk(float f2) {
        FullScreenAdToolbar fullScreenAdToolbar;
        fullScreenAdToolbar = this.A01.A0G;
        fullScreenAdToolbar.setProgress(100.0f * f2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0973Ob
    public final void AFl() {
        this.A01.A0D();
    }
}
