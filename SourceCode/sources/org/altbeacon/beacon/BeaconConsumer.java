package org.altbeacon.beacon;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
/* loaded from: classes5.dex */
public interface BeaconConsumer {
    boolean bindService(Intent intent, ServiceConnection serviceConnection, int i);

    Context getApplicationContext();

    void onBeaconServiceConnect();

    void unbindService(ServiceConnection serviceConnection);
}
