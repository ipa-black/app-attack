package com.appsgeyser.sdk.analytics;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import com.appsgeyser.sdk.Logger;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient;
/* loaded from: classes2.dex */
public final class Analytics {
    private static Analytics instance = null;
    public static final String referrerLogTag = "referrerLogTag";
    private Configuration configuration;
    private boolean usageAlreadySent = false;
    private AppsgeyserServerClient serverClient = AppsgeyserServerClient.getInstance();

    public static synchronized Analytics getInstance(Context context) {
        Analytics analytics;
        synchronized (Analytics.class) {
            if (instance == null) {
                instance = new Analytics(context);
            }
            analytics = instance;
        }
        return analytics;
    }

    private Analytics(Context context) {
        this.configuration = Configuration.getInstance(context);
    }

    public void activityStarted(Context context) {
        sendActivityStartedInfo(context);
    }

    private void sendActivityStartedInfo(final Context context) {
        if (!this.configuration.isRegistered()) {
            this.configuration.registerNew();
            this.serverClient.sendAfterInstallInfo(context);
            Logger.DebugLog("App install was sent: id " + this.configuration.getApplicationId() + " , guid " + this.configuration.getAppGuid());
            final InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
            build.startConnection(new InstallReferrerStateListener() { // from class: com.appsgeyser.sdk.analytics.Analytics.1
                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerSetupFinished(int i) {
                    if (i == 0) {
                        try {
                            ReferrerDetails installReferrer = build.getInstallReferrer();
                            Log.d(Analytics.referrerLogTag, "Sending referrer info");
                            Analytics.this.serverClient.sendReferrerStatsRequest(context, Constants.ReferrerInfoStatus.OK, installReferrer);
                        } catch (RemoteException e2) {
                            Log.d(Analytics.referrerLogTag, "RE while getting OK response: " + e2.getMessage());
                            Analytics.this.serverClient.sendReferrerStatsRequest(context, Constants.ReferrerInfoStatus.REMOTE_EXCEPTION, null);
                        }
                    } else if (i == 1) {
                        Log.d(Analytics.referrerLogTag, "Service unavailable");
                        Analytics.this.serverClient.sendReferrerStatsRequest(context, Constants.ReferrerInfoStatus.UNAVAILABLE, null);
                    } else if (i != 2) {
                    } else {
                        Log.d(Analytics.referrerLogTag, "Feature not supported");
                        Analytics.this.serverClient.sendReferrerStatsRequest(context, Constants.ReferrerInfoStatus.FEATURE_NOT_SUPPORTED, null);
                    }
                }

                @Override // com.android.installreferrer.api.InstallReferrerStateListener
                public void onInstallReferrerServiceDisconnected() {
                    Log.d(Analytics.referrerLogTag, "Install referrer service disconnected");
                }
            });
        }
        if (!this.usageAlreadySent) {
            this.serverClient.sendUsageInfo(context);
            Logger.DebugLog("App usage was sent: id " + this.configuration.getApplicationId() + " , guid " + this.configuration.getAppGuid());
            this.usageAlreadySent = true;
        }
        this.serverClient.sendUpdateInfo(context);
        this.serverClient.sendApplicationMode(context);
    }

    public boolean isUsageAlreadySent() {
        return this.usageAlreadySent;
    }
}
