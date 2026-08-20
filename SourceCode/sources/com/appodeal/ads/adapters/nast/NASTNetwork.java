package com.appodeal.ads.adapters.nast;

import com.appodeal.ads.AdNetwork;
import com.appodeal.ads.AdNetworkBuilder;
import com.appodeal.ads.AdNetworkMediationParams;
import com.appodeal.ads.AdUnit;
import com.appodeal.ads.NetworkInitializationListener;
import com.appodeal.ads.RestrictedData;
import com.appodeal.ads.adapters.nast.native_ad.b;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import com.appodeal.ads.unified.UnifiedAdUtils;
import com.appodeal.ads.unified.UnifiedNative;
import com.explorestack.iab.BuildConfig;
import org.apache.ldap.server.jndi.JavaLdapSupport;
/* loaded from: classes2.dex */
public class NASTNetwork extends AdNetwork<RequestParams> {

    /* loaded from: classes2.dex */
    public static final class RequestParams {
        public final RestrictedData restrictedData;
        public final String url;

        private RequestParams(String str, RestrictedData restrictedData) {
            this.url = str;
            this.restrictedData = restrictedData;
        }
    }

    /* loaded from: classes2.dex */
    public static class builder extends AdNetworkBuilder {
        @Override // com.appodeal.ads.AdNetworkBuilder
        public NASTNetwork build() {
            return new NASTNetwork(this);
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getAdapterVersion() {
            return "0";
        }

        @Override // com.appodeal.ads.AdNetworkBuilder
        public String getName() {
            return "nast";
        }
    }

    public NASTNetwork(AdNetworkBuilder adNetworkBuilder) {
        super(adNetworkBuilder);
    }

    @Override // com.appodeal.ads.AdNetwork
    public UnifiedNative<RequestParams> createNativeAd() {
        return new b();
    }

    @Override // com.appodeal.ads.AdNetwork
    public String getVersion() {
        return BuildConfig.VERSION_NAME;
    }

    @Override // com.appodeal.ads.AdNetwork
    public void initialize(ContextProvider contextProvider, AdUnit adUnit, AdNetworkMediationParams adNetworkMediationParams, NetworkInitializationListener<RequestParams> networkInitializationListener) {
        String string = adUnit.getJsonData().getString("url");
        if (adUnit.getJsonData().optBoolean(JavaLdapSupport.TOP_ATTR)) {
            string = UnifiedAdUtils.parseUrlWithTopParams(contextProvider.getApplicationContext(), string, adNetworkMediationParams);
        }
        networkInitializationListener.onInitializationFinished(new RequestParams(string, adNetworkMediationParams.getRestrictedData()));
    }
}
