package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
/* renamed from: com.facebook.ads.redexgen.X.Zl  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1261Zl implements InterfaceC05295l {
    public final /* synthetic */ C04201d A00;
    public final /* synthetic */ C1203Xc A01;
    public final /* synthetic */ boolean A02;

    public C1261Zl(C04201d c04201d, C1203Xc c1203Xc, boolean z) {
        this.A00 = c04201d;
        this.A01 = c1203Xc;
        this.A02 = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05295l
    public final void AAD() {
        InterfaceC04191c interfaceC04191c;
        F1 f1;
        if (!IK.A1I(this.A01) || !this.A02) {
            interfaceC04191c = this.A00.A04;
            interfaceC04191c.AA7();
            return;
        }
        C04201d c04201d = this.A00;
        C1203Xc c1203Xc = this.A01;
        f1 = c04201d.A03;
        c04201d.A02 = ON.A01(c1203Xc, f1, 1, new C1262Zm(this));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05295l
    public final void AAE() {
        InterfaceC04191c interfaceC04191c;
        interfaceC04191c = this.A00.A04;
        interfaceC04191c.AA6(AdError.CACHE_ERROR);
    }
}
