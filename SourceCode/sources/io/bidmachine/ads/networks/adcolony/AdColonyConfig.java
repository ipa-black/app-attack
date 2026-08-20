package io.bidmachine.ads.networks.adcolony;

import android.text.TextUtils;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdapter;
import io.bidmachine.NetworkConfig;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class AdColonyConfig extends NetworkConfig {
    private static final String DEFAULT_STORE_ID = "google";
    static final String KEY_ADM = "adm";
    static final String KEY_APP_ID = "app_id";
    static final String KEY_STORE_ID = "store_id";
    static final String KEY_TOKEN = "data";
    static final String KEY_ZONE_ID = "zone_id";

    public AdColonyConfig(String str) {
        this(str, DEFAULT_STORE_ID);
    }

    public AdColonyConfig(String str, String str2) {
        this(new HashMap<String, String>(str, str2) { // from class: io.bidmachine.ads.networks.adcolony.AdColonyConfig.1
            final /* synthetic */ String val$appId;
            final /* synthetic */ String val$storeId;

            {
                this.val$appId = str;
                this.val$storeId = str2;
                put("app_id", str);
                put("store_id", str2);
            }
        });
    }

    public AdColonyConfig(Map<String, String> map) {
        super("adcolony", map);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.NetworkConfig
    public NetworkAdapter createNetworkAdapter() {
        return new AdColonyAdapter();
    }

    public AdColonyConfig withMediationConfig(AdsFormat adsFormat, String str) {
        return withMediationConfig(adsFormat, str, (String) null);
    }

    public AdColonyConfig withMediationConfig(AdsFormat adsFormat, String str, String str2) {
        return withMediationConfig(adsFormat, str, str2, null);
    }

    public AdColonyConfig withMediationConfig(AdsFormat adsFormat, String str, String str2, String str3) {
        return (AdColonyConfig) withMediationConfig(adsFormat, new HashMap<String, String>(str, str2, str3) { // from class: io.bidmachine.ads.networks.adcolony.AdColonyConfig.2
            final /* synthetic */ String val$appId;
            final /* synthetic */ String val$storeId;
            final /* synthetic */ String val$zoneId;

            {
                this.val$zoneId = str;
                this.val$appId = str2;
                this.val$storeId = str3;
                put(AdColonyConfig.KEY_ZONE_ID, str);
                if (!TextUtils.isEmpty(str2)) {
                    put("app_id", str2);
                }
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                put("store_id", str3);
            }
        });
    }
}
