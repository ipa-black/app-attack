package io.bidmachine.ads.networks.pangle;

import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class PangleConfig extends NetworkConfig {
    static final String KEY_APP_ID = "app_id";
    static final String KEY_BID_PAYLOAD = "bid_payload";
    static final String KEY_BID_TOKEN = "network_bid_token";
    static final String KEY_SLOT_ID = "slot_id";

    public PangleConfig(String str) {
        this(new HashMap<String, String>(str) { // from class: io.bidmachine.ads.networks.pangle.PangleConfig.1
            final /* synthetic */ String val$appId;

            {
                this.val$appId = str;
                put("app_id", str);
            }
        });
    }

    public PangleConfig(Map<String, String> map) {
        super(BuildConfig.ADAPTER_NAME, map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new PangleAdapter();
    }

    public PangleConfig withMediationConfig(AdsFormat adsFormat, String str) {
        return (PangleConfig) withMediationConfig(adsFormat, new HashMap<String, String>(str) { // from class: io.bidmachine.ads.networks.pangle.PangleConfig.2
            final /* synthetic */ String val$slotId;

            {
                this.val$slotId = str;
                put(PangleConfig.KEY_SLOT_ID, str);
            }
        });
    }
}
