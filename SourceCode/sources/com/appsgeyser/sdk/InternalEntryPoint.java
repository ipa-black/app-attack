package com.appsgeyser.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.ads.AdView;
import com.appsgeyser.sdk.ads.FullScreenBanner;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.ads.rewardedVideo.RewardedAdHelper;
import com.appsgeyser.sdk.ads.sdk.SdkController;
import com.appsgeyser.sdk.analytics.Analytics;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.datasdk.PermissionsRequester;
import com.appsgeyser.sdk.deviceidparser.DeviceIdParameters;
import com.appsgeyser.sdk.deviceidparser.DeviceIdParser;
import com.appsgeyser.sdk.deviceidparser.IDeviceIdParserListener;
import com.appsgeyser.sdk.inapp.PurchaseController;
import com.appsgeyser.sdk.inapp.utils.DisableAdsSharedPrefs;
import com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient;
import com.appsgeyser.sdk.server.network.NetworkAvailableReceiver;
import com.appsgeyser.sdk.server.network.NetworkManager;
import com.appsgeyser.sdk.server.network.OnNetworkStateChangedListener;
import com.appsgeyser.sdk.ui.AboutDialogActivity;
import com.appsgeyser.sdk.ui.AdvertisingTermsDialog;
import com.appsgeyser.sdk.utils.RateApp.MarketChecker;
import com.appsgeyser.sdk.utils.RateApp.RateAppManager;
import com.google.gson.JsonSyntaxException;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.YandexMetricaConfig;
import java.util.HashMap;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class InternalEntryPoint implements IDeviceIdParserListener {
    private static final String CONFIG_PHP_KEY = "config_php_key";
    private static final InternalEntryPoint INSTANCE = new InternalEntryPoint();
    private static final String METRICA_ON_START_EVENT = "on_start_event";
    private AppsgeyserSDK.OnAboutDialogEnableListener aboutDialogEnabledListener;
    private AppsgeyserSDK.OnAccessDataEnableListener accessDataEnableListener;
    private AdvertisingTermsDialog advertisingTermsDialog;
    private AfterConsentRequestListener afterConsentRequestCompletedListener;
    private Application application;
    private boolean customHtmlAbout;
    private AppsgeyserSDK.OnDisableAdsDataEnableListener disableAdsDataEnableListener;
    private boolean doneDeviceParser;
    private FullScreenBanner fullScreenBanner;
    private DeviceIdParameters idParameters;
    private boolean isConsentRequestProcessActive;
    private boolean isConsentRequestProcessCompleted;
    private boolean isOnResumeFSEnabled;
    private AppsgeyserSDK.OnAdditionalJsLoaded jsLoader;
    private OnNetworkStateChangedListener networkAvailableListener;
    private NetworkAvailableReceiver networkReceiver;
    private AppsgeyserSDK.OnInAppUpdateEnableListener onInAppUpdateEnableListener;
    private AppsgeyserSDK.OnRateMyAppEnableListener rateMyAppEnableListener;
    private RewardedAdHelper rewardedAdHelper;
    private boolean saveAccessDataEnableListener;
    private boolean saveDialogEnableListener;
    private boolean saveDisableAdsEnableListener;
    private boolean saveRateMyAppEnableListener;
    private float selectedRating;
    private Configuration configuration = null;
    private boolean enablePull = false;
    private boolean isApplicationVisible = true;
    private AdView adView = null;
    private HashMap<String, Boolean> wasFSShownInOnResume = new HashMap<>(6);
    private String additionalJsCode = "";
    private AppState appState = AppState.ON_PAUSE;

    /* loaded from: classes2.dex */
    public interface AfterConsentRequestListener {
        void onConsentRequestCompleted();
    }

    /* loaded from: classes2.dex */
    public enum AppState {
        ON_RESUME,
        ON_PAUSE
    }

    public static InternalEntryPoint getInstance() {
        return INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void takeOff(Activity activity, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            if (!checkPermissions(activity)) {
                return;
            }
            init(activity, str3, str, str2);
            DisableAdsSharedPrefs.getInstance().init(activity);
            PurchaseController.getInstance().init(activity, str);
            YandexMetrica.activate(activity, YandexMetricaConfig.newConfigBuilder(Constants.APP_METRICA_ID).build());
            YandexMetrica.enableActivityAutoTracking(activity.getApplication());
            try {
                String metricaOnStartEvent = this.configuration.getMetricaOnStartEvent();
                if (metricaOnStartEvent != null) {
                    YandexMetrica.reportEvent(METRICA_ON_START_EVENT, metricaOnStartEvent);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (NetworkManager.isOnline(activity)) {
            DeviceIdParser.getInstance().rescan(activity, this);
            this.doneDeviceParser = true;
        }
        RateAppManager.getInstance(activity).increaseEntries();
        PermissionsRequester.requestNotificationPermissions(activity, 122);
    }

    private void init(Activity activity, String str, String str2, String str3) {
        Configuration configuration = Configuration.getInstance(activity);
        this.configuration = configuration;
        configuration.setTemplateVersion(str);
        this.configuration.loadConfiguration();
        if (!(this.configuration.getApplicationId() != null ? this.configuration.getApplicationId() : "").equals(str2)) {
            this.configuration.clearApplicationSettings();
            this.configuration.setApplicationId(str2);
            this.configuration.setMetricaOnStartEvent(str3, str);
        }
        Analytics.getInstance(activity).activityStarted(activity);
        this.fullScreenBanner = new FullScreenBanner(activity);
        this.advertisingTermsDialog = new AdvertisingTermsDialog(activity);
        if (this.networkReceiver == null) {
            this.networkReceiver = NetworkAvailableReceiver.createAndRegisterNetworkReceiver(activity);
        }
        OnNetworkStateChangedListener createNetworkAvailableListener = this.networkReceiver.createNetworkAvailableListener(activity);
        this.networkAvailableListener = createNetworkAvailableListener;
        this.networkReceiver.addListener(createNetworkAvailableListener);
        SdkController.initSdk(activity);
    }

    public void retryParsers(Context context) {
        if (this.doneDeviceParser) {
            return;
        }
        DeviceIdParser.getInstance().rescan(context, this);
        this.doneDeviceParser = true;
    }

    public FullScreenBanner getFullScreenBanner(Context context) {
        FullScreenBanner fullScreenBanner;
        synchronized (InternalEntryPoint.class) {
            FullScreenBanner fullScreenBanner2 = this.fullScreenBanner;
            if (fullScreenBanner2 == null) {
                this.fullScreenBanner = new FullScreenBanner(context);
            } else if (fullScreenBanner2.getContext() == null) {
                this.fullScreenBanner.setContext(context);
            }
            fullScreenBanner = this.fullScreenBanner;
        }
        return fullScreenBanner;
    }

    public boolean pullEnabled() {
        return this.enablePull;
    }

    public void enablePull() {
        this.enablePull = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdView(AdView adView) {
        this.adView = adView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdView getAdView() {
        return this.adView;
    }

    private boolean checkPermissions(Activity activity) {
        if (activity.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 && activity.checkCallingOrSelfPermission("android.permission.INTERNET") == 0) {
            return true;
        }
        ExceptionHandler.handleException(new Exception("Invalid permission. You have to grant ACCESS_NETWORK_STATE and INTERNET permissions to work properly"));
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPause(Context context) {
        String str;
        this.appState = AppState.ON_PAUSE;
        if (!(context instanceof Activity)) {
            str = "";
        } else {
            str = ((Activity) context).getLocalClassName();
        }
        AdView adView = this.adView;
        if (adView != null && str.equals(adView.getActivity().getLocalClassName())) {
            this.adView.onPause();
        }
        NetworkAvailableReceiver networkAvailableReceiver = this.networkReceiver;
        if (networkAvailableReceiver != null) {
            try {
                context.unregisterReceiver(networkAvailableReceiver);
            } catch (IllegalArgumentException unused) {
            }
        }
        RewardedAdHelper rewardedAdHelper = this.rewardedAdHelper;
        if (rewardedAdHelper != null) {
            rewardedAdHelper.onPause();
        }
        FullScreenBanner fullScreenBanner = this.fullScreenBanner;
        if (fullScreenBanner != null) {
            fullScreenBanner.setActivityInForeground(false);
        }
        FastTrackAdsController.getInstance().onPause();
        INSTANCE.setApplicationVisible(false);
        RateAppManager.getInstance(context).setPause();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onResume(Context context) {
        String str;
        this.appState = AppState.ON_RESUME;
        boolean z = context instanceof Activity;
        if (!z) {
            str = "";
        } else {
            Activity activity = (Activity) context;
            str = activity.getLocalClassName();
            RateAppManager.getInstance(context).setCurrentActivity(activity);
        }
        if (new PreferencesCoder(context).getPrefBoolean(Constants.PREFS_CONFIG_BAN_ACTIVE, false)) {
            PausedContentInfoActivity.startPausedContentInfoActivity(context, false);
        }
        AdView adView = this.adView;
        if (adView != null && str.equals(adView.getActivity().getLocalClassName())) {
            this.adView.onResume();
        }
        this.configuration = Configuration.getInstance(context);
        if (this.networkReceiver == null) {
            NetworkAvailableReceiver createAndRegisterNetworkReceiver = NetworkAvailableReceiver.createAndRegisterNetworkReceiver(context);
            this.networkReceiver = createAndRegisterNetworkReceiver;
            OnNetworkStateChangedListener createNetworkAvailableListener = createAndRegisterNetworkReceiver.createNetworkAvailableListener(context);
            this.networkAvailableListener = createNetworkAvailableListener;
            this.networkReceiver.addListener(createNetworkAvailableListener);
        } else {
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(this.networkReceiver, intentFilter, 2);
            } else {
                context.registerReceiver(this.networkReceiver, intentFilter);
            }
        }
        FullScreenBanner fullScreenBanner = this.fullScreenBanner;
        if (fullScreenBanner != null) {
            fullScreenBanner.setContext(context);
            this.fullScreenBanner.setActivityInForeground(true);
        }
        RewardedAdHelper rewardedAdHelper = this.rewardedAdHelper;
        if (rewardedAdHelper != null) {
            rewardedAdHelper.setContext(context);
            this.rewardedAdHelper.onResume();
        }
        if (this.isOnResumeFSEnabled && this.fullScreenBanner != null && z) {
            Activity activity2 = (Activity) context;
            if (!isFSWasAlreadyShown(activity2)) {
                this.wasFSShownInOnResume.put(activity2.getClass().getCanonicalName(), true);
                this.fullScreenBanner.load(Constants.BannerLoadTags.ON_RESUME);
            }
        }
        FastTrackAdsController.getInstance().onResume(context);
        INSTANCE.setApplicationVisible(true);
    }

    private boolean isFSWasAlreadyShown(Activity activity) {
        String canonicalName = activity.getClass().getCanonicalName();
        if (this.wasFSShownInOnResume.containsKey(canonicalName)) {
            return this.wasFSShownInOnResume.get(canonicalName).booleanValue();
        }
        return false;
    }

    @Override // com.appsgeyser.sdk.deviceidparser.IDeviceIdParserListener
    public void onDeviceIdParametersObtained(final Context context, DeviceIdParameters deviceIdParameters) {
        this.idParameters = deviceIdParameters;
        AppsgeyserServerClient.getInstance().getConfigPhp(context, this.idParameters, new AppsgeyserServerClient.ConfigPhpRequestListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.1
            @Override // com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.ConfigPhpRequestListener
            public void receivedConfigPhp(ConfigPhp configPhp) {
                InternalEntryPoint.getInstance().getFullScreenBanner(context).initWithDeviceIdParameters(InternalEntryPoint.this.idParameters);
                if (configPhp != null) {
                    if (InternalEntryPoint.this.advertisingTermsDialog != null) {
                        InternalEntryPoint.this.advertisingTermsDialog.show(configPhp.isAdvertisingTermsDialog());
                    }
                    if (InternalEntryPoint.this.saveDialogEnableListener) {
                        InternalEntryPoint.this.aboutDialogEnabledListener.onDialogEnableReceived(configPhp.isAboutScreenEnabled());
                    }
                    if (InternalEntryPoint.this.saveRateMyAppEnableListener) {
                        InternalEntryPoint.this.rateMyAppEnableListener.onRateMyAppEnableReceived(configPhp.isRateMyAppActive());
                    }
                    if (InternalEntryPoint.this.saveAccessDataEnableListener) {
                        InternalEntryPoint.this.accessDataEnableListener.onAccessDataEnable(configPhp.getAppsgeyserAccess());
                    }
                    if (InternalEntryPoint.this.saveDisableAdsEnableListener) {
                        InternalEntryPoint.this.disableAdsDataEnableListener.onDisableAdsDataEnable(configPhp.getAppsgeyserDisableAds());
                    }
                    if (InternalEntryPoint.this.rewardedAdHelper == null) {
                        InternalEntryPoint.this.rewardedAdHelper = new RewardedAdHelper(configPhp, context);
                    }
                    Constants.setFullScreenDelay(configPhp.getFullScreenDelay());
                    InternalEntryPoint.getInstance().getFullScreenBanner(context).setTimesToShow(configPhp.getFullscreenBannerCountToShow());
                    InternalEntryPoint.getInstance().getFullScreenBanner(context).setOnTouchFSEnabled(configPhp.isOnTouchFSEnabled());
                    if (configPhp.isTakeOffFSEnabled()) {
                        InternalEntryPoint.getInstance().getFullScreenBanner(context).load(Constants.BannerLoadTags.ON_TAKE_OFF);
                    }
                    InternalEntryPoint.this.isOnResumeFSEnabled = configPhp.isOnResumeFSEnabled();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void showAboutDialog(Activity activity) {
        final Intent intent = new Intent(activity, AboutDialogActivity.class);
        intent.setFlags(268435456);
        if (this.idParameters != null) {
            AppsgeyserServerClient.getInstance().getConfigPhp(activity, this.idParameters, new AppsgeyserServerClient.ConfigPhpRequestListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.2
                @Override // com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.ConfigPhpRequestListener
                public void receivedConfigPhp(ConfigPhp configPhp) {
                    intent.putExtra(InternalEntryPoint.CONFIG_PHP_KEY, configPhp);
                    InternalEntryPoint.this.customHtmlAbout = configPhp.isCustomAboutActive();
                }
            });
        } else {
            String prefString = Configuration.getInstance(activity).getSettingsCoder().getPrefString(Constants.PREFS_SERVER_RESPONSE, "");
            if (!TextUtils.isEmpty(prefString)) {
                try {
                    ConfigPhp parseFromJson = ConfigPhp.parseFromJson(prefString);
                    intent.putExtra(CONFIG_PHP_KEY, parseFromJson);
                    this.customHtmlAbout = parseFromJson.isCustomAboutActive();
                } catch (JsonSyntaxException unused) {
                }
            } else {
                intent.putExtra(CONFIG_PHP_KEY, "");
            }
        }
        if (!this.customHtmlAbout) {
            activity.startActivity(intent);
        } else {
            PausedContentInfoActivity.startPausedContentInfoActivity(activity, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getNewConfigPhp(Context context, final AppsgeyserSDK.OnAboutDialogEnableListener onAboutDialogEnableListener) {
        this.aboutDialogEnabledListener = onAboutDialogEnableListener;
        if (this.idParameters != null) {
            AppsgeyserServerClient.getInstance().getConfigPhp(context, this.idParameters, new AppsgeyserServerClient.ConfigPhpRequestListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.3
                @Override // com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.ConfigPhpRequestListener
                public void receivedConfigPhp(ConfigPhp configPhp) {
                    onAboutDialogEnableListener.onDialogEnableReceived(configPhp.isAboutScreenEnabled());
                    InternalEntryPoint.this.saveDialogEnableListener = false;
                }
            });
            return;
        }
        String prefString = Configuration.getInstance(context).getSettingsCoder().getPrefString(Constants.PREFS_SERVER_RESPONSE, "");
        if (!TextUtils.isEmpty(prefString)) {
            try {
                onAboutDialogEnableListener.onDialogEnableReceived(ConfigPhp.parseFromJson(prefString).isAboutScreenEnabled());
                this.saveDialogEnableListener = false;
                return;
            } catch (JsonSyntaxException unused) {
                this.saveDialogEnableListener = true;
                return;
            }
        }
        this.saveDialogEnableListener = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getNewConfigPhp(Context context, final AppsgeyserSDK.OnInAppUpdateEnableListener onInAppUpdateEnableListener) {
        this.onInAppUpdateEnableListener = onInAppUpdateEnableListener;
        if (this.idParameters != null) {
            AppsgeyserServerClient.getInstance().getConfigPhp(context, this.idParameters, new AppsgeyserServerClient.ConfigPhpRequestListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.4
                @Override // com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.ConfigPhpRequestListener
                public void receivedConfigPhp(ConfigPhp configPhp) {
                    onInAppUpdateEnableListener.onInAppUpdateEnable(configPhp.isInappUpdateEnabled());
                    InternalEntryPoint.this.saveDialogEnableListener = false;
                }
            });
            return;
        }
        String prefString = Configuration.getInstance(context).getSettingsCoder().getPrefString(Constants.PREFS_SERVER_RESPONSE, "");
        if (!TextUtils.isEmpty(prefString)) {
            try {
                onInAppUpdateEnableListener.onInAppUpdateEnable(ConfigPhp.parseFromJson(prefString).isInappUpdateEnabled());
                this.saveDialogEnableListener = false;
                return;
            } catch (JsonSyntaxException unused) {
                this.saveDialogEnableListener = true;
                return;
            }
        }
        this.saveDialogEnableListener = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getNewConfigPhp(Context context, final AppsgeyserSDK.OnAccessDataEnableListener onAccessDataEnableListener) {
        this.accessDataEnableListener = onAccessDataEnableListener;
        if (this.idParameters != null) {
            AppsgeyserServerClient.getInstance().getConfigPhp(context, this.idParameters, new AppsgeyserServerClient.ConfigPhpRequestListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.5
                @Override // com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.ConfigPhpRequestListener
                public void receivedConfigPhp(ConfigPhp configPhp) {
                    onAccessDataEnableListener.onAccessDataEnable(configPhp.getAppsgeyserAccess());
                    InternalEntryPoint.this.saveAccessDataEnableListener = false;
                }
            });
            return;
        }
        String prefString = Configuration.getInstance(context).getSettingsCoder().getPrefString(Constants.PREFS_SERVER_RESPONSE, "");
        if (!TextUtils.isEmpty(prefString)) {
            try {
                onAccessDataEnableListener.onAccessDataEnable(ConfigPhp.parseFromJson(prefString).getAppsgeyserAccess());
                this.saveAccessDataEnableListener = false;
                return;
            } catch (JsonSyntaxException unused) {
                this.saveAccessDataEnableListener = true;
                return;
            }
        }
        this.saveAccessDataEnableListener = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getNewConfigPhp(Context context, final AppsgeyserSDK.OnDisableAdsDataEnableListener onDisableAdsDataEnableListener) {
        this.disableAdsDataEnableListener = onDisableAdsDataEnableListener;
        if (this.idParameters != null) {
            AppsgeyserServerClient.getInstance().getConfigPhp(context, this.idParameters, new AppsgeyserServerClient.ConfigPhpRequestListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.6
                @Override // com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.ConfigPhpRequestListener
                public void receivedConfigPhp(ConfigPhp configPhp) {
                    onDisableAdsDataEnableListener.onDisableAdsDataEnable(configPhp.getAppsgeyserDisableAds());
                    InternalEntryPoint.this.saveDisableAdsEnableListener = false;
                }
            });
            return;
        }
        String prefString = Configuration.getInstance(context).getSettingsCoder().getPrefString(Constants.PREFS_SERVER_RESPONSE, "");
        if (!TextUtils.isEmpty(prefString)) {
            try {
                onDisableAdsDataEnableListener.onDisableAdsDataEnable(ConfigPhp.parseFromJson(prefString).getAppsgeyserDisableAds());
                this.saveDisableAdsEnableListener = false;
                return;
            } catch (JsonSyntaxException unused) {
                this.saveDisableAdsEnableListener = true;
                return;
            }
        }
        this.saveDisableAdsEnableListener = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getNewConfigPhp(Context context, final AppsgeyserSDK.OnRateMyAppEnableListener onRateMyAppEnableListener) {
        this.rateMyAppEnableListener = onRateMyAppEnableListener;
        if (this.idParameters != null) {
            AppsgeyserServerClient.getInstance().getConfigPhp(context, this.idParameters, new AppsgeyserServerClient.ConfigPhpRequestListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.7
                @Override // com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.ConfigPhpRequestListener
                public void receivedConfigPhp(ConfigPhp configPhp) {
                    onRateMyAppEnableListener.onRateMyAppEnableReceived(configPhp.isRateMyAppActive());
                    InternalEntryPoint.this.saveRateMyAppEnableListener = false;
                }
            });
            return;
        }
        String prefString = Configuration.getInstance(context).getSettingsCoder().getPrefString(Constants.PREFS_SERVER_RESPONSE, "");
        if (!TextUtils.isEmpty(prefString)) {
            try {
                onRateMyAppEnableListener.onRateMyAppEnableReceived(ConfigPhp.parseFromJson(prefString).isRateMyAppActive());
                this.saveRateMyAppEnableListener = false;
                return;
            } catch (JsonSyntaxException unused) {
                this.saveRateMyAppEnableListener = true;
                return;
            }
        }
        this.saveRateMyAppEnableListener = true;
    }

    public void setAdditionalJsCode(String str) {
        this.additionalJsCode = str;
        AppsgeyserSDK.OnAdditionalJsLoaded onAdditionalJsLoaded = this.jsLoader;
        if (onAdditionalJsLoaded != null) {
            onAdditionalJsLoaded.onJsLoaded(str);
        }
    }

    public String getAdditionalJsCode() {
        return this.additionalJsCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getAdditionalJsCode(AppsgeyserSDK.OnAdditionalJsLoaded onAdditionalJsLoaded) {
        this.jsLoader = onAdditionalJsLoaded;
    }

    public String getUserCountrySIM(Context context) {
        String networkCountryIso;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String simCountryIso = telephonyManager.getSimCountryIso();
            if (simCountryIso != null && simCountryIso.length() == 2) {
                return simCountryIso.toLowerCase(Locale.US);
            }
            if (telephonyManager.getPhoneType() == 2 || (networkCountryIso = telephonyManager.getNetworkCountryIso()) == null || networkCountryIso.length() != 2) {
                return null;
            }
            return networkCountryIso.toLowerCase(Locale.US);
        } catch (Exception unused) {
            return null;
        }
    }

    public String getUserCountryLocale(Context context) {
        return context.getResources().getConfiguration().locale.getDisplayCountry();
    }

    public void addNetworkListener(OnNetworkStateChangedListener onNetworkStateChangedListener, Context context) {
        NetworkAvailableReceiver networkAvailableReceiver = this.networkReceiver;
        if (networkAvailableReceiver != null) {
            networkAvailableReceiver.addListener(onNetworkStateChangedListener);
            return;
        }
        NetworkAvailableReceiver createAndRegisterNetworkReceiver = NetworkAvailableReceiver.createAndRegisterNetworkReceiver(context);
        this.networkReceiver = createAndRegisterNetworkReceiver;
        createAndRegisterNetworkReceiver.addListener(onNetworkStateChangedListener);
    }

    public void removeNetworkListener(OnNetworkStateChangedListener onNetworkStateChangedListener) {
        NetworkAvailableReceiver networkAvailableReceiver = this.networkReceiver;
        if (networkAvailableReceiver != null) {
            networkAvailableReceiver.removeListener(onNetworkStateChangedListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void checkIsOfferWallEnabled(Context context, final AppsgeyserSDK.OfferWallEnabledListener offerWallEnabledListener) {
        if (this.idParameters != null) {
            AppsgeyserServerClient.getInstance().getConfigPhp(context, this.idParameters, new AppsgeyserServerClient.ConfigPhpRequestListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.8
                @Override // com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.ConfigPhpRequestListener
                public void receivedConfigPhp(ConfigPhp configPhp) {
                    offerWallEnabledListener.isOfferWallEnabled(configPhp.isOfferWallEnabled());
                }
            });
        } else {
            DeviceIdParser.getInstance().rescan(context, new IDeviceIdParserListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.9
                @Override // com.appsgeyser.sdk.deviceidparser.IDeviceIdParserListener
                public void onDeviceIdParametersObtained(Context context2, DeviceIdParameters deviceIdParameters) {
                    InternalEntryPoint.this.idParameters = deviceIdParameters;
                    AppsgeyserServerClient.getInstance().getConfigPhp(context2, deviceIdParameters, new AppsgeyserServerClient.ConfigPhpRequestListener() { // from class: com.appsgeyser.sdk.InternalEntryPoint.9.1
                        @Override // com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.ConfigPhpRequestListener
                        public void receivedConfigPhp(ConfigPhp configPhp) {
                            offerWallEnabledListener.isOfferWallEnabled(configPhp.isOfferWallEnabled());
                        }
                    });
                    InternalEntryPoint.this.fullScreenBanner.initWithDeviceIdParameters(InternalEntryPoint.this.idParameters);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RewardedAdHelper getRewardedAdHelper() {
        return this.rewardedAdHelper;
    }

    public void onDestroy(Context context) {
        RewardedAdHelper rewardedAdHelper = this.rewardedAdHelper;
        if (rewardedAdHelper != null) {
            rewardedAdHelper.onDestroy();
        }
        FastTrackAdsController.getInstance().onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FastTrackAdsController getFastTrackAdsController() {
        return FastTrackAdsController.getInstance();
    }

    public Application getApplication() {
        return this.application;
    }

    public void setApplication(Application application) {
        this.application = application;
    }

    public boolean isApplicationVisible() {
        return this.isApplicationVisible;
    }

    public void setApplicationVisible(boolean z) {
        this.isApplicationVisible = z;
    }

    public boolean isConsentRequestProcessActive() {
        return this.isConsentRequestProcessActive;
    }

    public void setAfterConsentRequestCompletedListener(AfterConsentRequestListener afterConsentRequestListener) {
        if (this.isConsentRequestProcessCompleted) {
            afterConsentRequestListener.onConsentRequestCompleted();
        } else {
            this.afterConsentRequestCompletedListener = afterConsentRequestListener;
        }
    }

    public void setConsentRequestProcessActive(boolean z) {
        if (!this.isConsentRequestProcessCompleted) {
            this.isConsentRequestProcessActive = z;
            if (z) {
                return;
            }
            this.isConsentRequestProcessCompleted = true;
            AfterConsentRequestListener afterConsentRequestListener = this.afterConsentRequestCompletedListener;
            if (afterConsentRequestListener != null) {
                afterConsentRequestListener.onConsentRequestCompleted();
                this.afterConsentRequestCompletedListener = null;
                return;
            }
            return;
        }
        this.isConsentRequestProcessActive = false;
    }

    public float getSelectedRating() {
        return this.selectedRating;
    }

    public void setSelectedRating(float f2) {
        this.selectedRating = f2;
    }

    public MarketChecker getMarketChecker() {
        return MarketChecker.getInstance();
    }

    public AppState getAppState() {
        return this.appState;
    }
}
