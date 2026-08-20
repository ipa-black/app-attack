package com.facebook.ads.redexgen.X;
/* loaded from: assets/audience_network.dex */
public class TJ implements InterfaceC0940Mu {
    public final /* synthetic */ InterfaceC0903Lj A00;
    public final /* synthetic */ TH A01;

    public TJ(TH th, InterfaceC0903Lj interfaceC0903Lj) {
        this.A01 = th;
        this.A00 = interfaceC0903Lj;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    public final void ABt(String str) {
        C0933Mn c0933Mn;
        c0933Mn = this.A01.A0A;
        c0933Mn.setProgress(100);
        this.A01.A05 = false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    public final void ABv(String str) {
        C0932Mm c0932Mm;
        this.A01.A05 = true;
        c0932Mm = this.A01.A09;
        c0932Mm.setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    public final void ACD(int i) {
        boolean z;
        C0933Mn c0933Mn;
        z = this.A01.A05;
        if (z) {
            c0933Mn = this.A01.A0A;
            c0933Mn.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    public final void ACI(String str) {
        C0932Mm c0932Mm;
        c0932Mm = this.A01.A09;
        c0932Mm.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0940Mu
    public final void ACK() {
        this.A00.AAR(14);
    }
}
