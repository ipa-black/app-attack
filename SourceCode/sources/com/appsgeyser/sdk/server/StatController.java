package com.appsgeyser.sdk.server;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.utils.DeviceInfoGetter;
import com.yandex.metrica.YandexMetrica;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class StatController {
    public static final String FT_NETWORK_ADMOB = "ft_admob";
    public static final String FT_NETWORK_ADMOB_CUSTOM = "ft_admob_custom";
    public static final String FT_NETWORK_APPNEXT = "ft_appnext";
    public static final String FT_NETWORK_APPNEXT_CUSTOM = "ft_appnext_custom";
    public static final String FT_NETWORK_APPODEAL = "ft_appodeal";
    public static final String FT_NETWORK_APPODEAL_CUSTOM = "ft_appodeal_custom";
    public static final String FT_NETWORK_FACEBOOK = "ft_facebook";
    public static final String FT_NETWORK_FACEBOOK_CUSTOM = "ft_facebook_custom";
    public static final String FT_NETWORK_MA = "ft_multiAds";
    public static final String FT_NETWORK_MA_ADMOB = "ft_ma_admob";
    public static final String FT_NETWORK_MA_APPNEXT = "ft_ma_appnext";
    public static final String FT_NETWORK_MA_APPODEAL = "ft_ma_appodeal";
    public static final String FT_NETWORK_MA_FACEBOOK = "ft_ma_facebook";
    public static final String FT_NETWORK_MA_UNITY = "ft_ma_unity";
    public static final String FT_NETWORK_UNITY = "ft_unity";
    public static final String FT_NETWORK_UNITY_CUSTOM = "ft_unity_custom";
    public static final String KEY_ABOUT_DIALOG_IMPRESSION = "about_dialog_impression";
    public static final String KEY_ABOUT_DIALOG_VISIT_SITE = "about_dialog_visit_site";
    public static final String KEY_ADMOB = "admobSdk";
    public static final String KEY_APPNEXT = "appnextSdk";
    public static final String KEY_APPNEXT_NATIVE_SDK_CLICK = "appnext_native_sdk_click";
    public static final String KEY_APPNEXT_NATIVE_SDK_IMPRESSION = "appnext_native_sdk_impression";
    public static final String KEY_APPNEXT_REWARDED_SDK_CLICK = "appnext_rewarded_sdk_click";
    public static final String KEY_APPNEXT_REWARDED_SDK_IMPRESSION = "appnext_rewarded_sdk_impression";
    public static final String KEY_APPODEAL = "appodealSdk";
    public static final String KEY_CLICK_ACCEPT_PERMISSION_ACCESS_COARSE_LOCATION = "click_accept_permission_access_coarse_location";
    public static final String KEY_CLICK_ACCEPT_PERMISSION_ACCESS_FINE_LOCATION = "click_accept_permission_access_fine_location";
    public static final String KEY_CLICK_ACCEPT_PERMISSION_GET_ACCOUNTS = "click_accept_permission_get_accounts";
    public static final String KEY_CLICK_ACCEPT_PERMISSION_READ_EXTERNAL_STORAGE = "click_accept_permission_read_external_storage";
    public static final String KEY_CLICK_ACCEPT_PERMISSION_READ_PHONE_STATE = "click_accept_permission_read_phone_state";
    public static final String KEY_CLICK_ACCEPT_PERMISSION_WRITE_EXTERNAL_STORAGE = "click_accept_permission_write_external_storage";
    public static final String KEY_CLICK_ACCEPT_SDK_DIALOG = "click_accept_sdk_dialog";
    public static final String KEY_CLICK_APP_ALREADY_INSTALLED = "click_app_already_installed";
    public static final String KEY_CLICK_BANNER_BACK_KEY_PRESSED = "click_banner_back_key_pressed";
    public static final String KEY_CLICK_BROWSER_BACK_KEY_PRESSED = "click_browser_back_key_pressed";
    public static final String KEY_CLICK_CAN_NOT_START_DOWNLOAD = "click_can_not_start_download";
    public static final String KEY_CLICK_CROSS_BANNER = "click_cross_banner";
    public static final String KEY_CLICK_CROSS_MINI_BROWSER = "click_cross_mini_browser";
    public static final String KEY_CLICK_DATA_TEXT_HTML_LOADED_IN_BANNER = "click_data_text_html_loaded_in_banner";
    public static final String KEY_CLICK_DECLINE_PERMISSION_ACCESS_COARSE_LOCATION = "click_decline_permission_access_coarse_location";
    public static final String KEY_CLICK_DECLINE_PERMISSION_ACCESS_FINE_LOCATION = "click_decline_permission_access_fine_location";
    public static final String KEY_CLICK_DECLINE_PERMISSION_GET_ACCOUNTS = "click_decline_permission_get_accounts";
    public static final String KEY_CLICK_DECLINE_PERMISSION_READ_EXTERNAL_STORAGE = "click_decline_permission_read_external_storage";
    public static final String KEY_CLICK_DECLINE_PERMISSION_READ_PHONE_STATE = "click_decline_permission_read_phone_state";
    public static final String KEY_CLICK_DECLINE_PERMISSION_WRITE_EXTERNAL_STORAGE = "click_decline_permission_write_external_storage";
    public static final String KEY_CLICK_DECLINE_SDK_DIALOG = "click_decline_sdk_dialog";
    public static final String KEY_CLICK_EXTERNAL_BROWSER = "click_external_browser";
    public static final String KEY_CLICK_FINISH_DOWNLOAD = "click_finish_download";
    public static final String KEY_CLICK_FINISH_EMPTY_HTML = "click_finish_epmty_html";
    public static final String KEY_CLICK_FINISH_HTML = "click_finish_html";
    public static final String KEY_CLICK_FINISH_MARKET = "click_finish_market";
    public static final String KEY_CLICK_HTML_TAP_START = "click_html_tap_start";
    public static final String KEY_CLICK_LOADING_ERROR = "click_loading_error";
    public static final String KEY_CLICK_NO_MARKET_ON_DEVICE = "click_no_market_on_device";
    public static final String KEY_CLICK_REDIRECT_START = "click_redirect_start";
    public static final String KEY_CLICK_TIMER_BANNER = "click_timer_banner";
    public static final String KEY_CLICK_WEBWIEW_TAP = "click_webview_tap";
    public static final String KEY_FACEBOOK = "facebookSdk";
    public static final String KEY_FT_BANNER_SDK_CLICK = "ft_banner_sdk_click";
    public static final String KEY_FT_BANNER_SDK_ERROR = "ft_banner_sdk_error";
    public static final String KEY_FT_BANNER_SDK_IMPRESSION = "ft_banner_sdk_impression";
    public static final String KEY_FT_BANNER_SDK_NOFILL = "ft_banner_sdk_nofill";
    public static final String KEY_FT_BANNER_SDK_REQUEST = "ft_banner_sdk_request";
    public static final String KEY_FT_INTERSTITIAL_SDK_ATTEMPT = "ft_interstitial_sdk_attempt";
    public static final String KEY_FT_INTERSTITIAL_SDK_CLICK = "ft_interstitial_sdk_click";
    public static final String KEY_FT_INTERSTITIAL_SDK_ERROR = "ft_interstitial_sdk_error";
    public static final String KEY_FT_INTERSTITIAL_SDK_IMPRESSION = "ft_interstitial_sdk_impression";
    public static final String KEY_FT_INTERSTITIAL_SDK_NOFILL = "ft_interstitial_sdk_nofill";
    public static final String KEY_FT_INTERSTITIAL_SDK_REQUEST = "ft_interstitial_sdk_request";
    public static final String KEY_FT_NATIVE_SDK_ATTEMPT = "ft_native_sdk_attempt";
    public static final String KEY_FT_NATIVE_SDK_CLICK = "ft_native_sdk_click";
    public static final String KEY_FT_NATIVE_SDK_ERROR = "ft_native_sdk_error";
    public static final String KEY_FT_NATIVE_SDK_IMPRESSION = "ft_native_sdk_impression";
    public static final String KEY_FT_NATIVE_SDK_NOFILL = "ft_native_sdk_nofill";
    public static final String KEY_FT_NATIVE_SDK_REQUEST = "ft_native_sdk_request";
    public static final String KEY_FT_REWARDED_SDK_ATTEMPT = "ft_rewarded_sdk_attempt";
    public static final String KEY_FT_REWARDED_SDK_CLICK = "ft_rewarded_sdk_click";
    public static final String KEY_FT_REWARDED_SDK_COMPLETION = "ft_rewarded_sdk_completion";
    public static final String KEY_FT_REWARDED_SDK_ERROR = "ft_rewarded_sdk_error";
    public static final String KEY_FT_REWARDED_SDK_IMPRESSION = "ft_rewarded_sdk_impression";
    public static final String KEY_FT_REWARDED_SDK_NOFILL = "ft_rewarded_sdk_nofill";
    public static final String KEY_FT_REWARDED_SDK_REQUEST = "ft_rewarded_sdk_request";
    public static final String KEY_GET_PARAM_DETAILS = "details";
    public static final String KEY_GET_PARAM_URL = "url";
    public static final String KEY_HTML = "htmlSdk";
    public static final String KEY_INAPP_ACCESS_NEW_PURCHASE = "inapp_access_new_purchase";
    public static final String KEY_INAPP_ACCESS_PRODUCT_LOADED = "inapp_access_products_loaded";
    public static final String KEY_INAPP_DISABLE_ADS_ACKNOWLEDGED = "inapp_disable_ads_acknowledged";
    public static final String KEY_INAPP_DISABLE_ADS_CANCELED = "inapp_disable_ads_canceled";
    public static final String KEY_INAPP_DISABLE_ADS_NEW_PURCHASE = "inapp_disable_ads_new_purchase";
    public static final String KEY_INAPP_DISABLE_ADS_PENDING = "inapp_disable_ads_pending";
    public static final String KEY_INAPP_DISABLE_ADS_PRODUCT_LOADED = "inapp_disable_ads_products_loaded";
    public static final String KEY_INIT_ERROR = "init_error";
    public static final String KEY_MULTIADS = "multiAdsSdk";
    public static final String KEY_NATIVE_INTERSTITIAL_CLICK_URL = "native_interstitial_click_url";
    public static final String KEY_NATIVE_INTERSTITIAL_IMPRESSION_URL = "native_interstitial_impression_url";
    public static final String KEY_OFFERWALL_OPENED = "offer_wall_opened";
    public static final String KEY_ONESIGNAL_PUSH_RECEIVED = "onesignal_push_received";
    public static final String KEY_RMA_FEEDBACKS = "rma_dialog_feedback_clicks";
    public static final String KEY_RMA_IMPRESSIONS = "rma_dialog_impressions";
    public static final String KEY_RMA_RATES = "rma_dialog_rate_clicks";
    public static final String KEY_SILVERMOB_INTERSTITIAL_CLICK_URL = "silvermob_interstitial_click_url";
    public static final String KEY_SILVERMOB_INTERSTITIAL_CLOSE_URL = "silvermob_interstitial_close_url";
    public static final String KEY_SILVERMOB_INTERSTITIAL_ERROR_URL = "silvermob_interstitial_error_url";
    public static final String KEY_SILVERMOB_INTERSTITIAL_IMPRESSION_URL = "silvermob_interstitial_impression_url";
    public static final String KEY_SILVERMOB_INTERSTITIAL_LOADED_URL = "silvermob_interstitial_loaded_url";
    public static final String KEY_SILVERMOB_INTERSTITIAL_NO_FILL_URL = "silvermob_interstitial_no_fill_url";
    public static final String KEY_SILVERMOB_INTERSTITIAL_REQUEST_URL = "silvermob_interstitial_request_url";
    public static final String KEY_UNITY = "unitySdk";
    private static final String LOG = "StatController";
    private static final String TEMPLATE_VERSION_URL_KEY = "templateversion";
    private static StatController instance;
    private HashMap<String, String> items;

    /* loaded from: classes2.dex */
    public enum AdsType {
        NATIVE,
        REWARDED,
        FULLSCREEN
    }

    private StatController() {
    }

    public static synchronized StatController getInstance() {
        StatController statController;
        synchronized (StatController.class) {
            if (instance == null) {
                instance = new StatController();
            }
            statController = instance;
        }
        return statController;
    }

    public void init(HashMap<String, String> hashMap) {
        this.items = hashMap;
    }

    public void sendRequestAsyncByKey(String str) {
        sendRequestAsyncByKey(str, null, null, false);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.appsgeyser.sdk.server.StatController$1] */
    public void sendRequestAsyncByKey(String str, final HashMap<String, String> hashMap, Context context, boolean z) {
        if (z && context != null && hashMap != null) {
            HashMap<String, String> deviceInfoMap = DeviceInfoGetter.getDeviceInfoMap(context);
            if (deviceInfoMap != null) {
                hashMap.putAll(deviceInfoMap);
            }
            String templateVersion = Configuration.getInstance(context).getTemplateVersion();
            if (templateVersion != null) {
                hashMap.put(TEMPLATE_VERSION_URL_KEY, templateVersion);
            }
        }
        sendQueryToYandexMetrica(str, hashMap);
        if (!isInitialized()) {
            Log.d(LOG, "StatController not initialized, skipping stat request on: " + str);
            return;
        }
        final String str2 = this.items.get(str);
        if (str2 == null) {
            Log.d(LOG, "Stat url not set, skipping stat request on: " + str);
        } else {
            new Thread() { // from class: com.appsgeyser.sdk.server.StatController.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    String str3 = str2;
                    if (hashMap != null) {
                        Uri.Builder buildUpon = Uri.parse(str3).buildUpon();
                        for (Map.Entry entry : hashMap.entrySet()) {
                            buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
                        }
                        str3 = buildUpon.build().toString();
                    }
                    RequestQueueHolder.addUrl(str3);
                }
            }.start();
        }
    }

    private void sendQueryToYandexMetrica(String str, HashMap<String, String> hashMap) {
        String jSONObject;
        if (hashMap != null) {
            try {
                jSONObject = new JSONObject(hashMap).toString();
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        } else {
            jSONObject = null;
        }
        YandexMetrica.reportEvent(str, jSONObject);
    }

    private boolean isInitialized() {
        return this.items != null;
    }

    public static HashMap<String, String> generateQueryParametersForSdk(ConfigPhp configPhp, Context context, AdsType adsType, String str, String str2) {
        String str3;
        String str4;
        HashMap<String, String> hashMap = new HashMap<>();
        Configuration configuration = Configuration.getInstance(context);
        hashMap.put("wdid", configuration.getApplicationId());
        hashMap.put("guid", configuration.getAppGuid());
        hashMap.put(KEY_GET_PARAM_DETAILS, str);
        if (adsType == AdsType.NATIVE) {
            str3 = configPhp.getAdsNetworkSdk().get(str2).getUniqueId();
            str4 = configPhp.getAdsNetworkSdk().get(str2).getBannerId();
        } else if (adsType == AdsType.REWARDED) {
            str3 = configPhp.getRewardedVideoSdk().get(str2).getUniqueId();
            str4 = configPhp.getRewardedVideoSdk().get(str2).getBannerId();
        } else if (adsType != AdsType.FULLSCREEN) {
            str3 = "";
            str4 = "";
        } else {
            str3 = configPhp.getFullscreenSdk().get(str2).getUniqueId();
            str4 = configPhp.getFullscreenSdk().get(str2).getBannerId();
        }
        hashMap.put(BrowserActivity.KEY_UNIQ_ID, str3);
        hashMap.put("bannerid", str4);
        return hashMap;
    }
}
