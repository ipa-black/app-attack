package org.altbeacon.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.HashSet;
import java.util.Set;
import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class BluetoothCrashResolver {
    private static final int BLUEDROID_MAX_BLUETOOTH_MAC_COUNT = 1990;
    private static final int BLUEDROID_POST_DISCOVERY_ESTIMATED_BLUETOOTH_MAC_COUNT = 400;
    private static final String DISTINCT_BLUETOOTH_ADDRESSES_FILE = "BluetoothCrashResolverState.txt";
    private static final long MIN_TIME_BETWEEN_STATE_SAVES_MILLIS = 60000;
    private static final boolean PREEMPTIVE_ACTION_ENABLED = true;
    private static final long SUSPICIOUSLY_SHORT_BLUETOOTH_OFF_INTERVAL_MILLIS = 600;
    private static final String TAG = "BluetoothCrashResolver";
    private static final int TIME_TO_LET_DISCOVERY_RUN_MILLIS = 5000;
    private Context context;
    private UpdateNotifier updateNotifier;
    private boolean recoveryInProgress = false;
    private boolean discoveryStartConfirmed = false;
    private long lastBluetoothOffTime = 0;
    private long lastBluetoothTurningOnTime = 0;
    private long lastBluetoothCrashDetectionTime = 0;
    private int detectedCrashCount = 0;
    private int recoveryAttemptCount = 0;
    private boolean lastRecoverySucceeded = false;
    private long lastStateSaveTime = 0;
    private final Set<String> distinctBluetoothAddresses = new HashSet();
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: org.altbeacon.bluetooth.BluetoothCrashResolver.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.bluetooth.adapter.action.DISCOVERY_FINISHED")) {
                if (BluetoothCrashResolver.this.recoveryInProgress) {
                    LogManager.d(BluetoothCrashResolver.TAG, "Bluetooth discovery finished", new Object[0]);
                    BluetoothCrashResolver.this.finishRecovery();
                } else {
                    LogManager.d(BluetoothCrashResolver.TAG, "Bluetooth discovery finished (external)", new Object[0]);
                }
            }
            if (action.equals("android.bluetooth.adapter.action.DISCOVERY_STARTED")) {
                if (BluetoothCrashResolver.this.recoveryInProgress) {
                    BluetoothCrashResolver.this.discoveryStartConfirmed = true;
                    LogManager.d(BluetoothCrashResolver.TAG, "Bluetooth discovery started", new Object[0]);
                } else {
                    LogManager.d(BluetoothCrashResolver.TAG, "Bluetooth discovery started (external)", new Object[0]);
                }
            }
            if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", Integer.MIN_VALUE);
                if (intExtra == Integer.MIN_VALUE) {
                    LogManager.d(BluetoothCrashResolver.TAG, "Bluetooth state is ERROR", new Object[0]);
                    return;
                }
                switch (intExtra) {
                    case 10:
                        LogManager.d(BluetoothCrashResolver.TAG, "Bluetooth state is OFF", new Object[0]);
                        BluetoothCrashResolver.this.lastBluetoothOffTime = SystemClock.elapsedRealtime();
                        return;
                    case 11:
                        BluetoothCrashResolver.this.lastBluetoothTurningOnTime = SystemClock.elapsedRealtime();
                        LogManager.d(BluetoothCrashResolver.TAG, "Bluetooth state is TURNING_ON", new Object[0]);
                        return;
                    case 12:
                        LogManager.d(BluetoothCrashResolver.TAG, "Bluetooth state is ON", new Object[0]);
                        LogManager.d(BluetoothCrashResolver.TAG, "Bluetooth was turned off for %s milliseconds", Long.valueOf(BluetoothCrashResolver.this.lastBluetoothTurningOnTime - BluetoothCrashResolver.this.lastBluetoothOffTime));
                        if (BluetoothCrashResolver.this.lastBluetoothTurningOnTime - BluetoothCrashResolver.this.lastBluetoothOffTime < BluetoothCrashResolver.SUSPICIOUSLY_SHORT_BLUETOOTH_OFF_INTERVAL_MILLIS) {
                            BluetoothCrashResolver.this.crashDetected();
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    };

    /* loaded from: classes5.dex */
    public interface UpdateNotifier {
        void dataUpdated();
    }

    private int getCrashRiskDeviceCount() {
        return 1590;
    }

    @Deprecated
    public void disableDebug() {
    }

    @Deprecated
    public void enableDebug() {
    }

    public BluetoothCrashResolver(Context context) {
        this.context = null;
        this.context = context.getApplicationContext();
        LogManager.d(TAG, "constructed", new Object[0]);
        loadState();
    }

    public void start() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        this.context.registerReceiver(this.receiver, intentFilter);
        LogManager.d(TAG, "started listening for BluetoothAdapter events", new Object[0]);
    }

    public void stop() {
        this.context.unregisterReceiver(this.receiver);
        LogManager.d(TAG, "stopped listening for BluetoothAdapter events", new Object[0]);
        saveState();
    }

    public void notifyScannedDevice(BluetoothDevice bluetoothDevice, BluetoothAdapter.LeScanCallback leScanCallback) {
        int size = this.distinctBluetoothAddresses.size();
        synchronized (this.distinctBluetoothAddresses) {
            this.distinctBluetoothAddresses.add(bluetoothDevice.getAddress());
        }
        int size2 = this.distinctBluetoothAddresses.size();
        if (size != size2 && size2 % 100 == 0) {
            LogManager.d(TAG, "Distinct Bluetooth devices seen: %s", Integer.valueOf(this.distinctBluetoothAddresses.size()));
        }
        if (this.distinctBluetoothAddresses.size() <= getCrashRiskDeviceCount() || this.recoveryInProgress) {
            return;
        }
        LogManager.w(TAG, "Large number of Bluetooth devices detected: %s Proactively attempting to clear out address list to prevent a crash", Integer.valueOf(this.distinctBluetoothAddresses.size()));
        LogManager.w(TAG, "Stopping LE Scan", new Object[0]);
        BluetoothAdapter.getDefaultAdapter().stopLeScan(leScanCallback);
        startRecovery();
        processStateChange();
    }

    public void crashDetected() {
        LogManager.w(TAG, "BluetoothService crash detected", new Object[0]);
        if (this.distinctBluetoothAddresses.size() > 0) {
            LogManager.d(TAG, "Distinct Bluetooth devices seen at crash: %s", Integer.valueOf(this.distinctBluetoothAddresses.size()));
        }
        this.lastBluetoothCrashDetectionTime = SystemClock.elapsedRealtime();
        this.detectedCrashCount++;
        if (this.recoveryInProgress) {
            LogManager.d(TAG, "Ignoring Bluetooth crash because recovery is already in progress.", new Object[0]);
        } else {
            startRecovery();
        }
        processStateChange();
    }

    public long getLastBluetoothCrashDetectionTime() {
        return this.lastBluetoothCrashDetectionTime;
    }

    public int getDetectedCrashCount() {
        return this.detectedCrashCount;
    }

    public int getRecoveryAttemptCount() {
        return this.recoveryAttemptCount;
    }

    public boolean isLastRecoverySucceeded() {
        return this.lastRecoverySucceeded;
    }

    public boolean isRecoveryInProgress() {
        return this.recoveryInProgress;
    }

    public void setUpdateNotifier(UpdateNotifier updateNotifier) {
        this.updateNotifier = updateNotifier;
    }

    public void forceFlush() {
        startRecovery();
        processStateChange();
    }

    private void processStateChange() {
        UpdateNotifier updateNotifier = this.updateNotifier;
        if (updateNotifier != null) {
            updateNotifier.dataUpdated();
        }
        if (SystemClock.elapsedRealtime() - this.lastStateSaveTime > 60000) {
            saveState();
        }
    }

    private void startRecovery() {
        this.recoveryAttemptCount++;
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        LogManager.d(TAG, "about to check if discovery is active", new Object[0]);
        if (!defaultAdapter.isDiscovering()) {
            LogManager.w(TAG, "Recovery attempt started", new Object[0]);
            this.recoveryInProgress = true;
            this.discoveryStartConfirmed = false;
            LogManager.d(TAG, "about to command discovery", new Object[0]);
            if (!defaultAdapter.startDiscovery()) {
                LogManager.w(TAG, "Can't start discovery.  Is Bluetooth turned on?", new Object[0]);
            }
            LogManager.d(TAG, "startDiscovery commanded.  isDiscovering()=%s", Boolean.valueOf(defaultAdapter.isDiscovering()));
            LogManager.d(TAG, "We will be cancelling this discovery in %s milliseconds.", 5000);
            cancelDiscovery();
            return;
        }
        LogManager.w(TAG, "Already discovering.  Recovery attempt abandoned.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishRecovery() {
        LogManager.w(TAG, "Recovery attempt finished", new Object[0]);
        synchronized (this.distinctBluetoothAddresses) {
            this.distinctBluetoothAddresses.clear();
        }
        this.recoveryInProgress = false;
    }

    private void saveState() {
        OutputStreamWriter outputStreamWriter;
        Throwable th;
        this.lastStateSaveTime = SystemClock.elapsedRealtime();
        OutputStreamWriter outputStreamWriter2 = null;
        try {
            try {
                try {
                    outputStreamWriter = new OutputStreamWriter(this.context.openFileOutput(DISTINCT_BLUETOOTH_ADDRESSES_FILE, 0));
                } catch (IOException unused) {
                }
            } catch (IOException unused2) {
            }
        } catch (Throwable th2) {
            outputStreamWriter = outputStreamWriter2;
            th = th2;
        }
        try {
            outputStreamWriter.write(this.lastBluetoothCrashDetectionTime + "\n");
            outputStreamWriter.write(this.detectedCrashCount + "\n");
            outputStreamWriter.write(this.recoveryAttemptCount + "\n");
            outputStreamWriter.write(this.lastRecoverySucceeded ? "1\n" : "0\n");
            synchronized (this.distinctBluetoothAddresses) {
                for (String str : this.distinctBluetoothAddresses) {
                    outputStreamWriter.write(str);
                    outputStreamWriter.write("\n");
                }
            }
            outputStreamWriter.close();
        } catch (IOException unused3) {
            outputStreamWriter2 = outputStreamWriter;
            LogManager.w(TAG, "Can't write macs to %s", DISTINCT_BLUETOOTH_ADDRESSES_FILE);
            if (outputStreamWriter2 != null) {
                outputStreamWriter2.close();
            }
            LogManager.d(TAG, "Wrote %s Bluetooth addresses", Integer.valueOf(this.distinctBluetoothAddresses.size()));
        } catch (Throwable th3) {
            th = th3;
            if (outputStreamWriter != null) {
                try {
                    outputStreamWriter.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        LogManager.d(TAG, "Wrote %s Bluetooth addresses", Integer.valueOf(this.distinctBluetoothAddresses.size()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x006f, code lost:
        if (r2 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0071, code lost:
        r2.close();
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007e, code lost:
        if (r2 == null) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadState() {
        /*
            r6 = this;
            java.lang.String r0 = "BluetoothCrashResolver"
            java.lang.String r1 = "BluetoothCrashResolverState.txt"
            r2 = 0
            android.content.Context r3 = r6.context     // Catch: java.lang.Throwable -> L64 java.lang.NumberFormatException -> L66 java.io.IOException -> L75
            java.io.FileInputStream r3 = r3.openFileInput(r1)     // Catch: java.lang.Throwable -> L64 java.lang.NumberFormatException -> L66 java.io.IOException -> L75
            java.io.BufferedReader r4 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L64 java.lang.NumberFormatException -> L66 java.io.IOException -> L75
            java.io.InputStreamReader r5 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L64 java.lang.NumberFormatException -> L66 java.io.IOException -> L75
            r5.<init>(r3)     // Catch: java.lang.Throwable -> L64 java.lang.NumberFormatException -> L66 java.io.IOException -> L75
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L64 java.lang.NumberFormatException -> L66 java.io.IOException -> L75
            java.lang.String r2 = r4.readLine()     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            if (r2 == 0) goto L21
            long r2 = java.lang.Long.parseLong(r2)     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            r6.lastBluetoothCrashDetectionTime = r2     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
        L21:
            java.lang.String r2 = r4.readLine()     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            if (r2 == 0) goto L2d
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            r6.detectedCrashCount = r2     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
        L2d:
            java.lang.String r2 = r4.readLine()     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            if (r2 == 0) goto L39
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            r6.recoveryAttemptCount = r2     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
        L39:
            java.lang.String r2 = r4.readLine()     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            if (r2 == 0) goto L4d
            r3 = 0
            r6.lastRecoverySucceeded = r3     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            java.lang.String r3 = "1"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            if (r2 == 0) goto L4d
            r2 = 1
            r6.lastRecoverySucceeded = r2     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
        L4d:
            java.lang.String r2 = r4.readLine()     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            if (r2 == 0) goto L59
            java.util.Set<java.lang.String> r3 = r6.distinctBluetoothAddresses     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            r3.add(r2)     // Catch: java.lang.Throwable -> L5d java.lang.NumberFormatException -> L60 java.io.IOException -> L62
            goto L4d
        L59:
            r4.close()     // Catch: java.io.IOException -> L81
            goto L81
        L5d:
            r0 = move-exception
            r2 = r4
            goto L95
        L60:
            r2 = r4
            goto L66
        L62:
            r2 = r4
            goto L75
        L64:
            r0 = move-exception
            goto L95
        L66:
            java.lang.String r3 = "Can't parse file %s"
            java.lang.Object[] r1 = new java.lang.Object[]{r1}     // Catch: java.lang.Throwable -> L64
            org.altbeacon.beacon.logging.LogManager.w(r0, r3, r1)     // Catch: java.lang.Throwable -> L64
            if (r2 == 0) goto L81
        L71:
            r2.close()     // Catch: java.io.IOException -> L81
            goto L81
        L75:
            java.lang.String r3 = "Can't read macs from %s"
            java.lang.Object[] r1 = new java.lang.Object[]{r1}     // Catch: java.lang.Throwable -> L64
            org.altbeacon.beacon.logging.LogManager.w(r0, r3, r1)     // Catch: java.lang.Throwable -> L64
            if (r2 == 0) goto L81
            goto L71
        L81:
            java.util.Set<java.lang.String> r1 = r6.distinctBluetoothAddresses
            int r1 = r1.size()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object[] r1 = new java.lang.Object[]{r1}
            java.lang.String r2 = "Read %s Bluetooth addresses"
            org.altbeacon.beacon.logging.LogManager.d(r0, r2, r1)
            return
        L95:
            if (r2 == 0) goto L9a
            r2.close()     // Catch: java.io.IOException -> L9a
        L9a:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.bluetooth.BluetoothCrashResolver.loadState():void");
    }

    private void cancelDiscovery() {
        try {
            Thread.sleep(5000L);
            if (!this.discoveryStartConfirmed) {
                LogManager.w(TAG, "BluetoothAdapter.ACTION_DISCOVERY_STARTED never received.  Recovery may fail.", new Object[0]);
            }
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter.isDiscovering()) {
                LogManager.d(TAG, "Cancelling discovery", new Object[0]);
                defaultAdapter.cancelDiscovery();
                return;
            }
            LogManager.d(TAG, "Discovery not running.  Won't cancel it", new Object[0]);
        } catch (InterruptedException unused) {
            LogManager.d(TAG, "DiscoveryCanceller sleep interrupted.", new Object[0]);
        }
    }
}
