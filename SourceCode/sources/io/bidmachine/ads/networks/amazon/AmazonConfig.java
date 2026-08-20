package io.bidmachine.ads.networks.amazon;

import android.text.TextUtils;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class AmazonConfig extends NetworkConfig {
    static final String APP_KEY = "app_key";
    static final String SLOT_UUID = "slot_uuid";

    public AmazonConfig(String str) {
        this(new HashMap<String, String>(str) { // from class: io.bidmachine.ads.networks.amazon.AmazonConfig.1
            final /* synthetic */ String val$appKey;

            {
                this.val$appKey = str;
                put(AmazonConfig.APP_KEY, str);
            }
        });
    }

    public AmazonConfig(Map<String, String> map) {
        super(BuildConfig.ADAPTER_NAME, map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new AmazonAdapter();
    }

    public AmazonConfig withMediationConfig(AdsFormat adsFormat, String str) {
        return withMediationConfig(adsFormat, str, (String) null);
    }

    public AmazonConfig withMediationConfig(AdsFormat adsFormat, String str, String str2) {
        return (AmazonConfig) withMediationConfig(adsFormat, new HashMap<String, String>(str, str2) { // from class: io.bidmachine.ads.networks.amazon.AmazonConfig.2
            final /* synthetic */ String val$appKey;
            final /* synthetic */ String val$slotUuid;

            {
                this.val$slotUuid = str;
                this.val$appKey = str2;
                put(AmazonConfig.SLOT_UUID, str);
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                put(AmazonConfig.APP_KEY, str2);
            }
        });
    }
}
