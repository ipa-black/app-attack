package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class SO implements InterfaceC0873Kd {
    public final /* synthetic */ AnonymousClass93 A00;

    public SO(AnonymousClass93 anonymousClass93) {
        this.A00 = anonymousClass93;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0873Kd
    public final void AAa() {
        AbstractC0902Li abstractC0902Li;
        AbstractC0902Li abstractC0902Li2;
        this.A00.A07 = false;
        abstractC0902Li = this.A00.A04;
        if (abstractC0902Li != null) {
            abstractC0902Li2 = this.A00.A04;
            abstractC0902Li2.setToolbarActionMode(this.A00.getCloseButtonStyle());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0873Kd
    public final void ACC(float f2) {
        AbstractC0902Li abstractC0902Li;
        AbstractC0902Li abstractC0902Li2;
        abstractC0902Li = this.A00.A04;
        if (abstractC0902Li != null) {
            abstractC0902Li2 = this.A00.A04;
            float percentage = 100.0f * (1.0f - (f2 / ((float) this.A00.getAdInfo().A0G().A00())));
            abstractC0902Li2.setProgressImmediate(percentage);
        }
    }
}
