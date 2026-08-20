package io.bidmachine.ads.networks.notsy;

import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class NotsyConfig extends NetworkConfig {
    static final String KEY_AD_UNIT_ID = "ad_unit_id";
    static final String KEY_PRICE = "price";
    static final String KEY_SCORE = "score";

    public NotsyConfig() {
        this(null);
    }

    public NotsyConfig(Map<String, String> map) {
        super("notsy", map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new NotsyAdapter();
    }

    public NotsyConfig withMediationConfig(AdsFormat adsFormat, String str, String str2, String str3) {
        return withMediationConfig(adsFormat, str, str2, str3, null);
    }

    public NotsyConfig withMediationConfig(AdsFormat adsFormat, String str, String str2, String str3, Map<String, String> map) {
        return (NotsyConfig) withMediationConfig(adsFormat, new HashMap<String, String>(str, str2, str3, map) { // from class: io.bidmachine.ads.networks.notsy.NotsyConfig.1
            final /* synthetic */ String val$adUnitId;
            final /* synthetic */ Map val$customParams;
            final /* synthetic */ String val$price;
            final /* synthetic */ String val$score;

            {
                this.val$adUnitId = str;
                this.val$score = str2;
                this.val$price = str3;
                this.val$customParams = map;
                put(NotsyConfig.KEY_AD_UNIT_ID, str);
                put("score", str2);
                put("price", str3);
                if (map != null) {
                    putAll(map);
                }
            }
        });
    }
}
