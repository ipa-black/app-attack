package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
/* renamed from: com.facebook.ads.redexgen.X.Zh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1257Zh implements InterfaceC05295l {
    public final /* synthetic */ C04201d A00;

    public C1257Zh(C04201d c04201d) {
        this.A00 = c04201d;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05295l
    public final void AAD() {
        InterfaceC04191c interfaceC04191c;
        interfaceC04191c = this.A00.A04;
        interfaceC04191c.AA7();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC05295l
    public final void AAE() {
        InterfaceC04191c interfaceC04191c;
        interfaceC04191c = this.A00.A04;
        interfaceC04191c.AA6(AdError.CACHE_ERROR);
    }
}
