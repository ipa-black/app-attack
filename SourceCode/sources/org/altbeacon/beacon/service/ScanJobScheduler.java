package org.altbeacon.beacon.service;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.bluetooth.le.ScanResult;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
import org.altbeacon.beacon.BeaconLocalBroadcastProcessor;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class ScanJobScheduler {
    private static final long MIN_MILLIS_BETWEEN_SCAN_JOB_SCHEDULING = 10000;
    private static final Object SINGLETON_LOCK = new Object();
    private static final String TAG = "ScanJobScheduler";
    private static volatile ScanJobScheduler sInstance;
    private BeaconLocalBroadcastProcessor mBeaconNotificationProcessor;
    private Long mScanJobScheduleTime = 0L;
    private List<ScanResult> mBackgroundScanResultQueue = new ArrayList();

    public static ScanJobScheduler getInstance() {
        ScanJobScheduler scanJobScheduler = sInstance;
        if (scanJobScheduler == null) {
            synchronized (SINGLETON_LOCK) {
                scanJobScheduler = sInstance;
                if (scanJobScheduler == null) {
                    scanJobScheduler = new ScanJobScheduler();
                    sInstance = scanJobScheduler;
                }
            }
        }
        return scanJobScheduler;
    }

    private ScanJobScheduler() {
    }

    private void ensureNotificationProcessorSetup(Context context) {
        if (this.mBeaconNotificationProcessor == null) {
            BeaconLocalBroadcastProcessor beaconLocalBroadcastProcessor = new BeaconLocalBroadcastProcessor(context);
            this.mBeaconNotificationProcessor = beaconLocalBroadcastProcessor;
            beaconLocalBroadcastProcessor.register();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<ScanResult> dumpBackgroundScanResultQueue() {
        List<ScanResult> list = this.mBackgroundScanResultQueue;
        this.mBackgroundScanResultQueue = new ArrayList();
        return list;
    }

    private void applySettingsToScheduledJob(Context context, BeaconManager beaconManager, ScanState scanState) {
        scanState.applyChanges(beaconManager);
        LogManager.d(TAG, "Applying scan job settings with background mode " + scanState.getBackgroundMode(), new Object[0]);
        schedule(context, scanState, false);
    }

    public void applySettingsToScheduledJob(Context context, BeaconManager beaconManager) {
        LogManager.d(TAG, "Applying settings to ScanJob", new Object[0]);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        applySettingsToScheduledJob(context, beaconManager, ScanState.restore(context));
    }

    public void scheduleAfterBackgroundWakeup(Context context, List<ScanResult> list) {
        if (list != null) {
            this.mBackgroundScanResultQueue.addAll(list);
        }
        synchronized (this) {
            if (System.currentTimeMillis() - this.mScanJobScheduleTime.longValue() > 10000) {
                LogManager.d(TAG, "scheduling an immediate scan job because last did " + (System.currentTimeMillis() - this.mScanJobScheduleTime.longValue()) + "seconds ago.", new Object[0]);
                this.mScanJobScheduleTime = Long.valueOf(System.currentTimeMillis());
                schedule(context, ScanState.restore(context), true);
                return;
            }
            LogManager.d(TAG, "Not scheduling an immediate scan job because we just did recently.", new Object[0]);
        }
    }

    public void forceScheduleNextScan(Context context) {
        schedule(context, ScanState.restore(context), false);
    }

    private void schedule(Context context, ScanState scanState, boolean z) {
        long elapsedRealtime;
        ensureNotificationProcessorSetup(context);
        long scanJobIntervalMillis = scanState.getScanJobIntervalMillis() - scanState.getScanJobRuntimeMillis();
        if (z) {
            LogManager.d(TAG, "We just woke up in the background based on a new scan result.  Start scan job immediately.", new Object[0]);
            elapsedRealtime = 0;
        } else {
            elapsedRealtime = scanJobIntervalMillis > 0 ? SystemClock.elapsedRealtime() % scanState.getScanJobIntervalMillis() : 0L;
            if (elapsedRealtime < 50) {
                elapsedRealtime = 50;
            }
        }
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (z || !scanState.getBackgroundMode().booleanValue()) {
            if (elapsedRealtime < scanState.getScanJobIntervalMillis() - 50) {
                String str = TAG;
                LogManager.d(str, "Scheduling immediate ScanJob to run in " + elapsedRealtime + " millis", new Object[0]);
                int schedule = jobScheduler.schedule(new JobInfo.Builder(ScanJob.getImmediateScanJobId(context), new ComponentName(context, ScanJob.class)).setPersisted(true).setExtras(new PersistableBundle()).setMinimumLatency(elapsedRealtime).setOverrideDeadline(elapsedRealtime).build());
                if (schedule < 0) {
                    LogManager.e(str, "Failed to schedule scan job.  Beacons will not be detected. Error: " + schedule, new Object[0]);
                }
            } else {
                LogManager.d(TAG, "Not scheduling immediate scan, assuming periodic is about to run", new Object[0]);
            }
        } else {
            LogManager.d(TAG, "Not scheduling an immediate scan because we are in background mode.   Cancelling existing immediate scan.", new Object[0]);
            jobScheduler.cancel(ScanJob.getImmediateScanJobId(context));
        }
        JobInfo.Builder extras = new JobInfo.Builder(ScanJob.getPeriodicScanJobId(context), new ComponentName(context, ScanJob.class)).setPersisted(true).setExtras(new PersistableBundle());
        extras.setPeriodic(scanState.getScanJobIntervalMillis(), 0L).build();
        JobInfo build = extras.build();
        String str2 = TAG;
        LogManager.d(str2, "Scheduling ScanJob " + build + " to run every " + scanState.getScanJobIntervalMillis() + " millis", new Object[0]);
        int schedule2 = jobScheduler.schedule(build);
        if (schedule2 < 0) {
            LogManager.e(str2, "Failed to schedule scan job.  Beacons will not be detected. Error: " + schedule2, new Object[0]);
        }
    }
}
