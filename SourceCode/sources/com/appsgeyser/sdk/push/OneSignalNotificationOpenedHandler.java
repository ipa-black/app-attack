package com.appsgeyser.sdk.push;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.onesignal.OSNotificationOpenedResult;
import com.onesignal.OneSignal;
/* loaded from: classes2.dex */
class OneSignalNotificationOpenedHandler implements OneSignal.OSNotificationOpenedHandler {
    private static final String MESSAGE_KEY = "msg";
    private final Context context;

    OneSignalNotificationOpenedHandler(Context context) {
        this.context = context;
    }

    private void startActivity() {
        Intent launchIntentForPackage = this.context.getPackageManager().getLaunchIntentForPackage(this.context.getPackageName());
        launchIntentForPackage.addFlags(67108864);
        launchIntentForPackage.addFlags(268435456);
        launchIntentForPackage.addFlags(2097152);
        this.context.startActivity(launchIntentForPackage);
    }

    @Override // com.onesignal.OneSignal.OSNotificationOpenedHandler
    public void notificationOpened(OSNotificationOpenedResult oSNotificationOpenedResult) {
        if (oSNotificationOpenedResult.getNotification().getAdditionalData() != null) {
            String title = oSNotificationOpenedResult.getNotification().getTitle();
            String optString = oSNotificationOpenedResult.getNotification().getAdditionalData().optString("msg");
            if (TextUtils.isEmpty(title) || TextUtils.isEmpty(optString)) {
                return;
            }
            MessageViewer.launchWithContent(this.context, title, optString);
            return;
        }
        startActivity();
    }
}
