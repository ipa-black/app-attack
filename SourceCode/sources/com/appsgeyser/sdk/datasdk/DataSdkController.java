package com.appsgeyser.sdk.datasdk;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.R;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.appsgeyser.sdk.configuration.models.ConfigPhpSdkModel;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient;
/* loaded from: classes2.dex */
public class DataSdkController {
    private static final String ACCEPTED_SDK_KEY = "sdkIsAccepted";
    private static final String COUNT_OF_TRY_KEY = "countOfTry";
    private static final int INCORRECT_VALUE = -1;
    public static final String PREFS_ELAPSED_TIME = "elapsedTime";
    private static final String SERVER_ERROR_LOG = "dataSDKServerErr";
    static final String START_LOG = "startDataSDK";
    private static final long TWO_HOURS_IN_MILLIS = 7200000;

    private static void initDataSdkReceiver(Context context) {
    }

    public static void startDataSdkController(Context context, ConfigPhp configPhp) {
        PreferencesCoder preferencesCoder = new PreferencesCoder(context);
        int prefInt = preferencesCoder.getPrefInt(COUNT_OF_TRY_KEY, -1);
        int countOfTry = configPhp.getCountOfTry();
        if (-1 == prefInt) {
            preferencesCoder.savePrefInt(COUNT_OF_TRY_KEY, countOfTry);
        }
        ConfigPhpSdkModel appsgeyserSdk = configPhp.getAppsgeyserSdk();
        boolean z = false;
        if (appsgeyserSdk.isActive() && (appsgeyserSdk.isActiveByDefault() || preferencesCoder.getPrefBoolean(Constants.PREFS_APPSGEYSER_EULA_ACCEPTED, false))) {
            z = true;
        }
        preferencesCoder.savePrefBoolean(Constants.PREFS_APPSGEYSER_SDK_ACTIVATED, z);
        int prefInt2 = preferencesCoder.getPrefInt(COUNT_OF_TRY_KEY, -1);
        long prefLong = preferencesCoder.getPrefLong(PREFS_ELAPSED_TIME, -1L);
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - prefLong;
        if (prefInt2 > 0 && (-1 == prefLong || j > TWO_HOURS_IN_MILLIS)) {
            if (!isSdkAccepted(context)) {
                String textOfPolicy = appsgeyserSdk.getTextOfPolicy();
                StringBuilder sb = new StringBuilder();
                if (appsgeyserSdk.isActive() && !appsgeyserSdk.isActiveByDefault() && !TextUtils.isEmpty(textOfPolicy)) {
                    if (sb.toString().length() > 0) {
                        sb.append("\n\n");
                    }
                    sb.append(textOfPolicy);
                }
                checkPermissions(context, configPhp, sb.toString());
            } else {
                checkPermissions(context, configPhp, null);
            }
        } else {
            initSdk(configPhp, context);
        }
        preferencesCoder.savePrefLong(PREFS_ELAPSED_TIME, currentTimeMillis);
    }

    public static void onGetConfigErrorResponse(Context context) {
        new PreferencesCoder(context).getPrefBoolean(Constants.PREFS_APPSGEYSER_SDK_ACTIVATED, false);
    }

    public static void revokeDataCollectionConsent(Context context) {
        new PreferencesCoder(context).savePrefBoolean(Constants.PREFS_APPSGEYSER_EULA_ACCEPTED, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void acceptAllActiveSdk(Context context, ConfigPhp configPhp) {
        acceptSdk(context, configPhp);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_CLICK_ACCEPT_SDK_DIALOG);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void declineAllActiveSdk(final Context context, final ConfigPhp configPhp, AppCompatActivity appCompatActivity, final String str) {
        if (!configPhp.getStartupELUAConfirmationDialogAllow()) {
            final DataSdkActivity dataSdkActivity = (DataSdkActivity) appCompatActivity;
            AlertDialog.Builder builder = new AlertDialog.Builder(dataSdkActivity);
            builder.setMessage(R.string.appsgeysersdk_are_you_sure_decline_sdk);
            builder.setCancelable(false);
            builder.setPositiveButton(R.string.appsgeysersdk_close_app, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.sdk.datasdk.DataSdkController.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    PreferencesCoder preferencesCoder = new PreferencesCoder(DataSdkActivity.this);
                    DataSdkController.declineActiveSdk(context, configPhp, preferencesCoder);
                    AppsgeyserServerClient.getInstance().setConfigPhpModel(null);
                    preferencesCoder.savePrefLong(DataSdkController.PREFS_ELAPSED_TIME, 0L);
                    DataSdkActivity.this.finishAffinity();
                }
            });
            builder.setNegativeButton(R.string.appsgeysersdk_back, new DialogInterface.OnClickListener() { // from class: com.appsgeyser.sdk.datasdk.DataSdkController.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    DataSdkActivity.this.showEulaDialog(str, configPhp);
                }
            });
            builder.create().show();
            return;
        }
        declineActiveSdk(context, configPhp, new PreferencesCoder(context));
        if (PermissionsRequester.isPermissionsRequired(configPhp, context)) {
            PermissionsRequester.requestAllActiveByDefaultPermissions((Activity) context, configPhp, 78);
            return;
        }
        initSdk(configPhp, context);
        appCompatActivity.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void declineActiveSdk(Context context, ConfigPhp configPhp, PreferencesCoder preferencesCoder) {
        int prefInt = preferencesCoder.getPrefInt(COUNT_OF_TRY_KEY, -1) - 1;
        preferencesCoder.savePrefInt(COUNT_OF_TRY_KEY, prefInt);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_CLICK_DECLINE_SDK_DIALOG);
        if (prefInt == 0 && configPhp.getAppsgeyserSdk().isActive()) {
            preferencesCoder.savePrefBoolean(Constants.PREFS_APPSGEYSER_EULA_ACCEPTED, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void initSdk(ConfigPhp configPhp, Context context) {
        if (AppsgeyserSDK.getFastTrackAdsController() != null) {
            AppsgeyserSDK.getFastTrackAdsController().consentRequestProcessFinished();
        }
        InternalEntryPoint.getInstance().setConsentRequestProcessActive(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isSdkAccepted(Context context) {
        return new PreferencesCoder(context).getPrefBoolean(ACCEPTED_SDK_KEY, false);
    }

    private static void checkPermissions(Context context, ConfigPhp configPhp, String str) {
        if (PermissionsRequester.isPermissionsRequired(configPhp, context) || (!isSdkAccepted(context) && !TextUtils.isEmpty(str))) {
            InternalEntryPoint.getInstance().setConsentRequestProcessActive(true);
            DataSdkActivity.startRequestPermissions(context, configPhp, str);
            return;
        }
        initSdk(configPhp, context);
    }

    private static void acceptSdk(Context context, ConfigPhp configPhp) {
        PreferencesCoder preferencesCoder = new PreferencesCoder(context);
        preferencesCoder.savePrefBoolean(ACCEPTED_SDK_KEY, true);
        if (configPhp.getAppsgeyserSdk().isActive()) {
            preferencesCoder.savePrefBoolean(Constants.PREFS_APPSGEYSER_EULA_ACCEPTED, true);
        }
    }
}
