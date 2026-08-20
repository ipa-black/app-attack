package com.appsgeyser.sdk.push;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.appsgeyser.sdk.utils.ReminderAlarmManager;
/* loaded from: classes2.dex */
public class AlarmService extends Service {
    public static final String DAYS_INACTIVITY = "days_inactivity";

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        ReminderAlarmManager.startReminderAlarm(this, intent.getIntExtra(DAYS_INACTIVITY, 1), false);
        return 2;
    }
}
