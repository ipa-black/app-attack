package com.appsgeyser.sdk.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appsgeyser.sdk.configuration.PreferencesCoder;
import com.appsgeyser.sdk.push.AlarmReceiver;
/* loaded from: classes2.dex */
public class ReminderAlarmManager {
    private static final int ALARM_ID = 994;

    public static void startReminderAlarm(Context context, int i, boolean z) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        PreferencesCoder preferencesCoder = new PreferencesCoder(context);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, ALARM_ID, new Intent(context, AlarmReceiver.class), 67108864);
        long j = i * Constants.MILLIS_IN_DAY;
        if (alarmManager != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (z) {
                alarmManager.cancel(broadcast);
                alarmManager.setRepeating(0, currentTimeMillis + j, Constants.MILLIS_IN_DAY, broadcast);
                preferencesCoder.savePrefLong(com.appsgeyser.sdk.configuration.Constants.PREFS_APPSGEYSER_REMINDER_LAST_SET_TIMING, currentTimeMillis);
                return;
            }
            alarmManager.setRepeating(0, preferencesCoder.getPrefLong(com.appsgeyser.sdk.configuration.Constants.PREFS_APPSGEYSER_REMINDER_LAST_SET_TIMING, System.currentTimeMillis()) + j, Constants.MILLIS_IN_DAY, broadcast);
        }
    }
}
