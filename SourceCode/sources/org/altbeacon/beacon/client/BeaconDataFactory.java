package org.altbeacon.beacon.client;

import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconDataNotifier;
/* loaded from: classes5.dex */
public interface BeaconDataFactory {
    void requestBeaconData(Beacon beacon, BeaconDataNotifier beaconDataNotifier);
}
