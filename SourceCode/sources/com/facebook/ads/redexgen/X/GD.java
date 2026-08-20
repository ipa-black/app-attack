package com.facebook.ads.redexgen.X;

import java.util.Map;
/* loaded from: assets/audience_network.dex */
public abstract class GD implements InterfaceC1046Qx {
    public final EnumC1038Qp A00;
    public final C4R A01;

    public GD(C4R c4r, EnumC1038Qp enumC1038Qp) {
        this.A01 = c4r;
        this.A00 = enumC1038Qp;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1046Qx
    public void A3P(Map<InterfaceC1028Qf, R2> map, Map<InterfaceC0775Gd, EnumC1038Qp> map2) {
        map2.put(this.A01, this.A00);
    }
}
