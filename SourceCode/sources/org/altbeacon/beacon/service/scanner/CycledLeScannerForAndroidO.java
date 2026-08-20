package org.altbeacon.beacon.service.scanner;

import android.content.Context;
import org.altbeacon.bluetooth.BluetoothCrashResolver;
/* loaded from: classes5.dex */
class CycledLeScannerForAndroidO extends CycledLeScannerForLollipop {
    private static final String TAG = "CycledLeScannerForAndroidO";

    /* JADX INFO: Access modifiers changed from: package-private */
    public CycledLeScannerForAndroidO(Context context, long j, long j2, boolean z, CycledLeScanCallback cycledLeScanCallback, BluetoothCrashResolver bluetoothCrashResolver) {
        super(context, j, j2, z, cycledLeScanCallback, bluetoothCrashResolver);
    }
}
