package org.altbeacon.beacon.service;

import android.content.Context;
import android.os.Bundle;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.BeaconParser;
import org.altbeacon.beacon.Region;
import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class SettingsData implements Serializable {
    private static final String SETTINGS_DATA_KEY = "SettingsData";
    private static final String TAG = "SettingsData";
    Boolean mAndroidLScanningDisabled;
    ArrayList<BeaconParser> mBeaconParsers;
    Boolean mHardwareEqualityEnforced;
    Long mRegionExitPeriod;
    Boolean mRegionStatePersistenceEnabled;
    Boolean mUseTrackingCache;

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("SettingsData", this);
        return bundle;
    }

    public static SettingsData fromBundle(Bundle bundle) {
        bundle.setClassLoader(Region.class.getClassLoader());
        if (bundle.get("SettingsData") != null) {
            return (SettingsData) bundle.getSerializable("SettingsData");
        }
        return null;
    }

    public void apply(BeaconService beaconService) {
        MonitoringStatus instanceForApplication;
        String str = TAG;
        LogManager.d(str, "Applying settings changes to scanner in other process", new Object[0]);
        BeaconManager instanceForApplication2 = BeaconManager.getInstanceForApplication(beaconService);
        List<BeaconParser> beaconParsers = instanceForApplication2.getBeaconParsers();
        if (beaconParsers.size() == this.mBeaconParsers.size()) {
            for (int i = 0; i < beaconParsers.size(); i++) {
                if (!beaconParsers.get(i).equals(this.mBeaconParsers.get(i))) {
                    LogManager.d(TAG, "Beacon parsers have changed to: " + this.mBeaconParsers.get(i).getLayout(), new Object[0]);
                }
            }
            LogManager.d(TAG, "Beacon parsers unchanged.", new Object[0]);
            instanceForApplication = MonitoringStatus.getInstanceForApplication(beaconService);
            if (!instanceForApplication.isStatePreservationOn() && !this.mRegionStatePersistenceEnabled.booleanValue()) {
                instanceForApplication.stopStatusPreservation();
            } else if (!instanceForApplication.isStatePreservationOn() && this.mRegionStatePersistenceEnabled.booleanValue()) {
                instanceForApplication.startStatusPreservation();
            }
            BeaconManager.setAndroidLScanningDisabled(this.mAndroidLScanningDisabled.booleanValue());
            BeaconManager.setRegionExitPeriod(this.mRegionExitPeriod.longValue());
            RangeState.setUseTrackingCache(this.mUseTrackingCache.booleanValue());
            Beacon.setHardwareEqualityEnforced(this.mHardwareEqualityEnforced.booleanValue());
        }
        LogManager.d(str, "Beacon parsers have been added or removed.", new Object[0]);
        LogManager.d(TAG, "Updating beacon parsers", new Object[0]);
        instanceForApplication2.getBeaconParsers().clear();
        instanceForApplication2.getBeaconParsers().addAll(this.mBeaconParsers);
        beaconService.reloadParsers();
        instanceForApplication = MonitoringStatus.getInstanceForApplication(beaconService);
        if (!instanceForApplication.isStatePreservationOn()) {
        }
        if (!instanceForApplication.isStatePreservationOn()) {
            instanceForApplication.startStatusPreservation();
        }
        BeaconManager.setAndroidLScanningDisabled(this.mAndroidLScanningDisabled.booleanValue());
        BeaconManager.setRegionExitPeriod(this.mRegionExitPeriod.longValue());
        RangeState.setUseTrackingCache(this.mUseTrackingCache.booleanValue());
        Beacon.setHardwareEqualityEnforced(this.mHardwareEqualityEnforced.booleanValue());
    }

    public SettingsData collect(Context context) {
        BeaconManager instanceForApplication = BeaconManager.getInstanceForApplication(context);
        this.mBeaconParsers = new ArrayList<>(instanceForApplication.getBeaconParsers());
        this.mRegionStatePersistenceEnabled = Boolean.valueOf(instanceForApplication.isRegionStatePersistenceEnabled());
        this.mAndroidLScanningDisabled = Boolean.valueOf(BeaconManager.isAndroidLScanningDisabled());
        this.mRegionExitPeriod = Long.valueOf(BeaconManager.getRegionExitPeriod());
        this.mUseTrackingCache = Boolean.valueOf(RangeState.getUseTrackingCache());
        this.mHardwareEqualityEnforced = Boolean.valueOf(Beacon.getHardwareEqualityEnforced());
        return this;
    }
}
