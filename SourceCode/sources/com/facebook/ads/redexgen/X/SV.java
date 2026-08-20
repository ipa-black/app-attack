package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class SV implements InterfaceC0873Kd {
    public final /* synthetic */ C0949Nd A00;

    public SV(C0949Nd c0949Nd) {
        this.A00 = c0949Nd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0873Kd
    public final void AAa() {
        InterfaceC0973Ob interfaceC0973Ob;
        int i;
        InterfaceC0973Ob interfaceC0973Ob2;
        interfaceC0973Ob = this.A00.A0M;
        i = this.A00.A0C;
        interfaceC0973Ob.ACv(i);
        interfaceC0973Ob2 = this.A00.A0M;
        interfaceC0973Ob2.AD1();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0873Kd
    public final void ACC(float f2) {
        int i;
        RA ra;
        int i2;
        InterfaceC0973Ob interfaceC0973Ob;
        i = this.A00.A0C;
        ra = this.A00.A0P;
        float duration = (i - f2) + ra.getDuration();
        i2 = this.A00.A0B;
        float f3 = duration / i2;
        interfaceC0973Ob = this.A00.A0M;
        interfaceC0973Ob.AFk(f3);
    }
}
