package org.altbeacon.beacon.service;

import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class ArmaRssiFilter implements RssiFilter {
    private static double DEFAULT_ARMA_SPEED = 0.1d;
    private static final String TAG = "ArmaRssiFilter";
    private int armaMeasurement;
    private boolean isInitialized = false;
    private double armaSpeed = DEFAULT_ARMA_SPEED;

    @Override // org.altbeacon.beacon.service.RssiFilter
    public int getMeasurementCount() {
        return 0;
    }

    @Override // org.altbeacon.beacon.service.RssiFilter
    public boolean noMeasurementsAvailable() {
        return false;
    }

    @Override // org.altbeacon.beacon.service.RssiFilter
    public void addMeasurement(Integer num) {
        LogManager.d(TAG, "adding rssi: %s", num);
        if (!this.isInitialized) {
            this.armaMeasurement = num.intValue();
            this.isInitialized = true;
        }
        int i = this.armaMeasurement;
        int intValue = Double.valueOf(i - (this.armaSpeed * (i - num.intValue()))).intValue();
        this.armaMeasurement = intValue;
        LogManager.d(TAG, "armaMeasurement: %s", Integer.valueOf(intValue));
    }

    @Override // org.altbeacon.beacon.service.RssiFilter
    public double calculateRssi() {
        return this.armaMeasurement;
    }

    public static void setDEFAULT_ARMA_SPEED(double d2) {
        DEFAULT_ARMA_SPEED = d2;
    }
}
