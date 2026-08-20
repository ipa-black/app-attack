package org.altbeacon.beacon.service;

import android.content.Context;
import androidx.work.PeriodicWorkRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.altbeacon.beacon.Beacon;
import org.altbeacon.beacon.Region;
import org.altbeacon.beacon.logging.LogManager;
/* loaded from: classes5.dex */
public class MonitoringStatus {
    private static final int MAX_REGIONS_FOR_STATUS_PRESERVATION = 50;
    private static final int MAX_STATUS_PRESERVATION_FILE_AGE_TO_RESTORE_SECS = 900;
    private static final Object SINGLETON_LOCK = new Object();
    public static final String STATUS_PRESERVATION_FILE_NAME = "org.altbeacon.beacon.service.monitoring_status_state";
    private static final String TAG = "MonitoringStatus";
    private static volatile MonitoringStatus sInstance;
    private Context mContext;
    private Map<Region, RegionMonitoringState> mRegionsStatesMap;
    private boolean mStatePreservationIsOn = true;

    public static MonitoringStatus getInstanceForApplication(Context context) {
        MonitoringStatus monitoringStatus = sInstance;
        if (monitoringStatus == null) {
            synchronized (SINGLETON_LOCK) {
                monitoringStatus = sInstance;
                if (monitoringStatus == null) {
                    monitoringStatus = new MonitoringStatus(context.getApplicationContext());
                    sInstance = monitoringStatus;
                }
            }
        }
        return monitoringStatus;
    }

    public MonitoringStatus(Context context) {
        this.mContext = context;
    }

    public synchronized void addRegion(Region region, Callback callback) {
        addLocalRegion(region, callback);
        saveMonitoringStatusIfOn();
    }

    public synchronized void removeRegion(Region region) {
        removeLocalRegion(region);
        saveMonitoringStatusIfOn();
    }

    public synchronized Set<Region> regions() {
        return getRegionsStateMap().keySet();
    }

    public synchronized int regionsCount() {
        return regions().size();
    }

    public synchronized RegionMonitoringState stateOf(Region region) {
        return getRegionsStateMap().get(region);
    }

    public synchronized void updateNewlyOutside() {
        boolean z = false;
        for (Region region : regions()) {
            RegionMonitoringState stateOf = stateOf(region);
            if (stateOf.markOutsideIfExpired()) {
                LogManager.d(TAG, "found a monitor that expired: %s", region);
                stateOf.getCallback().call(this.mContext, "monitoringData", new MonitoringData(stateOf.getInside(), region).toBundle());
                z = true;
            }
        }
        if (z) {
            saveMonitoringStatusIfOn();
        } else {
            updateMonitoringStatusTime(System.currentTimeMillis());
        }
    }

    public synchronized void updateNewlyInsideInRegionsContaining(Beacon beacon) {
        boolean z = false;
        for (Region region : regionsMatchingTo(beacon)) {
            RegionMonitoringState regionMonitoringState = getRegionsStateMap().get(region);
            if (regionMonitoringState != null && regionMonitoringState.markInside()) {
                regionMonitoringState.getCallback().call(this.mContext, "monitoringData", new MonitoringData(regionMonitoringState.getInside(), region).toBundle());
                z = true;
            }
        }
        if (z) {
            saveMonitoringStatusIfOn();
        } else {
            updateMonitoringStatusTime(System.currentTimeMillis());
        }
    }

    private Map<Region, RegionMonitoringState> getRegionsStateMap() {
        if (this.mRegionsStatesMap == null) {
            restoreOrInitializeMonitoringStatus();
        }
        return this.mRegionsStatesMap;
    }

    private void restoreOrInitializeMonitoringStatus() {
        long currentTimeMillis = System.currentTimeMillis() - getLastMonitoringStatusUpdateTime();
        this.mRegionsStatesMap = new ConcurrentHashMap();
        if (!this.mStatePreservationIsOn) {
            LogManager.d(TAG, "Not restoring monitoring state because persistence is disabled", new Object[0]);
        } else if (currentTimeMillis > PeriodicWorkRequest.MIN_PERIODIC_INTERVAL_MILLIS) {
            LogManager.d(TAG, "Not restoring monitoring state because it was recorded too many milliseconds ago: " + currentTimeMillis, new Object[0]);
        } else {
            restoreMonitoringStatus();
            LogManager.d(TAG, "Done restoring monitoring status", new Object[0]);
        }
    }

    private List<Region> regionsMatchingTo(Beacon beacon) {
        ArrayList arrayList = new ArrayList();
        for (Region region : regions()) {
            if (region.matchesBeacon(beacon)) {
                arrayList.add(region);
            } else {
                LogManager.d(TAG, "This region (%s) does not match beacon: %s", region, beacon);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:54:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0099 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void saveMonitoringStatusIfOn() {
        /*
            r8 = this;
            boolean r0 = r8.mStatePreservationIsOn
            if (r0 != 0) goto L5
            return
        L5:
            java.lang.String r0 = org.altbeacon.beacon.service.MonitoringStatus.TAG
            java.lang.String r1 = "saveMonitoringStatusIfOn()"
            r2 = 0
            java.lang.Object[] r3 = new java.lang.Object[r2]
            org.altbeacon.beacon.logging.LogManager.d(r0, r1, r3)
            java.util.Map r1 = r8.getRegionsStateMap()
            int r1 = r1.size()
            r3 = 50
            java.lang.String r4 = "org.altbeacon.beacon.service.monitoring_status_state"
            if (r1 <= r3) goto L2b
            java.lang.String r1 = "Too many regions being monitored.  Will not persist region state"
            java.lang.Object[] r2 = new java.lang.Object[r2]
            org.altbeacon.beacon.logging.LogManager.w(r0, r1, r2)
            android.content.Context r0 = r8.mContext
            r0.deleteFile(r4)
            goto L95
        L2b:
            r0 = 0
            android.content.Context r1 = r8.mContext     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L79
            java.io.FileOutputStream r1 = r1.openFileOutput(r4, r2)     // Catch: java.lang.Throwable -> L74 java.io.IOException -> L79
            java.io.ObjectOutputStream r2 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6f
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L6a java.io.IOException -> L6f
            java.util.Map r0 = r8.getRegionsStateMap()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            java.util.HashMap r3 = new java.util.HashMap     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            r3.<init>()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            java.util.Set r4 = r0.keySet()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            java.util.Iterator r4 = r4.iterator()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
        L48:
            boolean r5 = r4.hasNext()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            if (r5 == 0) goto L5c
            java.lang.Object r5 = r4.next()     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            org.altbeacon.beacon.Region r5 = (org.altbeacon.beacon.Region) r5     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            java.lang.Object r6 = r0.get(r5)     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            r3.put(r5, r6)     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            goto L48
        L5c:
            r2.writeObject(r3)     // Catch: java.io.IOException -> L68 java.lang.Throwable -> L96
            if (r1 == 0) goto L64
            r1.close()     // Catch: java.io.IOException -> L64
        L64:
            r2.close()     // Catch: java.io.IOException -> L95
            goto L95
        L68:
            r0 = move-exception
            goto L7d
        L6a:
            r2 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
            goto L97
        L6f:
            r2 = move-exception
            r7 = r2
            r2 = r0
            r0 = r7
            goto L7d
        L74:
            r1 = move-exception
            r2 = r0
            r0 = r1
            r1 = r2
            goto L97
        L79:
            r1 = move-exception
            r2 = r0
            r0 = r1
            r1 = r2
        L7d:
            java.lang.String r3 = org.altbeacon.beacon.service.MonitoringStatus.TAG     // Catch: java.lang.Throwable -> L96
            java.lang.String r4 = "Error while saving monitored region states to file "
            java.lang.Object[] r5 = new java.lang.Object[]{r0}     // Catch: java.lang.Throwable -> L96
            org.altbeacon.beacon.logging.LogManager.e(r3, r4, r5)     // Catch: java.lang.Throwable -> L96
            java.io.PrintStream r3 = java.lang.System.err     // Catch: java.lang.Throwable -> L96
            r0.printStackTrace(r3)     // Catch: java.lang.Throwable -> L96
            if (r1 == 0) goto L92
            r1.close()     // Catch: java.io.IOException -> L92
        L92:
            if (r2 == 0) goto L95
            goto L64
        L95:
            return
        L96:
            r0 = move-exception
        L97:
            if (r1 == 0) goto L9c
            r1.close()     // Catch: java.io.IOException -> L9c
        L9c:
            if (r2 == 0) goto La1
            r2.close()     // Catch: java.io.IOException -> La1
        La1:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.service.MonitoringStatus.saveMonitoringStatusIfOn():void");
    }

    protected void updateMonitoringStatusTime(long j) {
        this.mContext.getFileStreamPath(STATUS_PRESERVATION_FILE_NAME).setLastModified(j);
    }

    protected long getLastMonitoringStatusUpdateTime() {
        return this.mContext.getFileStreamPath(STATUS_PRESERVATION_FILE_NAME).lastModified();
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00cd A[Catch: all -> 0x00ef, TryCatch #11 {all -> 0x00ef, blocks: (B:46:0x00c9, B:48:0x00cd, B:49:0x00d7), top: B:74:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d7 A[Catch: all -> 0x00ef, TRY_LEAVE, TryCatch #11 {all -> 0x00ef, blocks: (B:46:0x00c9, B:48:0x00cd, B:49:0x00d7), top: B:74:0x00c9 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ee A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void restoreMonitoringStatus() {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.service.MonitoringStatus.restoreMonitoringStatus():void");
    }

    public synchronized void stopStatusPreservation() {
        this.mContext.deleteFile(STATUS_PRESERVATION_FILE_NAME);
        this.mStatePreservationIsOn = false;
    }

    public synchronized void startStatusPreservation() {
        if (!this.mStatePreservationIsOn) {
            this.mStatePreservationIsOn = true;
            saveMonitoringStatusIfOn();
        }
    }

    public boolean isStatePreservationOn() {
        return this.mStatePreservationIsOn;
    }

    public synchronized void clear() {
        this.mContext.deleteFile(STATUS_PRESERVATION_FILE_NAME);
        getRegionsStateMap().clear();
    }

    public void updateLocalState(Region region, Integer num) {
        RegionMonitoringState regionMonitoringState = getRegionsStateMap().get(region);
        if (regionMonitoringState == null) {
            regionMonitoringState = addLocalRegion(region);
        }
        if (num != null) {
            if (num.intValue() == 0) {
                regionMonitoringState.markOutside();
            }
            if (num.intValue() == 1) {
                regionMonitoringState.markInside();
            }
        }
    }

    public void removeLocalRegion(Region region) {
        getRegionsStateMap().remove(region);
    }

    public RegionMonitoringState addLocalRegion(Region region) {
        return addLocalRegion(region, new Callback(null));
    }

    private RegionMonitoringState addLocalRegion(Region region, Callback callback) {
        if (getRegionsStateMap().containsKey(region)) {
            Iterator<Region> it = getRegionsStateMap().keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Region next = it.next();
                if (next.equals(region)) {
                    if (next.hasSameIdentifiers(region)) {
                        return getRegionsStateMap().get(next);
                    }
                    String str = TAG;
                    LogManager.d(str, "Replacing region with unique identifier " + region.getUniqueId(), new Object[0]);
                    LogManager.d(str, "Old definition: " + next, new Object[0]);
                    LogManager.d(str, "New definition: " + region, new Object[0]);
                    LogManager.d(str, "clearing state", new Object[0]);
                    getRegionsStateMap().remove(region);
                }
            }
        }
        RegionMonitoringState regionMonitoringState = new RegionMonitoringState(callback);
        getRegionsStateMap().put(region, regionMonitoringState);
        return regionMonitoringState;
    }
}
