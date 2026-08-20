package org.altbeacon.beacon.service;
/* loaded from: classes5.dex */
public interface RssiFilter {
    void addMeasurement(Integer num);

    double calculateRssi();

    int getMeasurementCount();

    boolean noMeasurementsAvailable();
}
