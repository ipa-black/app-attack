package com.onesignal;

import com.onesignal.OneSignal;
import java.util.Timer;
import java.util.TimerTask;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class OSDynamicTriggerTimer {
    OSDynamicTriggerTimer() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void scheduleTrigger(TimerTask timerTask, String str, long j) {
        OneSignal.onesignalLog(OneSignal.LOG_LEVEL.DEBUG, "scheduleTrigger: " + str + " delay: " + j);
        new Timer("trigger_timer:" + str).schedule(timerTask, j);
    }
}
