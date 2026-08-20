package org.altbeacon.beacon.service.scanner;

import android.bluetooth.BluetoothDevice;
/* loaded from: classes5.dex */
public interface NonBeaconLeScanCallback {
    void onNonBeaconLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr);
}
