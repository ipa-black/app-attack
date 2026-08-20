package org.altbeacon.beacon;
/* loaded from: classes5.dex */
public interface BeaconData {
    String get(String str);

    Double getLatitude();

    Double getLongitude();

    boolean isDirty();

    void set(String str, String str2);

    void setLatitude(Double d2);

    void setLongitude(Double d2);

    void sync(BeaconDataNotifier beaconDataNotifier);
}
