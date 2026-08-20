package com.amazon.device.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.core.app.NotificationCompat;
import com.amazon.aps.shared.APSAnalytics;
import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.firebase.iid.MessengerIpcClient;
import com.google.firebase.messaging.Constants;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DtbDeviceRegistration {
    private static final String AAX_VIDEO_HOST_NAME_KEY = "aaxVideoHostname";
    private static final String LOG_TAG = "com.amazon.device.ads.DtbDeviceRegistration";
    private static String amznAdId;
    private static String appId;
    private static DtbDeviceRegistration dtbDeviceRegistrationInstance;
    private final DtbMetrics metrics = new DtbMetrics();

    public static void verifyRegistration() {
        if (dtbDeviceRegistrationInstance == null) {
            dtbDeviceRegistrationInstance = new DtbDeviceRegistration();
        }
        DtbThreadService.getInstance().execute(new Runnable() { // from class: com.amazon.device.ads.DtbDeviceRegistration$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DtbDeviceRegistration.dtbDeviceRegistrationInstance.initializeAds();
            }
        });
    }

    private DtbDeviceRegistration() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void initializeAds() {
        boolean z;
        JSONObject jSONObject;
        if (DtbCommonUtils.isOnMainThread()) {
            DtbLog.error(LOG_TAG, "Unable to fetch advertising identifier information on main thread.");
            return;
        }
        String appKey = AdRegistration.getAppKey();
        appId = appKey;
        if (DtbCommonUtils.isNullOrEmpty(appKey)) {
            DtbLog.error(LOG_TAG, "App id not available");
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long longValue = DtbSharedPreferences.getInstance().getSisLastCheckIn().longValue();
        if (DtbSharedPreferences.getInstance().getIsSisRegisterationSuccessful()) {
            long j = currentTimeMillis - longValue;
            if (j <= Constants.MILLIS_IN_DAY) {
                DtbLog.debug("SIS call not required, last registration duration:" + j + ", expiration:86400000");
                return;
            }
        }
        if (!DtbCommonUtils.isNetworkConnected()) {
            DtbLog.debug("Network is not available");
            return;
        }
        new DtbAdvertisingInfo();
        DtbDebugProperties.getInstance();
        registerConfig(appId);
        String sisEndpoint = DtbSharedPreferences.getInstance().getSisEndpoint();
        if (sisEndpoint.startsWith("null")) {
            DtbLog.debug("SIS is not ready");
            return;
        }
        StringBuilder sb = new StringBuilder(DtbDebugProperties.getSISUrl(sisEndpoint));
        if (longValue == 0) {
            DtbLog.info(LOG_TAG, "Trying to register ad id..");
            sb.append("/generate_did");
            z = false;
        } else {
            DtbLog.info(LOG_TAG, "Trying to update ad id..");
            sb.append("/update_dev_info");
            z = true;
        }
        HashMap<String, Object> buildSISParams = buildSISParams(appId);
        try {
            try {
                DtbHttpClient dtbHttpClient = new DtbHttpClient(sb.toString());
                dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
                dtbHttpClient.setParams(buildSISParams);
                dtbHttpClient.enableQueryParams();
                DtbMetric dtbMetric = z ? DtbMetric.SIS_LATENCY_UPDATE_DEVICE_INFO : DtbMetric.SIS_LATENCY_REGISTER_EVENT;
                this.metrics.startTimer(dtbMetric);
                dtbHttpClient.executePOST(60000);
                this.metrics.stopTimer(dtbMetric);
                if (DtbCommonUtils.isNullOrEmpty(dtbHttpClient.getResponse())) {
                    DtbLog.debug("No response from sis call.");
                    throw new Exception("SIS Response is null");
                }
                DtbSharedPreferences.getInstance().setIsSisRegisterationSuccessful(isRegistrationRequestSuccessful((JSONObject) new JSONTokener(dtbHttpClient.getResponse()).nextValue()));
                if (!DtbSharedPreferences.getInstance().getIsSisRegisterationSuccessful()) {
                    DtbLog.info(LOG_TAG, "ad id failed registration: " + jSONObject.toString());
                    throw new Exception("ad id failed registration: ");
                }
                if (dtbMetric != null) {
                    this.metrics.resetMetric(dtbMetric);
                }
                pingSis(sisEndpoint, appId);
            } catch (JSONException e2) {
                DtbLog.error("JSON error parsing return from SIS: " + e2.getMessage());
                if (0 != 0) {
                    this.metrics.resetMetric(null);
                }
            }
        } catch (Exception e3) {
            DtbLog.error("Error registering device for ads:" + e3.toString());
            if (0 != 0) {
                this.metrics.resetMetric(null);
            }
        }
    }

    private void pingSis(String str, String str2) {
        if (System.currentTimeMillis() - DtbSharedPreferences.getInstance().getSisLastPing() < 2592000000L) {
            return;
        }
        String adId = DtbSharedPreferences.getInstance().getAdId();
        if (adId == null || adId.isEmpty()) {
            DtbLog.info("error retrieving ad id, cancelling sis ping");
            return;
        }
        try {
            if (!DtbCommonUtils.isNetworkConnected()) {
                DtbLog.debug("Network is not available");
                return;
            }
            DtbHttpClient dtbHttpClient = new DtbHttpClient(str + "/ping");
            dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
            HashMap<String, Object> hashMap = new HashMap<>();
            hashMap.put("appId", str2);
            hashMap.put("adId", adId);
            Context context = AdRegistration.getContext();
            if (context != null) {
                SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                Object obj = defaultSharedPreferences.contains("IABTCF_gdprApplies") ? defaultSharedPreferences.getAll().get("IABTCF_gdprApplies") : null;
                String string = defaultSharedPreferences.getString("IABTCF_TCString", null);
                if (obj != null) {
                    try {
                        if ((obj instanceof Integer) && (((Integer) obj).intValue() == 1 || ((Integer) obj).intValue() == 0)) {
                            hashMap.put("gdpr", obj);
                        } else if (((obj instanceof String) && ((String) obj).equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) || ((String) obj).equals("0")) {
                            hashMap.put("gdpr", obj);
                        } else {
                            DtbLog.info("IABTCF_gdprApplies should be a 1 or 0 as per IAB guideline");
                        }
                    } catch (ClassCastException unused) {
                        DtbLog.info("IABTCF_gdprApplies should be a number as per IAB guideline");
                    }
                }
                if (string != null) {
                    hashMap.put("gdpr_consent", string);
                }
            }
            String encodedNonIABString = AdRegistration.getEncodedNonIABString();
            if (!DtbCommonUtils.isNullOrEmpty(encodedNonIABString)) {
                hashMap.put("gdpr_custom", encodedNonIABString);
            }
            dtbHttpClient.setParams(hashMap);
            dtbHttpClient.executeGET(60000);
            if (DtbCommonUtils.isNullOrEmpty(dtbHttpClient.getResponse())) {
                DtbLog.debug("No response from sis ping.");
                throw new Exception("Ping SIS Response is null");
            }
            JSONObject jSONObject = (JSONObject) new JSONTokener(dtbHttpClient.getResponse()).nextValue();
            if (isPingRequestSuccessful(jSONObject)) {
                return;
            }
            DtbLog.info(LOG_TAG, "sis ping failed failed registration: " + jSONObject.toString());
            throw new Exception("sis ping failed registration: ");
        } catch (Exception e2) {
            DtbLog.error("Error pinging sis: " + e2.toString());
        }
    }

    private boolean registerConfig(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        long longValue = currentTimeMillis - DtbSharedPreferences.getInstance().getConfigLastCheckIn().longValue();
        DtbLog.debug("Config last checkin duration: " + longValue + ", Expiration: " + DtbSharedPreferences.getInstance().getConfigTtl());
        boolean z = false;
        if (longValue <= 172800000) {
            DtbLog.debug("No config refresh required");
            return false;
        } else if (!DtbCommonUtils.isNetworkConnected()) {
            DtbLog.debug("Network is not available");
            return false;
        } else {
            DtbHttpClient dtbHttpClient = new DtbHttpClient(DtbDebugProperties.getConfigHostName("mads.amazon-adsystem.com") + "/msdk/getConfig");
            dtbHttpClient.addHeader("Accept", "application/json");
            dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
            dtbHttpClient.setParams(buildConfigInfoParams(str));
            try {
                this.metrics.startTimer(DtbMetric.CONFIG_DOWNLOAD_LATENCY);
                dtbHttpClient.executeGET(60000);
                this.metrics.stopTimer(DtbMetric.CONFIG_DOWNLOAD_LATENCY);
            } catch (Exception e2) {
                DtbLog.error("Error fetching DTB config: " + e2.toString());
            }
            if (DtbCommonUtils.isNullOrEmpty(dtbHttpClient.getResponse())) {
                throw new Exception("Config Response is null");
            }
            z = parseRegisterConfigResponse(dtbHttpClient.getResponse(), currentTimeMillis, false);
            try {
                DTBMetricsConfiguration.getInstance().loadMobileClientConfig();
                double intValue = DTBMetricsConfiguration.getClientConfigVal("sampling_rate", DTBMetricsConfiguration.ANALYTIC_PIXEL_DEFAULT_VALUE.intValue(), "analytics").intValue() / 100.0f;
                String clientConfigVal = DTBMetricsConfiguration.getClientConfigVal("url", "", "analytics");
                String clientConfigVal2 = DTBMetricsConfiguration.getClientConfigVal("api_key", "", "analytics");
                if (!APSAnalytics.isInitialized()) {
                    APSAnalytics.init(AdRegistration.getContext());
                }
                APSAnalytics.setSamplingRate((int) intValue);
                APSAnalytics.setHttpUrl(clientConfigVal);
                APSAnalytics.setApiKey(clientConfigVal2);
            } catch (RuntimeException e3) {
                DtbLog.warn("Error when reading client config file for APSAndroidShared library" + e3.toString());
            }
            return z;
        }
    }

    private boolean parseRegisterConfigResponse(String str, long j, boolean z) throws Exception {
        JSONObject jSONObject = (JSONObject) new JSONTokener(str).nextValue();
        if (jSONObject.has("pj")) {
            DtbSharedPreferences.getInstance().savePJTemplate(jSONObject.getJSONObject("pj"));
        } else {
            DtbSharedPreferences.getInstance().removePJTemplate();
        }
        if (jSONObject.has(DtbDebugProperties.AAX_HOSTNAME) || jSONObject.has("sisURL") || jSONObject.has(AAX_VIDEO_HOST_NAME_KEY)) {
            if (jSONObject.has(DtbDebugProperties.AAX_HOSTNAME)) {
                DtbSharedPreferences.getInstance().saveAaxHostname(jSONObject.getString(DtbDebugProperties.AAX_HOSTNAME));
            }
            if (jSONObject.has("sisURL")) {
                z = DtbSharedPreferences.getInstance().saveSisEndpoint(jSONObject.getString("sisURL"));
            }
            if (jSONObject.has(Constants.FirelogAnalytics.PARAM_TTL)) {
                DtbSharedPreferences.getInstance().saveConfigTtl(DtbCommonUtils.getMilliSeconds(jSONObject.getString(Constants.FirelogAnalytics.PARAM_TTL)));
            }
            if (jSONObject.has(AAX_VIDEO_HOST_NAME_KEY)) {
                DtbSharedPreferences.getInstance().saveAaxVideoHostname(jSONObject.getString(AAX_VIDEO_HOST_NAME_KEY));
            }
            if (jSONObject.has("bidTimeout")) {
                DtbSharedPreferences.getInstance().saveBidTimeout(Integer.valueOf(jSONObject.getInt("bidTimeout")));
            } else {
                DtbSharedPreferences.getInstance().removeBidTimeout();
            }
            DtbSharedPreferences.getInstance().saveConfigLastCheckIn(j);
            DtbLog.info(LOG_TAG, "ad configuration loaded successfully.");
            return z;
        }
        DtbLog.info(LOG_TAG, "ad configuration failed load: " + jSONObject.toString());
        throw new Exception("ad configuration failed load");
    }

    private static String convertBooleanToFlag(Boolean bool) {
        return (bool != null && bool.booleanValue()) ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0";
    }

    private HashMap<String, Object> buildSISParams(String str) {
        HashMap<String, Object> hashMap = new HashMap<>(DtbDeviceData.getDeviceDataInstance().getDeviceParams());
        String adId = DtbSharedPreferences.getInstance().getAdId();
        if (adId != null) {
            hashMap.put("adId", adId);
        }
        String idfa = DtbSharedPreferences.getInstance().getIdfa();
        Boolean optOut = DtbSharedPreferences.getInstance().getOptOut();
        if (!DtbCommonUtils.isNullOrEmpty(idfa)) {
            hashMap.put("idfa", idfa);
        }
        hashMap.put("oo", convertBooleanToFlag(optOut));
        if (str != null) {
            hashMap.put("appId", str);
        }
        JSONObject paramsJson = DtbPackageNativeData.getPackageNativeDataInstance(AdRegistration.getContext()).getParamsJson();
        if (paramsJson != null) {
            hashMap.put(MessengerIpcClient.KEY_PACKAGE, paramsJson);
        }
        Context context = AdRegistration.getContext();
        if (context != null) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
            Object obj = defaultSharedPreferences.contains("IABTCF_gdprApplies") ? defaultSharedPreferences.getAll().get("IABTCF_gdprApplies") : null;
            String string = defaultSharedPreferences.getString("IABTCF_TCString", null);
            if (obj != null) {
                try {
                    if ((obj instanceof Integer) && (((Integer) obj).intValue() == 1 || ((Integer) obj).intValue() == 0)) {
                        hashMap.put("gdpr", obj);
                    } else if (((obj instanceof String) && ((String) obj).equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) || ((String) obj).equals("0")) {
                        hashMap.put("gdpr", obj);
                    } else {
                        DtbLog.info("IABTCF_gdprApplies should be a 1 or 0 as per IAB guideline");
                    }
                } catch (ClassCastException unused) {
                    DtbLog.info("IABTCF_gdprApplies should be a number as per IAB guideline");
                }
            }
            if (string != null) {
                hashMap.put("gdpr_consent", string);
            }
        }
        String encodedNonIABString = AdRegistration.getEncodedNonIABString();
        if (!DtbCommonUtils.isNullOrEmpty(encodedNonIABString)) {
            hashMap.put("gdpr_custom", encodedNonIABString);
        }
        return hashMap;
    }

    private HashMap<String, Object> buildConfigInfoParams(String str) {
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("appId", str);
        hashMap.put("sdkVer", DtbCommonUtils.getSDKVersion());
        hashMap.put("fp", "false");
        hashMap.put("testMode", Boolean.toString(AdRegistration.isTestMode()));
        JSONObject paramsJsonGetSafe = DtbDeviceData.getDeviceDataInstance().getParamsJsonGetSafe();
        if (paramsJsonGetSafe != null) {
            hashMap.put("dinfo", paramsJsonGetSafe);
        }
        JSONObject paramsJson = DtbPackageNativeData.getPackageNativeDataInstance(AdRegistration.getContext()).getParamsJson();
        if (paramsJson != null) {
            hashMap.put(MessengerIpcClient.KEY_PACKAGE, paramsJson);
        }
        if (AdRegistration.getCustomDictionary() != null && AdRegistration.getCustomDictionary().containsKey("mediationName")) {
            String str2 = AdRegistration.getCustomDictionary().get("mediationName");
            if (!DtbCommonUtils.isNullOrEmpty(str2)) {
                hashMap.put("mediationName", str2);
            }
        }
        if (Math.random() <= DTBMetricsConfiguration.getClientConfigVal("distribution_pixel", DTBMetricsConfiguration.DISTRIBUTION_PIXEL_DEFAULT_VALUE.intValue(), "sample_rates").intValue() / 100.0f) {
            String sDKDistributionPlace = AdRegistration.getSDKDistributionPlace();
            if (!DtbCommonUtils.isNullOrEmpty(sDKDistributionPlace)) {
                hashMap.put("distribution", sDKDistributionPlace);
            }
        }
        return hashMap;
    }

    private boolean isRegistrationRequestSuccessful(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("rcode")) {
            DtbSharedPreferences.getInstance().saveSisLastCheckIn(System.currentTimeMillis());
            if (jSONObject.getInt("rcode") == 1 && jSONObject.has("adId")) {
                String string = jSONObject.getString("adId");
                if (jSONObject.has("idChanged") && jSONObject.getBoolean("idChanged")) {
                    DtbLog.info(LOG_TAG, "ad id has changed, updating..");
                    this.metrics.incrementMetric(DtbMetric.SIS_COUNTER_IDENTIFIED_DEVICE_CHANGED);
                }
                DtbSharedPreferences.getInstance().saveAdId(string);
                DtbLog.info(LOG_TAG, "ad id is registered or updated successfully.");
                return true;
            }
            if (jSONObject.getInt("rcode") != 103) {
                if (jSONObject.getInt("rcode") != 101 || !jSONObject.has(NotificationCompat.CATEGORY_MESSAGE)) {
                    return false;
                }
                if (jSONObject.optInt(NotificationCompat.CATEGORY_MESSAGE) != 103 && !"need at least one native id in parameter".equals(jSONObject.get(NotificationCompat.CATEGORY_MESSAGE))) {
                    return false;
                }
            }
            DtbSharedPreferences.getInstance().removeAdid();
            DtbLog.debug("No ad-id returned");
            return true;
        }
        return false;
    }

    private boolean isPingRequestSuccessful(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("rcode")) {
            if (jSONObject.getInt("rcode") == 1) {
                DtbSharedPreferences.getInstance().saveSisLastPing(System.currentTimeMillis());
                DtbLog.info(LOG_TAG, "ad id is registered or updated successfully.");
                return true;
            } else if (jSONObject.getInt("rcode") == 103 || (jSONObject.getInt("rcode") == 101 && jSONObject.has(NotificationCompat.CATEGORY_MESSAGE) && jSONObject.getInt(NotificationCompat.CATEGORY_MESSAGE) == 103)) {
                DtbSharedPreferences.getInstance().saveSisLastPing(System.currentTimeMillis());
                DtbLog.info("gdpr consent not granted");
                return true;
            } else {
                return false;
            }
        }
        return false;
    }
}
