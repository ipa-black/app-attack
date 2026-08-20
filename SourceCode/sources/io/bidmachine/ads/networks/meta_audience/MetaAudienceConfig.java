package io.bidmachine.ads.networks.meta_audience;

import android.text.TextUtils;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MetaAudienceConfig extends NetworkConfig {
    static final String KEY_APP_ID = "app_id";
    static final String KEY_BID_PAYLOAD = "bid_payload";
    static final String KEY_PLACEMENT_ID = "meta_key";
    static final String KEY_TOKEN = "token";

    public MetaAudienceConfig(String str) {
        this(new HashMap<String, String>(str) { // from class: io.bidmachine.ads.networks.meta_audience.MetaAudienceConfig.1
            final /* synthetic */ String val$appId;

            {
                this.val$appId = str;
                put("app_id", str);
            }
        });
    }

    public MetaAudienceConfig(Map<String, String> map) {
        super(BuildConfig.ADAPTER_NAME, map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new MetaAudienceAdapter();
    }

    public MetaAudienceConfig withMediationConfig(AdsFormat adsFormat, String str) {
        return withMediationConfig(adsFormat, str, (String) null);
    }

    public MetaAudienceConfig withMediationConfig(AdsFormat adsFormat, String str, String str2) {
        return (MetaAudienceConfig) withMediationConfig(adsFormat, new HashMap<String, String>(str, str2) { // from class: io.bidmachine.ads.networks.meta_audience.MetaAudienceConfig.2
            final /* synthetic */ String val$appId;
            final /* synthetic */ String val$placementId;

            {
                this.val$placementId = str;
                this.val$appId = str2;
                put(MetaAudienceConfig.KEY_PLACEMENT_ID, str);
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                put("app_id", str2);
            }
        });
    }
}
