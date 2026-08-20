package org.altbeacon.beacon.service.scanner;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import java.util.Date;
import org.altbeacon.beacon.logging.LogManager;
import org.altbeacon.beacon.startup.StartupBroadcastReceiver;
import org.altbeacon.bluetooth.BluetoothCrashResolver;
/* loaded from: classes5.dex */
public abstract class CycledLeScanner {
    public static final long ANDROID_N_MAX_SCAN_DURATION_MILLIS = 1800000;
    private static final long ANDROID_N_MIN_SCAN_CYCLE_MILLIS = 6000;
    private static final String TAG = "CycledLeScanner";
    protected boolean mBackgroundFlag;
    protected long mBetweenScanPeriod;
    private BluetoothAdapter mBluetoothAdapter;
    protected final BluetoothCrashResolver mBluetoothCrashResolver;
    protected final Context mContext;
    protected final CycledLeScanCallback mCycledLeScanCallback;
    protected final Handler mScanHandler;
    private long mScanPeriod;
    private final HandlerThread mScanThread;
    private boolean mScanning;
    protected boolean mScanningPaused;
    private long mLastScanCycleStartTime = 0;
    private long mLastScanCycleEndTime = 0;
    protected long mNextScanCycleStartTime = 0;
    private long mScanCycleStopTime = 0;
    private long mCurrentScanStartTime = 0;
    private boolean mLongScanForcingEnabled = false;
    private boolean mScanCyclerStarted = false;
    private boolean mScanningEnabled = false;
    private boolean mScanningLeftOn = false;
    protected final Handler mHandler = new Handler(Looper.getMainLooper());
    protected boolean mRestartNeeded = false;
    private volatile boolean mDistinctPacketsDetectedPerScan = false;
    private PendingIntent mWakeUpOperation = null;

    protected abstract boolean deferScanIfNeeded();

    protected abstract void finishScan();

    protected abstract void startScan();

    protected abstract void stopScan();

    /* JADX INFO: Access modifiers changed from: protected */
    public CycledLeScanner(Context context, long j, long j2, boolean z, CycledLeScanCallback cycledLeScanCallback, BluetoothCrashResolver bluetoothCrashResolver) {
        this.mBackgroundFlag = false;
        this.mScanPeriod = j;
        this.mBetweenScanPeriod = j2;
        this.mContext = context;
        this.mCycledLeScanCallback = cycledLeScanCallback;
        this.mBluetoothCrashResolver = bluetoothCrashResolver;
        this.mBackgroundFlag = z;
        HandlerThread handlerThread = new HandlerThread("CycledLeScannerThread");
        this.mScanThread = handlerThread;
        handlerThread.start();
        this.mScanHandler = new Handler(handlerThread.getLooper());
    }

    public static CycledLeScanner createScanner(Context context, long j, long j2, boolean z, CycledLeScanCallback cycledLeScanCallback, BluetoothCrashResolver bluetoothCrashResolver) {
        LogManager.i(TAG, "Using Android O scanner", new Object[0]);
        return new CycledLeScannerForAndroidO(context, j, j2, z, cycledLeScanCallback, bluetoothCrashResolver);
    }

    public void setLongScanForcingEnabled(boolean z) {
        this.mLongScanForcingEnabled = z;
    }

    public void setScanPeriods(long j, long j2, boolean z) {
        LogManager.d(TAG, "Set scan periods called with %s, %s Background mode must have changed.", Long.valueOf(j), Long.valueOf(j2));
        if (this.mBackgroundFlag != z) {
            this.mRestartNeeded = true;
        }
        this.mBackgroundFlag = z;
        this.mScanPeriod = j;
        this.mBetweenScanPeriod = j2;
        if (z) {
            LogManager.d(TAG, "We are in the background.  Setting wakeup alarm", new Object[0]);
            setWakeUpAlarm();
        } else {
            LogManager.d(TAG, "We are not in the background.  Cancelling wakeup alarm", new Object[0]);
            cancelWakeUpAlarm();
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j3 = this.mNextScanCycleStartTime;
        if (j3 > elapsedRealtime) {
            long j4 = this.mLastScanCycleEndTime + j2;
            if (j4 < j3) {
                this.mNextScanCycleStartTime = j4;
                LogManager.i(TAG, "Adjusted nextScanStartTime to be %s", new Date((this.mNextScanCycleStartTime - SystemClock.elapsedRealtime()) + System.currentTimeMillis()));
            }
        }
        long j5 = this.mScanCycleStopTime;
        if (j5 > elapsedRealtime) {
            long j6 = this.mLastScanCycleStartTime + j;
            if (j6 < j5) {
                this.mScanCycleStopTime = j6;
                LogManager.i(TAG, "Adjusted scanStopTime to be %s", Long.valueOf(j6));
            }
        }
    }

    public void start() {
        LogManager.d(TAG, "start called", new Object[0]);
        this.mScanningEnabled = true;
        if (!this.mScanCyclerStarted) {
            scanLeDevice(true);
        } else {
            LogManager.d(TAG, "scanning already started", new Object[0]);
        }
    }

    public void stop() {
        LogManager.d(TAG, "stop called", new Object[0]);
        this.mScanningEnabled = false;
        if (this.mScanCyclerStarted) {
            scanLeDevice(false);
            if (this.mScanningLeftOn) {
                LogManager.d(TAG, "Stopping scanning previously left on.", new Object[0]);
                this.mScanningLeftOn = false;
                try {
                    LogManager.d(TAG, "stopping bluetooth le scan", new Object[0]);
                    finishScan();
                    return;
                } catch (Exception e2) {
                    LogManager.w(e2, TAG, "Internal Android exception scanning for beacons", new Object[0]);
                    return;
                }
            }
            return;
        }
        LogManager.d(TAG, "scanning already stopped", new Object[0]);
    }

    public boolean getDistinctPacketsDetectedPerScan() {
        return this.mDistinctPacketsDetectedPerScan;
    }

    public void setDistinctPacketsDetectedPerScan(boolean z) {
        this.mDistinctPacketsDetectedPerScan = z;
    }

    public void destroy() {
        LogManager.d(TAG, "Destroying", new Object[0]);
        this.mHandler.removeCallbacksAndMessages(null);
        this.mScanHandler.post(new Runnable() { // from class: org.altbeacon.beacon.service.scanner.CycledLeScanner.1
            @Override // java.lang.Runnable
            public void run() {
                LogManager.d(CycledLeScanner.TAG, "Quitting scan thread", new Object[0]);
                CycledLeScanner.this.mScanThread.quit();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't wrap try/catch for region: R(8:14|(3:21|22|23)|24|25|26|(2:28|(3:30|(2:36|(5:38|(1:40)(1:48)|41|42|(1:44))(1:49))(1:34)|35)(1:50))|22|23) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c9, code lost:
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ca, code lost:
        org.altbeacon.beacon.logging.LogManager.e(r7, org.altbeacon.beacon.service.scanner.CycledLeScanner.TAG, "Exception starting Bluetooth scan.  Perhaps Bluetooth is disabled or unavailable?", new java.lang.Object[0]);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void scanLeDevice(java.lang.Boolean r7) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.service.scanner.CycledLeScanner.scanLeDevice(java.lang.Boolean):void");
    }

    protected void scheduleScanCycleStop() {
        long elapsedRealtime = this.mScanCycleStopTime - SystemClock.elapsedRealtime();
        if (this.mScanningEnabled && elapsedRealtime > 0) {
            LogManager.d(TAG, "Waiting to stop scan cycle for another %s milliseconds", Long.valueOf(elapsedRealtime));
            if (this.mBackgroundFlag) {
                setWakeUpAlarm();
            }
            Handler handler = this.mHandler;
            Runnable runnable = new Runnable() { // from class: org.altbeacon.beacon.service.scanner.CycledLeScanner.2
                @Override // java.lang.Runnable
                public void run() {
                    CycledLeScanner.this.scheduleScanCycleStop();
                }
            };
            if (elapsedRealtime > 1000) {
                elapsedRealtime = 1000;
            }
            handler.postDelayed(runnable, elapsedRealtime);
            return;
        }
        finishScanCycle();
    }

    private void finishScanCycle() {
        LogManager.d(TAG, "Done with scan cycle", new Object[0]);
        try {
            this.mCycledLeScanCallback.onCycleEnd();
            if (this.mScanning) {
                if (getBluetoothAdapter() != null) {
                    if (getBluetoothAdapter().isEnabled()) {
                        if (this.mDistinctPacketsDetectedPerScan && this.mBetweenScanPeriod == 0 && !mustStopScanToPreventAndroidNScanTimeout()) {
                            LogManager.d(TAG, "Not stopping scanning.  Device capable of multiple indistinct detections per scan.", new Object[0]);
                            this.mScanningLeftOn = true;
                            this.mLastScanCycleEndTime = SystemClock.elapsedRealtime();
                        }
                        long elapsedRealtime = SystemClock.elapsedRealtime();
                        if (this.mBetweenScanPeriod + this.mScanPeriod < ANDROID_N_MIN_SCAN_CYCLE_MILLIS && elapsedRealtime - this.mLastScanCycleStartTime < ANDROID_N_MIN_SCAN_CYCLE_MILLIS) {
                            LogManager.d(TAG, "Not stopping scan because this is Android N and we keep scanning for a minimum of 6 seconds at a time. We will stop in " + (ANDROID_N_MIN_SCAN_CYCLE_MILLIS - (elapsedRealtime - this.mLastScanCycleStartTime)) + " millisconds.", new Object[0]);
                            this.mScanningLeftOn = true;
                        } else {
                            try {
                                LogManager.d(TAG, "stopping bluetooth le scan", new Object[0]);
                                finishScan();
                                this.mScanningLeftOn = false;
                            } catch (Exception e2) {
                                LogManager.w(e2, TAG, "Internal Android exception scanning for beacons", new Object[0]);
                            }
                        }
                        this.mLastScanCycleEndTime = SystemClock.elapsedRealtime();
                    } else {
                        LogManager.d(TAG, "Bluetooth is disabled.  Cannot scan for beacons.", new Object[0]);
                        this.mRestartNeeded = true;
                    }
                }
                this.mNextScanCycleStartTime = getNextScanStartTime();
                if (this.mScanningEnabled) {
                    scanLeDevice(true);
                }
            }
            if (this.mScanningEnabled) {
                return;
            }
            LogManager.d(TAG, "Scanning disabled. ", new Object[0]);
            this.mScanCyclerStarted = false;
            cancelWakeUpAlarm();
        } catch (SecurityException unused) {
            LogManager.w(TAG, "SecurityException working accessing bluetooth.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BluetoothAdapter getBluetoothAdapter() {
        try {
            if (this.mBluetoothAdapter == null) {
                BluetoothAdapter adapter = ((BluetoothManager) this.mContext.getApplicationContext().getSystemService("bluetooth")).getAdapter();
                this.mBluetoothAdapter = adapter;
                if (adapter == null) {
                    LogManager.w(TAG, "Failed to construct a BluetoothAdapter", new Object[0]);
                }
            }
        } catch (SecurityException unused) {
            LogManager.e(TAG, "Cannot consruct bluetooth adapter.  Security Exception", new Object[0]);
        }
        return this.mBluetoothAdapter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setWakeUpAlarm() {
        long j = this.mBetweenScanPeriod;
        if (300000 >= j) {
            j = 300000;
        }
        long j2 = this.mScanPeriod;
        if (j < j2) {
            j = j2;
        }
        ((AlarmManager) this.mContext.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(2, SystemClock.elapsedRealtime() + j, getWakeUpOperation());
        LogManager.d(TAG, "Set a wakeup alarm to go off in %s ms: %s", Long.valueOf(j), getWakeUpOperation());
    }

    protected PendingIntent getWakeUpOperation() {
        if (this.mWakeUpOperation == null) {
            Intent intent = new Intent(this.mContext, StartupBroadcastReceiver.class);
            intent.putExtra("wakeup", true);
            this.mWakeUpOperation = PendingIntent.getBroadcast(this.mContext, 0, intent, 134217728);
        }
        return this.mWakeUpOperation;
    }

    protected void cancelWakeUpAlarm() {
        LogManager.d(TAG, "cancel wakeup alarm: %s", this.mWakeUpOperation);
        ((AlarmManager) this.mContext.getSystemService(NotificationCompat.CATEGORY_ALARM)).set(2, Long.MAX_VALUE, getWakeUpOperation());
        LogManager.d(TAG, "Set a wakeup alarm to go off in %s ms: %s", Long.valueOf(Long.MAX_VALUE - SystemClock.elapsedRealtime()), getWakeUpOperation());
    }

    private long getNextScanStartTime() {
        long j = this.mBetweenScanPeriod;
        if (j == 0) {
            return SystemClock.elapsedRealtime();
        }
        long elapsedRealtime = j - (SystemClock.elapsedRealtime() % (this.mScanPeriod + j));
        LogManager.d(TAG, "Normalizing between scan period from %s to %s", Long.valueOf(this.mBetweenScanPeriod), Long.valueOf(elapsedRealtime));
        return SystemClock.elapsedRealtime() + elapsedRealtime;
    }

    private boolean checkLocationPermission() {
        return checkPermission("android.permission.ACCESS_COARSE_LOCATION") || checkPermission("android.permission.ACCESS_FINE_LOCATION");
    }

    private boolean checkPermission(String str) {
        return this.mContext.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    private boolean mustStopScanToPreventAndroidNScanTimeout() {
        long elapsedRealtime = SystemClock.elapsedRealtime() + this.mBetweenScanPeriod + this.mScanPeriod;
        long j = this.mCurrentScanStartTime;
        if (j > 0 && elapsedRealtime - j > ANDROID_N_MAX_SCAN_DURATION_MILLIS) {
            LogManager.d(TAG, "The next scan cycle would go over the Android N max duration.", new Object[0]);
            if (this.mLongScanForcingEnabled) {
                LogManager.d(TAG, "Stopping scan to prevent Android N scan timeout.", new Object[0]);
                return true;
            }
            LogManager.w(TAG, "Allowing a long running scan to be stopped by the OS.  To prevent this, set longScanForcingEnabled in the AndroidBeaconLibrary.", new Object[0]);
        }
        return false;
    }
}
