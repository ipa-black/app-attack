package org.altbeacon.beacon;

import org.altbeacon.beacon.client.DataProviderException;
/* loaded from: classes5.dex */
public interface BeaconDataNotifier {
    void beaconDataUpdate(Beacon beacon, BeaconData beaconData, DataProviderException dataProviderException);
}
