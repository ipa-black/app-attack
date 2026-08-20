package com.appsgeyser.sdk.push;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import androidx.core.app.NotificationCompat;
import com.appsgeyser.sdk.R;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.configuration.models.ConfigPhp;
import com.onesignal.OneSignalDbContract;
/* loaded from: classes2.dex */
public class AlarmReceiver extends BroadcastReceiver {
    private static final String CHANNEL_ID = "Appsgeyser_channel_id";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        String prefString = new PreferencesCoder(context).getPrefString(Constants.PREFS_SERVER_RESPONSE, null);
        if (prefString != null) {
            String inactivityReminderText = ConfigPhp.parseFromJson(prefString).getInactivityReminderText();
            PackageManager packageManager = context.getPackageManager();
            try {
                str = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
            } catch (PackageManager.NameNotFoundException e2) {
                e2.printStackTrace();
                str = "";
            }
            PendingIntent activity = PendingIntent.getActivity(context, 0, context.getPackageManager().getLaunchIntentForPackage(context.getPackageName()), 1073741824);
            NotificationCompat.Builder builder = new NotificationCompat.Builder(context, CHANNEL_ID);
            builder.setAutoCancel(true).setDefaults(-1).setWhen(System.currentTimeMillis()).setSmallIcon(R.drawable.ic_os_notification_fallback_white_24dp).setContentTitle(str).setContentIntent(activity).setContentText(inactivityReminderText != null ? inactivityReminderText : "").setDefaults(5).setPriority(1);
            createNotificationChannel(context, str);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(OneSignalDbContract.NotificationTable.TABLE_NAME);
            if (notificationManager != null) {
                notificationManager.notify(1, builder.build());
            }
        }
    }

    private void createNotificationChannel(Context context, String str) {
        NotificationChannel notificationChannel = new NotificationChannel(CHANNEL_ID, str, 3);
        notificationChannel.setDescription("");
        NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
        if (notificationManager != null) {
            notificationManager.createNotificationChannel(notificationChannel);
        }
    }
}
