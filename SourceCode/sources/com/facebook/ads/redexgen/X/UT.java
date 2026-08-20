package com.facebook.ads.redexgen.X;

import androidx.annotation.Nullable;
/* loaded from: assets/audience_network.dex */
public final class UT implements GW {
    public final int A00;
    @Nullable
    public final GU A01;
    public final GW A02;
    public final GW A03;
    public final InterfaceC0794Gx A04;
    @Nullable
    public final InterfaceC0796Gz A05;

    public UT(InterfaceC0794Gx interfaceC0794Gx, GW gw, GW gw2, GU gu, int i, InterfaceC0796Gz interfaceC0796Gz) {
        this.A04 = interfaceC0794Gx;
        this.A03 = gw;
        this.A02 = gw2;
        this.A01 = gu;
        this.A00 = i;
        this.A05 = interfaceC0796Gz;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.GW
    /* renamed from: A00 */
    public final UU A4H() {
        InterfaceC0794Gx interfaceC0794Gx = this.A04;
        GX A4H = this.A03.A4H();
        GX A4H2 = this.A02.A4H();
        GU gu = this.A01;
        return new UU(interfaceC0794Gx, A4H, A4H2, gu != null ? gu.createDataSink() : null, this.A00, this.A05);
    }
}
