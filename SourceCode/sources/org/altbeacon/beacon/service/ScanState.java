package org.altbeacon.beacon.service;

import android.content.Context;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.altbeacon.beacon.BeaconManager;
import org.altbeacon.beacon.BeaconParser;
import org.altbeacon.beacon.Region;
import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class ScanState implements Serializable {
    public static int MIN_SCAN_JOB_INTERVAL_MILLIS = 300000;
    private static final String STATUS_PRESERVATION_FILE_NAME = "android-beacon-library-scan-state";
    private static final String TAG = "ScanState";
    private static final String TEMP_STATUS_PRESERVATION_FILE_NAME = "android-beacon-library-scan-state-temp";
    private long mBackgroundBetweenScanPeriod;
    private boolean mBackgroundMode;
    private long mBackgroundScanPeriod;
    private transient Context mContext;
    private long mForegroundBetweenScanPeriod;
    private long mForegroundScanPeriod;
    private transient MonitoringStatus mMonitoringStatus;
    private Map<Region, RangeState> mRangedRegionState = new HashMap();
    private Set<BeaconParser> mBeaconParsers = new HashSet();
    private ExtraDataBeaconTracker mExtraBeaconDataTracker = new ExtraDataBeaconTracker();
    private long mLastScanStartTimeMillis = 0;

    public Boolean getBackgroundMode() {
        return Boolean.valueOf(this.mBackgroundMode);
    }

    public void setBackgroundMode(Boolean bool) {
        this.mBackgroundMode = bool.booleanValue();
    }

    public Long getBackgroundBetweenScanPeriod() {
        return Long.valueOf(this.mBackgroundBetweenScanPeriod);
    }

    public void setBackgroundBetweenScanPeriod(Long l) {
        this.mBackgroundBetweenScanPeriod = l.longValue();
    }

    public Long getBackgroundScanPeriod() {
        return Long.valueOf(this.mBackgroundScanPeriod);
    }

    public void setBackgroundScanPeriod(Long l) {
        this.mBackgroundScanPeriod = l.longValue();
    }

    public Long getForegroundBetweenScanPeriod() {
        return Long.valueOf(this.mForegroundBetweenScanPeriod);
    }

    public void setForegroundBetweenScanPeriod(Long l) {
        this.mForegroundBetweenScanPeriod = l.longValue();
    }

    public Long getForegroundScanPeriod() {
        return Long.valueOf(this.mForegroundScanPeriod);
    }

    public void setForegroundScanPeriod(Long l) {
        this.mForegroundScanPeriod = l.longValue();
    }

    public ScanState(Context context) {
        this.mContext = context;
    }

    public MonitoringStatus getMonitoringStatus() {
        return this.mMonitoringStatus;
    }

    public void setMonitoringStatus(MonitoringStatus monitoringStatus) {
        this.mMonitoringStatus = monitoringStatus;
    }

    public Map<Region, RangeState> getRangedRegionState() {
        return this.mRangedRegionState;
    }

    public void setRangedRegionState(Map<Region, RangeState> map) {
        this.mRangedRegionState = map;
    }

    public ExtraDataBeaconTracker getExtraBeaconDataTracker() {
        return this.mExtraBeaconDataTracker;
    }

    public void setExtraBeaconDataTracker(ExtraDataBeaconTracker extraDataBeaconTracker) {
        this.mExtraBeaconDataTracker = extraDataBeaconTracker;
    }

    public Set<BeaconParser> getBeaconParsers() {
        return this.mBeaconParsers;
    }

    public void setBeaconParsers(Set<BeaconParser> set) {
        this.mBeaconParsers = set;
    }

    public long getLastScanStartTimeMillis() {
        return this.mLastScanStartTimeMillis;
    }

    public void setLastScanStartTimeMillis(long j) {
        this.mLastScanStartTimeMillis = j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0073, code lost:
        if (r5 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0089, code lost:
        if (r5 == null) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0056 A[Catch: all -> 0x0076, TryCatch #8 {all -> 0x0076, blocks: (B:7:0x0012, B:8:0x0018, B:44:0x0052, B:46:0x0056, B:47:0x0060), top: B:91:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0060 A[Catch: all -> 0x0076, TRY_LEAVE, TryCatch #8 {all -> 0x0076, blocks: (B:7:0x0012, B:8:0x0018, B:44:0x0052, B:46:0x0056, B:47:0x0060), top: B:91:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00e7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00df A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.altbeacon.beacon.service.ScanState restore(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.service.ScanState.restore(android.content.Context):org.altbeacon.beacon.service.ScanState");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a9, code lost:
        if (r5 == null) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void save() {
        /*
            r10 = this;
            java.lang.String r0 = "Perm file is "
            java.lang.String r1 = "Temp file is "
            java.lang.Class<org.altbeacon.beacon.service.ScanState> r2 = org.altbeacon.beacon.service.ScanState.class
            monitor-enter(r2)
            r3 = 0
            android.content.Context r4 = r10.mContext     // Catch: java.lang.Throwable -> L90 java.io.IOException -> L93
            java.lang.String r5 = "android-beacon-library-scan-state-temp"
            r6 = 0
            java.io.FileOutputStream r4 = r4.openFileOutput(r5, r6)     // Catch: java.lang.Throwable -> L90 java.io.IOException -> L93
            java.io.ObjectOutputStream r5 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L88 java.io.IOException -> L8c
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L88 java.io.IOException -> L8c
            r5.writeObject(r10)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            android.content.Context r7 = r10.mContext     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.io.File r7 = r7.getFilesDir()     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.String r8 = "android-beacon-library-scan-state"
            r3.<init>(r7, r8)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.io.File r7 = new java.io.File     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            android.content.Context r8 = r10.mContext     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.io.File r8 = r8.getFilesDir()     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.String r9 = "android-beacon-library-scan-state-temp"
            r7.<init>(r8, r9)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.String r8 = org.altbeacon.beacon.service.ScanState.TAG     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            r9.<init>(r1)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.String r1 = r7.getAbsolutePath()     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.StringBuilder r1 = r9.append(r1)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.Object[] r9 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            org.altbeacon.beacon.logging.LogManager.d(r8, r1, r9)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.String r0 = r3.getAbsolutePath()     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.StringBuilder r0 = r1.append(r0)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            java.lang.Object[] r1 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            org.altbeacon.beacon.logging.LogManager.d(r8, r0, r1)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            boolean r0 = r3.delete()     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            if (r0 != 0) goto L6e
            java.lang.String r0 = "Error while saving scan status to file: Cannot delete existing file."
            java.lang.Object[] r1 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            org.altbeacon.beacon.logging.LogManager.e(r8, r0, r1)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
        L6e:
            boolean r0 = r7.renameTo(r3)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            if (r0 != 0) goto L7b
            java.lang.String r0 = "Error while saving scan status to file: Cannot rename temp file."
            java.lang.Object[] r1 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
            org.altbeacon.beacon.logging.LogManager.e(r8, r0, r1)     // Catch: java.lang.Throwable -> L84 java.io.IOException -> L86
        L7b:
            if (r4 == 0) goto L80
            r4.close()     // Catch: java.io.IOException -> L80 java.lang.Throwable -> Lba
        L80:
            r5.close()     // Catch: java.io.IOException -> Lac java.lang.Throwable -> Lba
            goto Lac
        L84:
            r0 = move-exception
            goto L8a
        L86:
            r0 = move-exception
            goto L8e
        L88:
            r0 = move-exception
            r5 = r3
        L8a:
            r3 = r4
            goto Lb4
        L8c:
            r0 = move-exception
            r5 = r3
        L8e:
            r3 = r4
            goto L95
        L90:
            r0 = move-exception
            r5 = r3
            goto Lb4
        L93:
            r0 = move-exception
            r5 = r3
        L95:
            java.lang.String r1 = org.altbeacon.beacon.service.ScanState.TAG     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r4 = "Error while saving scan status to file: "
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object[] r0 = new java.lang.Object[]{r0}     // Catch: java.lang.Throwable -> Lb3
            org.altbeacon.beacon.logging.LogManager.e(r1, r4, r0)     // Catch: java.lang.Throwable -> Lb3
            if (r3 == 0) goto La9
            r3.close()     // Catch: java.io.IOException -> La9 java.lang.Throwable -> Lba
        La9:
            if (r5 == 0) goto Lac
            goto L80
        Lac:
            org.altbeacon.beacon.service.MonitoringStatus r0 = r10.mMonitoringStatus     // Catch: java.lang.Throwable -> Lba
            r0.saveMonitoringStatusIfOn()     // Catch: java.lang.Throwable -> Lba
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lba
            return
        Lb3:
            r0 = move-exception
        Lb4:
            if (r3 == 0) goto Lbc
            r3.close()     // Catch: java.lang.Throwable -> Lba java.io.IOException -> Lbc
            goto Lbc
        Lba:
            r0 = move-exception
            goto Lc2
        Lbc:
            if (r5 == 0) goto Lc1
            r5.close()     // Catch: java.lang.Throwable -> Lba java.io.IOException -> Lc1
        Lc1:
            throw r0     // Catch: java.lang.Throwable -> Lba
        Lc2:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lba
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.service.ScanState.save():void");
    }

    public int getScanJobIntervalMillis() {
        long longValue;
        long longValue2;
        if (getBackgroundMode().booleanValue()) {
            longValue = getBackgroundScanPeriod().longValue();
            longValue2 = getBackgroundBetweenScanPeriod().longValue();
        } else {
            longValue = getForegroundScanPeriod().longValue();
            longValue2 = getForegroundBetweenScanPeriod().longValue();
        }
        long j = longValue + longValue2;
        int i = MIN_SCAN_JOB_INTERVAL_MILLIS;
        return j > ((long) i) ? (int) j : i;
    }

    public int getScanJobRuntimeMillis() {
        long longValue;
        LogManager.d(TAG, "ScanState says background mode for ScanJob is " + getBackgroundMode(), new Object[0]);
        if (getBackgroundMode().booleanValue()) {
            longValue = getBackgroundScanPeriod().longValue();
        } else {
            longValue = getForegroundScanPeriod().longValue();
        }
        if (!getBackgroundMode().booleanValue()) {
            int i = MIN_SCAN_JOB_INTERVAL_MILLIS;
            if (longValue < i) {
                return i;
            }
        }
        return (int) longValue;
    }

    public void applyChanges(BeaconManager beaconManager) {
        this.mBeaconParsers = new HashSet(beaconManager.getBeaconParsers());
        this.mForegroundScanPeriod = beaconManager.getForegroundScanPeriod();
        this.mForegroundBetweenScanPeriod = beaconManager.getForegroundBetweenScanPeriod();
        this.mBackgroundScanPeriod = beaconManager.getBackgroundScanPeriod();
        this.mBackgroundBetweenScanPeriod = beaconManager.getBackgroundBetweenScanPeriod();
        this.mBackgroundMode = beaconManager.getBackgroundMode();
        ArrayList arrayList = new ArrayList(this.mMonitoringStatus.regions());
        ArrayList arrayList2 = new ArrayList(this.mRangedRegionState.keySet());
        ArrayList arrayList3 = new ArrayList(beaconManager.getMonitoredRegions());
        ArrayList arrayList4 = new ArrayList(beaconManager.getRangedRegions());
        String str = TAG;
        LogManager.d(str, "ranged regions: old=" + arrayList2.size() + " new=" + arrayList4.size(), new Object[0]);
        LogManager.d(str, "monitored regions: old=" + arrayList.size() + " new=" + arrayList3.size(), new Object[0]);
        Iterator it = arrayList4.iterator();
        while (it.hasNext()) {
            Region region = (Region) it.next();
            if (!arrayList2.contains(region)) {
                LogManager.d(TAG, "Starting ranging region: " + region, new Object[0]);
                this.mRangedRegionState.put(region, new RangeState(new Callback(this.mContext.getPackageName())));
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Region region2 = (Region) it2.next();
            if (!arrayList4.contains(region2)) {
                LogManager.d(TAG, "Stopping ranging region: " + region2, new Object[0]);
                this.mRangedRegionState.remove(region2);
            }
        }
        LogManager.d(TAG, "Updated state with " + arrayList4.size() + " ranging regions and " + arrayList3.size() + " monitoring regions.", new Object[0]);
        save();
    }
}
