package org.altbeacon.beacon.service;

import android.app.Service;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.ScanResult;
import android.content.pm.ApplicationInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.BeaconParser;
import org.altbeacon.beacon.Region;
import org.altbeacon.beacon.logging.LogManager;
import org.altbeacon.beacon.service.scanner.NonBeaconLeScanCallback;
/* loaded from: classes5.dex */
public class ScanDataProcessor {
    private static final String TAG = "ScanDataProcessor";
    private Set<BeaconParser> mBeaconParsers;
    private DetectionTracker mDetectionTracker = DetectionTracker.getInstance();
    private ExtraDataBeaconTracker mExtraDataBeaconTracker;
    private MonitoringStatus mMonitoringStatus;
    private NonBeaconLeScanCallback mNonBeaconLeScanCallback;
    private Map<Region, RangeState> mRangedRegionState;
    private Service mService;
    int trackedBeaconsPacketCount;

    public ScanDataProcessor(Service service, ScanState scanState) {
        this.mRangedRegionState = new HashMap();
        this.mBeaconParsers = new HashSet();
        this.mService = service;
        this.mMonitoringStatus = scanState.getMonitoringStatus();
        this.mRangedRegionState = scanState.getRangedRegionState();
        this.mMonitoringStatus = scanState.getMonitoringStatus();
        this.mExtraDataBeaconTracker = scanState.getExtraBeaconDataTracker();
        this.mBeaconParsers = scanState.getBeaconParsers();
    }

    public void process(ScanResult scanResult) {
        process(new ScanData(scanResult.getDevice(), scanResult.getRssi(), scanResult.getScanRecord().getBytes()));
    }

    public void process(ScanData scanData) {
        Iterator<BeaconParser> it = this.mBeaconParsers.iterator();
        Beacon beacon = null;
        while (it.hasNext() && (beacon = it.next().fromScanData(scanData.scanRecord, scanData.rssi, scanData.device)) == null) {
        }
        if (beacon != null) {
            this.mDetectionTracker.recordDetection();
            this.trackedBeaconsPacketCount++;
            processBeaconFromScan(beacon);
            return;
        }
        NonBeaconLeScanCallback nonBeaconLeScanCallback = this.mNonBeaconLeScanCallback;
        if (nonBeaconLeScanCallback != null) {
            nonBeaconLeScanCallback.onNonBeaconLeScan(scanData.device, scanData.rssi, scanData.scanRecord);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class ScanData {
        BluetoothDevice device;
        int rssi;
        byte[] scanRecord;

        public ScanData(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            this.device = bluetoothDevice;
            this.rssi = i;
            this.scanRecord = bArr;
        }
    }

    private void processBeaconFromScan(Beacon beacon) {
        if (Stats.getInstance().isEnabled()) {
            Stats.getInstance().log(beacon);
        }
        if (LogManager.isVerboseLoggingEnabled()) {
            LogManager.d(TAG, "beacon detected : %s", beacon.toString());
        }
        Beacon track = this.mExtraDataBeaconTracker.track(beacon);
        if (track == null) {
            if (LogManager.isVerboseLoggingEnabled()) {
                LogManager.d(TAG, "not processing detections for GATT extra data beacon", new Object[0]);
                return;
            }
            return;
        }
        this.mMonitoringStatus.updateNewlyInsideInRegionsContaining(track);
        LogManager.d(TAG, "looking for ranging region matches for this beacon out of " + this.mRangedRegionState.keySet().size() + " regions.", new Object[0]);
        synchronized (this.mRangedRegionState) {
            for (Region region : matchingRegions(track, this.mRangedRegionState.keySet())) {
                LogManager.d(TAG, "matches ranging region: %s", region);
                RangeState rangeState = this.mRangedRegionState.get(region);
                if (rangeState != null) {
                    rangeState.addBeacon(track);
                }
            }
        }
    }

    private List<Region> matchingRegions(Beacon beacon, Collection<Region> collection) {
        ArrayList arrayList = new ArrayList();
        for (Region region : collection) {
            if (region.matchesBeacon(beacon)) {
                arrayList.add(region);
            } else {
                LogManager.d(TAG, "This region (%s) does not match beacon: %s", region, beacon);
            }
        }
        return arrayList;
    }

    public void onCycleEnd() {
        this.mMonitoringStatus.updateNewlyOutside();
        processRangeData();
        if (BeaconManager.getBeaconSimulator() != null) {
            if (BeaconManager.getBeaconSimulator().getBeacons() != null) {
                ApplicationInfo applicationInfo = this.mService.getApplicationContext().getApplicationInfo();
                int i = applicationInfo.flags & 2;
                applicationInfo.flags = i;
                if (i != 0) {
                    for (Beacon beacon : BeaconManager.getBeaconSimulator().getBeacons()) {
                        processBeaconFromScan(beacon);
                    }
                    return;
                }
                LogManager.w(TAG, "Beacon simulations provided, but ignored because we are not running in debug mode.  Please remove beacon simulations for production.", new Object[0]);
                return;
            }
            LogManager.w(TAG, "getBeacons is returning null. No simulated beacons to report.", new Object[0]);
        }
    }

    private void processRangeData() {
        synchronized (this.mRangedRegionState) {
            for (Region region : this.mRangedRegionState.keySet()) {
                LogManager.d(TAG, "Calling ranging callback", new Object[0]);
                new Callback(this.mService.getPackageName()).call(this.mService, "rangingData", new RangingData(this.mRangedRegionState.get(region).finalizeBeacons(), region).toBundle());
            }
        }
    }
}
