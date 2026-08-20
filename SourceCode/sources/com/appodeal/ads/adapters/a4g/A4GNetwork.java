package com.appodeal.ads.adapters.a4g;

import com.appodeal.ads.AdNetworkBuilder;
import com.appodeal.ads.AppodealNetworks;
import com.appodeal.ads.adapters.admob.AdmobNetwork;
import com.appodeal.ads.adapters.admob.unified.UnifiedAdmobNetwork;
/* loaded from: classes2.dex */
public class A4GNetwork extends AdmobNetwork {

    /* loaded from: classes2.dex */
    public static class builder extends UnifiedAdmobNetwork.builder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public A4GNetwork build() {
            return new A4GNetwork(this);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getAdapterVersion() {
            return "0";
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getName() {
            return AppodealNetworks.A4G;
        }
    }

    public A4GNetwork(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
    }
}
