package org.altbeacon.beacon.service.scanner;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import org.altbeacon.beacon.logging.LogManager;
import org.altbeacon.bluetooth.BluetoothCrashResolver;
/* loaded from: classes5.dex */
public class CycledLeScannerForJellyBeanMr2 extends CycledLeScanner {
    private static final String TAG = "CycledLeScannerForJellyBeanMr2";
    private BluetoothAdapter.LeScanCallback leScanCallback;

    public CycledLeScannerForJellyBeanMr2(Context context, long j, long j2, boolean z, CycledLeScanCallback cycledLeScanCallback, BluetoothCrashResolver bluetoothCrashResolver) {
        super(context, j, j2, z, cycledLeScanCallback, bluetoothCrashResolver);
    }

    @Override // org.altbeacon.beacon.service.scanner.CycledLeScanner
    protected void stopScan() {
        postStopLeScan();
    }

    @Override // org.altbeacon.beacon.service.scanner.CycledLeScanner
    protected boolean deferScanIfNeeded() {
        long elapsedRealtime = this.mNextScanCycleStartTime - SystemClock.elapsedRealtime();
        if (elapsedRealtime > 0) {
            LogManager.d(TAG, "Waiting to start next Bluetooth scan for another %s milliseconds", Long.valueOf(elapsedRealtime));
            if (this.mBackgroundFlag) {
                setWakeUpAlarm();
            }
            Handler handler = this.mHandler;
            Runnable runnable = new Runnable() { // from class: org.altbeacon.beacon.service.scanner.CycledLeScannerForJellyBeanMr2.1
                @Override // java.lang.Runnable
                public void run() {
                    CycledLeScannerForJellyBeanMr2.this.scanLeDevice(true);
                }
            };
            if (elapsedRealtime > 1000) {
                elapsedRealtime = 1000;
            }
            handler.postDelayed(runnable, elapsedRealtime);
            return true;
        }
        return false;
    }

    @Override // org.altbeacon.beacon.service.scanner.CycledLeScanner
    protected void startScan() {
        postStartLeScan();
    }

    @Override // org.altbeacon.beacon.service.scanner.CycledLeScanner
    protected void finishScan() {
        postStopLeScan();
        this.mScanningPaused = true;
    }

    private void postStartLeScan() {
        final BluetoothAdapter bluetoothAdapter = getBluetoothAdapter();
        if (bluetoothAdapter == null) {
            return;
        }
        final BluetoothAdapter.LeScanCallback leScanCallback = getLeScanCallback();
        this.mScanHandler.removeCallbacksAndMessages(null);
        this.mScanHandler.post(new Runnable() { // from class: org.altbeacon.beacon.service.scanner.CycledLeScannerForJellyBeanMr2.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    bluetoothAdapter.startLeScan(leScanCallback);
                } catch (Exception e2) {
                    LogManager.e(e2, CycledLeScannerForJellyBeanMr2.TAG, "Internal Android exception in startLeScan()", new Object[0]);
                }
            }
        });
    }

    private void postStopLeScan() {
        final BluetoothAdapter bluetoothAdapter = getBluetoothAdapter();
        if (bluetoothAdapter == null) {
            return;
        }
        final BluetoothAdapter.LeScanCallback leScanCallback = getLeScanCallback();
        this.mScanHandler.removeCallbacksAndMessages(null);
        this.mScanHandler.post(new Runnable() { // from class: org.altbeacon.beacon.service.scanner.CycledLeScannerForJellyBeanMr2.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    bluetoothAdapter.stopLeScan(leScanCallback);
                } catch (Exception e2) {
                    LogManager.e(e2, CycledLeScannerForJellyBeanMr2.TAG, "Internal Android exception in stopLeScan()", new Object[0]);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BluetoothAdapter.LeScanCallback getLeScanCallback() {
        if (this.leScanCallback == null) {
            this.leScanCallback = new BluetoothAdapter.LeScanCallback() { // from class: org.altbeacon.beacon.service.scanner.CycledLeScannerForJellyBeanMr2.4
                @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
                public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
                    LogManager.d(CycledLeScannerForJellyBeanMr2.TAG, "got record", new Object[0]);
                    CycledLeScannerForJellyBeanMr2.this.mCycledLeScanCallback.onLeScan(bluetoothDevice, i, bArr);
                    if (CycledLeScannerForJellyBeanMr2.this.mBluetoothCrashResolver != null) {
                        CycledLeScannerForJellyBeanMr2.this.mBluetoothCrashResolver.notifyScannedDevice(bluetoothDevice, CycledLeScannerForJellyBeanMr2.this.getLeScanCallback());
                    }
                }
            };
        }
        return this.leScanCallback;
    }
}
