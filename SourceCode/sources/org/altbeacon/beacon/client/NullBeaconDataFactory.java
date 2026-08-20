package org.altbeacon.beacon.client;

import android.os.Handler;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconDataNotifier;
/* loaded from: classes5.dex */
public class NullBeaconDataFactory implements BeaconDataFactory {
    @Override // org.altbeacon.beacon.client.BeaconDataFactory
    public void requestBeaconData(Beacon beacon, final BeaconDataNotifier beaconDataNotifier) {
        new Handler().post(new Runnable() { // from class: org.altbeacon.beacon.client.NullBeaconDataFactory.1
            @Override // java.lang.Runnable
            public void run() {
                beaconDataNotifier.beaconDataUpdate(null, null, new DataProviderException("You need to configure a beacon data service to use this feature."));
            }
        });
    }
}
