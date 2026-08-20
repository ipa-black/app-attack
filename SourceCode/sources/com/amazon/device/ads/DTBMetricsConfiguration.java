package com.amazon.device.ads;

import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class DTBMetricsConfiguration {
    static final String ANALYTICS_KEY_NAME = "analytics";
    static final String API_KEY_ANALYTICS_KEY_NAME = "api_key";
    static final String CONFIG_DIR = "config";
    static final String CONFIG_WITH_JSON = "aps_mobile_client_config.json";
    static final String CREATIVE_TEMPLATES_KEY_NAME = "creative";
    static final String DISTRIBUTION_PIXEL_SAMPLE_RATE_KEY_NAME = "distribution_pixel";
    static final String FEATURE_FLAG = "feature_toggle";
    private static final String LOG_TAG = "DTBMetricsConfiguration";
    static final String OM_SDK_CONFIGURABLE_PARTNER_KEY_NAME = "partner_name";
    static final String OM_SDK_DENIED_VERSION_KEY_NAME = "denied_version_list";
    static final String OM_SDK_FEATURE_ENABLE_KEY_NAME = "feature_enabled";
    static final String OM_SDK_FEATURE_KEY_NAME = "om_sdk_feature";
    static final String SAMPLE_RATES_KEY_NAME = "sample_rates";
    static final String SAMPLING_RATE_ANALYTICS_KEY_NAME = "sampling_rate";
    static final String SPP_FLAG_DEFAULT_VALUE = "leq";
    static final String SPP_FLAG_KEY_NAME = "spp_flag";
    static final String TEMPLATES_KEY_NAME = "templates";
    static final String URL_ANALYTICS_KEY_NAME = "url";
    static final String WRAPPING_PIXEL_SAMPLE_RATE_KEY_NAME = "wrapping_pixel";
    private static DTBMetricsConfiguration theInstance;
    private JSONObject configuration;
    static final Integer WRAPPING_PIXEL_DEFAULT_VALUE = 5;
    static final Integer DISTRIBUTION_PIXEL_DEFAULT_VALUE = 1;
    static final Integer ANALYTIC_PIXEL_DEFAULT_VALUE = 1;

    public static synchronized DTBMetricsConfiguration getInstance() {
        DTBMetricsConfiguration dTBMetricsConfiguration;
        synchronized (DTBMetricsConfiguration.class) {
            if (theInstance == null) {
                theInstance = new DTBMetricsConfiguration();
            }
            dTBMetricsConfiguration = theInstance;
        }
        return dTBMetricsConfiguration;
    }

    private DTBMetricsConfiguration() {
        loadMobileClientConfig();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void loadMobileClientConfig() {
        DTBAdUtil.createDirIfDoesNotExist("config");
        loadConfiguration();
        DtbThreadService.getInstance().execute(new Runnable() { // from class: com.amazon.device.ads.DTBMetricsConfiguration$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DTBMetricsConfiguration.this.m66x8c9a1f68();
            }
        });
    }

    synchronized void loadConfiguration() {
        try {
            String workingDirContent = getWorkingDirContent();
            if (workingDirContent == null) {
                workingDirContent = DTBAdUtil.loadFromAssets(CONFIG_WITH_JSON);
            }
            this.configuration = new JSONObject(workingDirContent);
        } catch (IOException unused) {
        } catch (JSONException unused2) {
            DtbLog.error("Invalid configuration");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadConfigurationFromWeb */
    public void m66x8c9a1f68() {
        try {
            DtbHttpClient dtbHttpClient = new DtbHttpClient(WebResourceOptions.getCDNHost(CONFIG_WITH_JSON) + CONFIG_WITH_JSON);
            dtbHttpClient.setUseSecure(DtbDebugProperties.getIsSecure(true));
            dtbHttpClient.executeGET(60000);
            if (dtbHttpClient.getResponseCode() != 200) {
                throw new RuntimeException("resource aps_mobile_client_config.json not available");
            }
            String response = dtbHttpClient.getResponse();
            File filesDir = AdRegistration.getContext().getFilesDir();
            File createTempFile = File.createTempFile("temp", "json", filesDir);
            FileWriter fileWriter = new FileWriter(createTempFile);
            fileWriter.write(response);
            fileWriter.close();
            File file = new File(filesDir.getAbsolutePath() + "/config/aps_mobile_client_config.json");
            if (file.exists()) {
                file.delete();
            }
            if (!createTempFile.renameTo(file)) {
                DtbLog.error("Rename failed");
            }
            loadConfiguration();
        } catch (Exception e2) {
            DtbLog.error("Error loading configuration:" + e2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean isTypeEnabled(String str) {
        JSONObject jSONObject = this.configuration;
        if (jSONObject != null) {
            try {
                JSONObject jSONObject2 = jSONObject.getJSONObject("metrics");
                if (jSONObject2.has(str)) {
                    return jSONObject2.getBoolean(str);
                }
            } catch (JSONException unused) {
                DtbLog.error("Unable to get metrics from configuration");
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFeatureEnabled(String str) {
        JSONObject jSONObject = this.configuration;
        if (jSONObject == null || !jSONObject.has(FEATURE_FLAG)) {
            return true;
        }
        try {
            JSONObject jSONObject2 = this.configuration.getJSONObject(FEATURE_FLAG);
            if (jSONObject2.has(str)) {
                return jSONObject2.getBoolean(str);
            }
            return true;
        } catch (JSONException unused) {
            DtbLog.error("Unable to get feature flag from configuration");
            return true;
        }
    }

    private JSONObject getConfigParams(String str) {
        if (this.configuration.has(str)) {
            try {
                return this.configuration.getJSONObject(str);
            } catch (JSONException unused) {
                DtbLog.error("Unable to get" + str + "from configuration");
                return null;
            }
        }
        return null;
    }

    String getConfigVal(String str) {
        if (this.configuration.has(str)) {
            try {
                return this.configuration.getString(str);
            } catch (JSONException unused) {
                DtbLog.error("Unable to get" + str + "from configuration");
                return null;
            }
        }
        return null;
    }

    public static Integer getClientConfigVal(String str, int i, String str2) {
        try {
            JSONObject configParams = getInstance().getConfigParams(str2);
            if (configParams != null) {
                try {
                    if (configParams.has(str)) {
                        return Integer.valueOf(configParams.getInt(str));
                    }
                } catch (Exception unused) {
                    DtbLog.warn("Unable to get" + str2 + "for " + str + " from configuration. Using default value");
                }
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getClientConfigVal method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute getClientConfigVal method", e2);
        }
        return Integer.valueOf(i);
    }

    public static String getClientConfigVal(String str, String str2, String str3) {
        try {
            JSONObject configParams = getInstance().getConfigParams(str3);
            if (configParams != null) {
                try {
                    if (configParams.has(str)) {
                        return configParams.getString(str);
                    }
                } catch (Exception unused) {
                    DtbLog.warn("Unable to get" + str3 + "for " + str + " from configuration. Using default value");
                }
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getClientConfigVal method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute getClientConfigVal method", e2);
        }
        return str2;
    }

    public static String getClientConfigVal(String str, String str2) {
        String configVal;
        try {
            configVal = getInstance().getConfigVal(str2);
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getClientConfigVal method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute getClientConfigVal method", e2);
        }
        return !DtbCommonUtils.isNullOrEmpty(configVal) ? configVal : str;
    }

    public static Integer getAnalyticsParams(String str, int i) {
        try {
            JSONObject configParams = getInstance().getConfigParams(ANALYTICS_KEY_NAME);
            if (configParams != null) {
                try {
                    if (configParams.has(str)) {
                        return Integer.valueOf(configParams.getInt(str));
                    }
                } catch (Exception unused) {
                    DtbLog.warn("Unable to get sample rates for " + str + " from configuration. Using default value");
                }
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute getSampleRateForPixel method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute getSampleRateForPixel method", e2);
        }
        return Integer.valueOf(i);
    }

    public static List<String> getDeniedOmSdkVersionList(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONObject configParams = getInstance().getConfigParams(OM_SDK_FEATURE_KEY_NAME);
            if (configParams != null) {
                try {
                    if (configParams.has(str)) {
                        JSONArray jSONArray = configParams.getJSONArray(str);
                        for (int i = 0; i < jSONArray.length(); i++) {
                            Object obj = jSONArray.get(i);
                            if (obj instanceof String) {
                                arrayList.add(obj.toString());
                            }
                        }
                    }
                } catch (JSONException e2) {
                    DtbLog.warn("Unable to get denied om sdk Version list for " + str + " from configuration. Using default value as empty list");
                    APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute getOMSDKVersionList method", e2);
                }
            }
        } catch (RuntimeException e3) {
            DtbLog.error(LOG_TAG, "Fail to execute getOMSDKVersionList method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute getOMSDKVersionList method", e3);
        }
        return arrayList;
    }

    private String getWorkingDirContent() throws IOException {
        return DTBAdUtil.loadFile(CONFIG_WITH_JSON, "config");
    }
}
