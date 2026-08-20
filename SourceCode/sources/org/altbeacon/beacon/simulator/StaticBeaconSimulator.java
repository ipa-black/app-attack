package org.altbeacon.beacon.simulator;

import java.util.List;
import org.altbeacon.beacon.Beacon;
/* loaded from: classes5.dex */
public class StaticBeaconSimulator implements BeaconSimulator {
    public List<Beacon> beacons = null;

    @Override // org.altbeacon.beacon.simulator.BeaconSimulator
    public List<Beacon> getBeacons() {
        return this.beacons;
    }

    public void setBeacons(List<Beacon> list) {
        this.beacons = list;
    }
}
