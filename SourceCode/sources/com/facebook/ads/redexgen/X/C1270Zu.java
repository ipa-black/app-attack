package com.facebook.ads.redexgen.X;
/* renamed from: com.facebook.ads.redexgen.X.Zu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1270Zu implements N9 {
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC1269Zt A01;
    public final /* synthetic */ C1115Tp A02;

    public C1270Zu(AbstractC1269Zt abstractC1269Zt, int i, C1115Tp c1115Tp) {
        this.A01 = abstractC1269Zt;
        this.A00 = i;
        this.A02 = c1115Tp;
    }

    @Override // com.facebook.ads.redexgen.X.N9
    public final void ABA(boolean z) {
        Q9 q9;
        if (this.A00 == 0) {
            C1115Tp c1115Tp = this.A02;
            q9 = this.A01.A04;
            c1115Tp.A1Z(q9);
        }
        this.A02.A1c(z, true);
    }
}
