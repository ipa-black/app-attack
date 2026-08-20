package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Rx  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1072Rx implements InterfaceC0873Kd {
    public final /* synthetic */ int A00;
    public final /* synthetic */ K1 A01;
    public final /* synthetic */ AbstractC1069Ru A02;

    public C1072Rx(AbstractC1069Ru abstractC1069Ru, int i, K1 k1) {
        this.A02 = abstractC1069Ru;
        this.A00 = i;
        this.A01 = k1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0873Kd
    public final void AAa() {
        this.A01.run();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0873Kd
    public final void ACC(float f2) {
        this.A02.A07.setProgress(100.0f * (1.0f - (f2 / this.A00)));
    }
}
