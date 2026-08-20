package io.bidmachine.ads.networks.criteo;

import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import io.bidmachine.Orientation;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class CriteoConfig extends NetworkConfig {
    static final String AD_UNIT_ID = "ad_unit_id";
    static final String PRICE = "price";
    static final String PUBLISHER_ID = "publisher_id";

    public CriteoConfig(String str) {
        this(new HashMap<String, String>(str) { // from class: io.bidmachine.ads.networks.criteo.CriteoConfig.1
            final /* synthetic */ String val$publisherId;

            {
                this.val$publisherId = str;
                put(CriteoConfig.PUBLISHER_ID, str);
            }
        });
    }

    public CriteoConfig(Map<String, String> map) {
        super(BuildConfig.ADAPTER_NAME, map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new CriteoAdapter();
    }

    public CriteoConfig withMediationConfig(AdsFormat adsFormat, String str) {
        return withMediationConfig(adsFormat, str, (Orientation) null);
    }

    public CriteoConfig withMediationConfig(AdsFormat adsFormat, String str, Orientation orientation) {
        return (CriteoConfig) withMediationConfig(adsFormat, new HashMap<String, String>(str) { // from class: io.bidmachine.ads.networks.criteo.CriteoConfig.2
            final /* synthetic */ String val$adUnitId;

            {
                this.val$adUnitId = str;
                put(CriteoConfig.AD_UNIT_ID, str);
            }
        }, orientation);
    }
}
