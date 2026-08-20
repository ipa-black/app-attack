package org.altbeacon.beacon.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import org.altbeacon.beacon.BeaconLocalBroadcastProcessor;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class Callback implements Serializable {
    private static final String TAG = "Callback";

    public Callback(String str) {
    }

    public boolean call(Context context, String str, Bundle bundle) {
        String str2;
        if (BeaconManager.getInstanceForApplication(context).getScheduledScanJobsEnabled()) {
            if (str == "rangingData") {
                str2 = BeaconLocalBroadcastProcessor.RANGE_NOTIFICATION;
            } else {
                str2 = BeaconLocalBroadcastProcessor.MONITOR_NOTIFICATION;
            }
            Intent intent = new Intent(str2);
            intent.putExtra(str, bundle);
            LogManager.d(TAG, "attempting callback via local broadcast intent: %s", str2);
            return LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
        }
        Intent intent2 = new Intent();
        intent2.setComponent(new ComponentName(context.getPackageName(), "org.altbeacon.beacon.BeaconIntentProcessor"));
        intent2.putExtra(str, bundle);
        LogManager.d(TAG, "attempting callback via global broadcast intent: %s", intent2.getComponent());
        try {
            context.startService(intent2);
            return true;
        } catch (Exception e2) {
            LogManager.e(TAG, "Failed attempting to start service: " + intent2.getComponent().flattenToString(), e2);
            return false;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
    }
}
