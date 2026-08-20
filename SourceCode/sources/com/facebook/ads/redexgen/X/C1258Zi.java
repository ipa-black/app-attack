package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
/* renamed from: com.facebook.ads.redexgen.X.Zi  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1258Zi implements InterfaceC04281l {
    public final /* synthetic */ C04201d A00;

    public C1258Zi(C04201d c04201d) {
        this.A00 = c04201d;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04281l
    public final void ABz(AdError adError) {
        InterfaceC04191c interfaceC04191c;
        interfaceC04191c = this.A00.A04;
        interfaceC04191c.AA6(AdError.CACHE_ERROR);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC04281l
    public final void AC0() {
        InterfaceC04191c interfaceC04191c;
        interfaceC04191c = this.A00.A04;
        interfaceC04191c.AA7();
    }
}
