package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.dynamicloading.DynamicLoader;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
/* loaded from: assets/audience_network.dex */
public class XO extends K1 {
    public final /* synthetic */ C1202Xb A00;

    public XO(C1202Xb c1202Xb) {
        this.A00 = c1202Xb;
    }

    @Override // com.facebook.ads.redexgen.X.K1
    public final void A06() {
        DynamicLoader dynamicLoader = DynamicLoaderFactory.getDynamicLoader();
        if (dynamicLoader != null) {
            dynamicLoader.createBidderTokenProviderApi().getBidderToken(this.A00);
        }
    }
}
