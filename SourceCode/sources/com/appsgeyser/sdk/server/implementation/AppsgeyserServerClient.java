package com.appsgeyser.sdk.server.implementation;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.installreferrer.api.ReferrerDetails;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.PausedContentInfoActivity;
import com.appsgeyser.sdk.R;
import com.appsgeyser.sdk.ads.fastTrack.FastTrackAdsController;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.datasdk.DataSdkController;
import com.appsgeyser.sdk.deviceidparser.DeviceIdParameters;
import com.appsgeyser.sdk.deviceidparser.DeviceIdParser;
import com.appsgeyser.sdk.push.OneSignalCreator;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.server.network.NetworkManager;
import com.appsgeyser.sdk.utils.DeviceInfoGetter;
import com.appsgeyser.sdk.utils.ReminderAlarmManager;
import com.appsgeyser.sdk.utils.VersionManager;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.ironsource.mediationsdk.server.HttpFunctions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class AppsgeyserServerClient {
    private static final String INSTALL_ACTION_URL_TAG = "install";
    private static final String UPDATE_ACTION_URL_TAG = "update";
    private static final String USAGE_ACTION_URL_TAG = "usage";
    private ConfigPhp configPhpModel;
    List<ConfigPhpRequestListener> listenerList;
    private final NetworkManager networkManager;

    /* loaded from: classes2.dex */
    public interface ConfigPhpRequestListener {
        void receivedConfigPhp(ConfigPhp configPhp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class SingletonHolder {
        static final AppsgeyserServerClient HOLDER_INSTANCE = new AppsgeyserServerClient();

        private SingletonHolder() {
        }
    }

    private AppsgeyserServerClient() {
        this.listenerList = new ArrayList();
        this.networkManager = NetworkManager.getInstance();
    }

    public static AppsgeyserServerClient getInstance() {
        return SingletonHolder.HOLDER_INSTANCE;
    }

    private String getInstallerMarket(Context context) {
        try {
            String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
            return installerPackageName == null ? "" : installerPackageName;
        } catch (Exception e2) {
            if (TextUtils.isEmpty(e2.getMessage())) {
                return "ERROR";
            }
            return HttpFunctions.ERROR_PREFIX + e2.getMessage();
        }
    }

    public void sendAfterInstallInfo(Context context) {
        sendRequestWithAllArgs("install", NetworkManager.RequestType.AFTERINSTALL.ordinal(), context);
    }

    public void sendUsageInfo(Context context) {
        sendRequestWithAllArgs(USAGE_ACTION_URL_TAG, NetworkManager.RequestType.USAGE.ordinal(), context);
    }

    public void sendAboutDialogImpression(Context context) {
        sendRequestSdkStatisticsWithArgs(StatController.KEY_ABOUT_DIALOG_IMPRESSION, 987263278, context);
    }

    public void sendAboutDialogVisitSite(Context context) {
        sendRequestSdkStatisticsWithArgs(StatController.KEY_ABOUT_DIALOG_VISIT_SITE, -980696864, context);
    }

    public void sendUpdateInfo(Context context) {
        int currentVersion = VersionManager.getCurrentVersion(context);
        int previousVersion = VersionManager.getPreviousVersion(context);
        if (previousVersion == -1) {
            VersionManager.updateVersion(context, currentVersion);
        } else if (currentVersion > previousVersion) {
            VersionManager.updateVersion(context, currentVersion);
            sendRequestWithAllArgs(UPDATE_ACTION_URL_TAG, NetworkManager.RequestType.UPDATE.ordinal(), context);
        }
    }

    public void getConfigPhp(final Context context, DeviceIdParameters deviceIdParameters, ConfigPhpRequestListener configPhpRequestListener) {
        String str;
        String str2;
        String str3;
        ConfigPhp configPhp = this.configPhpModel;
        if (configPhp != null) {
            configPhpRequestListener.receivedConfigPhp(configPhp);
        } else if (this.listenerList.size() > 0) {
            this.listenerList.add(configPhpRequestListener);
        } else {
            Configuration configuration = Configuration.getInstance(context);
            this.listenerList.add(configPhpRequestListener);
            String str4 = "";
            if (deviceIdParameters == null) {
                str = "";
            } else {
                str = deviceIdParameters.getAdvId();
            }
            if (TextUtils.isEmpty(str)) {
                str2 = "";
            } else {
                str2 = "&advid=" + str;
            }
            configuration.loadConfiguration();
            try {
                str3 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            } catch (PackageManager.NameNotFoundException unused) {
                str3 = "";
            }
            try {
                str4 = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused2) {
            }
            String str5 = getBaseConfigUrl(context) + "?widgetId=" + configuration.getApplicationId() + "&guid=" + configuration.getAppGuid() + "&v=2.48.s&market=" + getInstallerMarket(context) + "&cadmobid=" + context.getString(R.string.customAdmobAppID) + "&templateVersion=" + configuration.getTemplateVersion() + "&appVersionName=" + str3 + "&appVersionCode=" + str4 + str2;
            final PreferencesCoder preferencesCoder = new PreferencesCoder(context);
            preferencesCoder.savePrefString(Constants.PREFS_CONFIG_PHP_URL, str5);
            this.networkManager.sendRequestAsync(str5, Integer.valueOf(NetworkManager.RequestType.CONFIG_PHP.ordinal()), context, new OnRequestDoneListener() { // from class: com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.1
                @Override // com.appsgeyser.sdk.server.implementation.OnRequestDoneListener
                public void onRequestDone(String str6, int i, String str7) {
                    preferencesCoder.savePrefString(Constants.PREFS_SERVER_RESPONSE, str7);
                    try {
                        AppsgeyserServerClient.this.configPhpModel = ConfigPhp.parseFromJson(str7);
                        if (AppsgeyserServerClient.this.configPhpModel.getStatUrls() != null) {
                            StatController.getInstance().init(new HashMap<>(AppsgeyserServerClient.this.configPhpModel.getStatUrls()));
                        }
                        preferencesCoder.savePrefBoolean(Constants.PREFS_CONFIG_BAN_ACTIVE, AppsgeyserServerClient.this.configPhpModel.isAppBanActive());
                    } catch (JsonSyntaxException unused3) {
                        for (ConfigPhpRequestListener configPhpRequestListener2 : AppsgeyserServerClient.this.listenerList) {
                            AppsgeyserServerClient.this.onGetConfigErrorResponse(context, configPhpRequestListener2, preferencesCoder);
                        }
                    }
                    if (!AppsgeyserServerClient.this.configPhpModel.isAppBanActive()) {
                        DataSdkController.startDataSdkController(context, AppsgeyserServerClient.this.configPhpModel);
                        if (!FastTrackAdsController.getInstance().isActive()) {
                            FastTrackAdsController.getInstance().requestInit(AppsgeyserServerClient.this.configPhpModel, context);
                        }
                        for (ConfigPhpRequestListener configPhpRequestListener3 : AppsgeyserServerClient.this.listenerList) {
                            configPhpRequestListener3.receivedConfigPhp(AppsgeyserServerClient.this.configPhpModel);
                        }
                        if (AppsgeyserServerClient.this.configPhpModel.getAdditionalJsCode() != null) {
                            InternalEntryPoint.getInstance().setAdditionalJsCode(AppsgeyserServerClient.this.configPhpModel.getAdditionalJsCode());
                        }
                        if (AppsgeyserServerClient.this.configPhpModel.isInactivityReminderEnabled()) {
                            ReminderAlarmManager.startReminderAlarm(context, AppsgeyserServerClient.this.configPhpModel.getInactivityDaysPeriod(), true);
                        }
                        AppsgeyserServerClient appsgeyserServerClient = AppsgeyserServerClient.this;
                        appsgeyserServerClient.initPush(context, appsgeyserServerClient.configPhpModel.getOneSignalAppId(), AppsgeyserServerClient.this.configPhpModel.isPushNotificationsActive());
                        AppsgeyserServerClient.this.listenerList.clear();
                        return;
                    }
                    PausedContentInfoActivity.startPausedContentInfoActivity(context, false);
                }
            }, new Response.ErrorListener() { // from class: com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient.2
                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    for (ConfigPhpRequestListener configPhpRequestListener2 : AppsgeyserServerClient.this.listenerList) {
                        AppsgeyserServerClient.this.onGetConfigErrorResponse(context, configPhpRequestListener2, preferencesCoder);
                    }
                    AppsgeyserServerClient.this.listenerList.clear();
                    InternalEntryPoint.getInstance().setConsentRequestProcessActive(false);
                }
            });
        }
    }

    public void sendClickInfo(String str, Context context) {
        this.networkManager.sendRequestAsync(str, Integer.valueOf(NetworkManager.RequestType.CLICK.ordinal()), context, this.networkManager.getEmptyRequestDoneListener(context), this.networkManager.getDefaultErrorListener(Integer.valueOf(NetworkManager.RequestType.CLICK.ordinal()), context));
    }

    public void sendImpression(String str, Context context) {
        this.networkManager.sendRequestAsync(str, Integer.valueOf(NetworkManager.RequestType.IMPRESSION.ordinal()), context, this.networkManager.getEmptyRequestDoneListener(context), this.networkManager.getDefaultErrorListener(Integer.valueOf(NetworkManager.RequestType.IMPRESSION.ordinal()), context));
    }

    public void sendApplicationMode(Context context) {
        this.networkManager.sendRequestAsync("https://ads.appsgeyser.com/checkstatus.php?wid=" + Configuration.getInstance(context).getApplicationId(), Integer.valueOf(NetworkManager.RequestType.APPMODE.ordinal()), context, this.networkManager.getEmptyRequestDoneListener(context), this.networkManager.getDefaultErrorListener(Integer.valueOf(NetworkManager.RequestType.APPMODE.ordinal()), context));
    }

    private void sendRequestWithAllArgs(String str, int i, Context context) {
        String str2;
        String str3;
        String str4 = "";
        Configuration configuration = Configuration.getInstance(context);
        String advId = DeviceIdParser.getInstance().getDeviceIdParameters().getAdvId();
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = "";
        }
        try {
            str4 = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        if (!TextUtils.isEmpty(advId)) {
            str3 = context.getString(R.string.statDomainUrl) + "statistics.php?action=" + str + "&name=" + configuration.getApplicationId() + "&id=" + configuration.getAppGuid() + "&v=2.48.s&p=android&advid=" + advId + "&market=" + getInstallerMarket(context) + DeviceInfoGetter.getDeviceInfo(context) + "&templateversion=" + configuration.getTemplateVersion() + "&appversionname=" + str2 + "&appversioncode=" + str4;
        } else {
            str3 = context.getString(R.string.statDomainUrl) + "statistics.php?action=" + str + "&name=" + configuration.getApplicationId() + "&id=" + configuration.getAppGuid() + "&v=2.48.s&p=android&market=" + getInstallerMarket(context) + DeviceInfoGetter.getDeviceInfo(context) + "&templateversion=" + configuration.getTemplateVersion() + "&appversionname=" + str2 + "&appversioncode=" + str4;
        }
        this.networkManager.sendRequestAsync(str3, Integer.valueOf(i), context, this.networkManager.getEmptyRequestDoneListener(context), this.networkManager.getDefaultErrorListener(Integer.valueOf(i), context));
    }

    public void sendRMARequest(Context context, Map<String, String> map) {
        this.networkManager.sendRequestAsyncPost(Constants.RMA_STATISTICS_URL, Integer.valueOf(NetworkManager.RequestType.RMA.ordinal()), context, this.networkManager.getEmptyRequestDoneListener(context), this.networkManager.getDefaultErrorListener(Integer.valueOf(NetworkManager.RequestType.RMA.ordinal()), context), map);
    }

    public void sendReferrerStatsRequest(Context context, Constants.ReferrerInfoStatus referrerInfoStatus, ReferrerDetails referrerDetails) {
        String str;
        String str2 = "";
        Configuration configuration = Configuration.getInstance(context);
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str = "";
        }
        try {
            str2 = String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        StringBuilder sb = new StringBuilder(Constants.REFERRER_STATISTICS_URL);
        int i = AnonymousClass3.$SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus[referrerInfoStatus.ordinal()];
        if (i == 1) {
            sb.append(Constants.REFERRER_STATISTICS_STATUS_OK_URL);
        } else if (i == 2) {
            sb.append(Constants.REFERRER_STATISTICS_STATUS_FEATURE_NOT_SUPPORTED_URL);
        } else if (i == 3) {
            sb.append(Constants.REFERRER_STATISTICS_STATUS_UNAVAILABLE_URL);
        } else if (i == 4) {
            sb.append(Constants.REFERRER_STATISTICS_STATUS_REMOTE_EXCEPTION);
        }
        sb.append("&wid=").append(configuration.getApplicationId()).append("&templateversion=").append(configuration.getTemplateVersion()).append("&appversionname=").append(str).append("&appversioncode=").append(str2);
        String sb2 = sb.toString();
        HashMap hashMap = new HashMap();
        if (referrerInfoStatus == Constants.ReferrerInfoStatus.OK && referrerDetails != null) {
            hashMap.put("referrerUrl", referrerDetails.getInstallReferrer());
            hashMap.put("referrerClickTime", String.valueOf(referrerDetails.getReferrerClickTimestampSeconds()));
            hashMap.put("appInstallTime", String.valueOf(referrerDetails.getInstallBeginTimestampSeconds()));
            hashMap.put("instantExperienceLaunched", String.valueOf(referrerDetails.getGooglePlayInstantParam()));
        }
        this.networkManager.sendRequestAsyncPost(sb2, Integer.valueOf(NetworkManager.RequestType.REFERRER.ordinal()), context, this.networkManager.getEmptyRequestDoneListener(context), this.networkManager.getDefaultErrorListener(Integer.valueOf(NetworkManager.RequestType.REFERRER.ordinal()), context), hashMap);
    }

    /* renamed from: com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus;

        static {
            int[] iArr = new int[Constants.ReferrerInfoStatus.values().length];
            $SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus = iArr;
            try {
                iArr[Constants.ReferrerInfoStatus.OK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus[Constants.ReferrerInfoStatus.FEATURE_NOT_SUPPORTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus[Constants.ReferrerInfoStatus.UNAVAILABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$appsgeyser$sdk$configuration$Constants$ReferrerInfoStatus[Constants.ReferrerInfoStatus.REMOTE_EXCEPTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void sendRequestSdkStatisticsWithArgs(String str, int i, Context context) {
        Configuration configuration = Configuration.getInstance(context);
        this.networkManager.sendRequestAsync(context.getString(R.string.statDomainUrl) + "sdk_statistics.php?action=" + str + "&wdid=" + configuration.getApplicationId() + "&guid=" + configuration.getAppGuid() + "&v=2.48.s&p=android" + DeviceInfoGetter.getDeviceInfo(context) + "&templateversion=" + configuration.getTemplateVersion(), Integer.valueOf(i), context, this.networkManager.getEmptyRequestDoneListener(context), this.networkManager.getDefaultErrorListener(Integer.valueOf(i), context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onGetConfigErrorResponse(Context context, ConfigPhpRequestListener configPhpRequestListener, PreferencesCoder preferencesCoder) {
        String prefString = preferencesCoder.getPrefString(Constants.PREFS_SERVER_RESPONSE, "");
        if (!prefString.equals("")) {
            try {
                ConfigPhp parseFromJson = ConfigPhp.parseFromJson(prefString);
                this.configPhpModel = parseFromJson;
                configPhpRequestListener.receivedConfigPhp(parseFromJson);
            } catch (JsonParseException e2) {
                Log.d("JsonParseException", e2.toString());
            }
        }
        DataSdkController.onGetConfigErrorResponse(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initPush(Context context, String str, boolean z) {
        OneSignalCreator.init(context.getApplicationContext(), str, z);
    }

    public void setConfigPhpModel(ConfigPhp configPhp) {
        this.configPhpModel = configPhp;
    }

    private String getBaseConfigUrl(Context context) {
        return Constants.CONFIG_DOMAIN_URL;
    }
}
