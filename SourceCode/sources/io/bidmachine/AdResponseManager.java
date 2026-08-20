package io.bidmachine;

import io.bidmachine.core.Logger;
import io.bidmachine.protobuf.AdCachePlacementControl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class AdResponseManager {
    static final int DEF_BUSY_LIMIT = 2;
    static final int DEF_MAX_CACHE_SIZE = 8;
    private static final String TAG = "AdResponseManager";
    private static final Map<String, AdCachePlacementControl> adCachePlacementControlMap = new ConcurrentHashMap();
    private static volatile AdResponseManager instance;
    private final Object lock = new Object();
    private final List<AdResponse> adResponseList = new ArrayList();

    AdResponseManager() {
    }

    public static AdResponseManager get() {
        AdResponseManager adResponseManager = instance;
        if (adResponseManager == null) {
            synchronized (AdResponseManager.class) {
                adResponseManager = instance;
                if (adResponseManager == null) {
                    adResponseManager = new AdResponseManager();
                    instance = adResponseManager;
                }
            }
        }
        return adResponseManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean contains(AdResponse adResponse) {
        boolean contains;
        synchronized (this.lock) {
            contains = this.adResponseList.contains(adResponse);
        }
        return contains;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a0 A[Catch: all -> 0x00b3, TryCatch #0 {, blocks: (B:7:0x0019, B:8:0x0028, B:10:0x002e, B:13:0x003f, B:16:0x004b, B:19:0x0059, B:21:0x0061, B:24:0x0067, B:27:0x0071, B:29:0x0077, B:31:0x007e, B:35:0x008c, B:38:0x0094, B:40:0x00a0, B:41:0x00aa, B:43:0x00ac, B:44:0x00b1), top: B:49:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00aa A[Catch: all -> 0x00b3, DONT_GENERATE, TryCatch #0 {, blocks: (B:7:0x0019, B:8:0x0028, B:10:0x002e, B:13:0x003f, B:16:0x004b, B:19:0x0059, B:21:0x0061, B:24:0x0067, B:27:0x0071, B:29:0x0077, B:31:0x007e, B:35:0x008c, B:38:0x0094, B:40:0x00a0, B:41:0x00aa, B:43:0x00ac, B:44:0x00b1), top: B:49:0x0019 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void store(io.bidmachine.AdResponse r13) {
        /*
            r12 = this;
            boolean r0 = r13.canCache()
            if (r0 != 0) goto L7
            return
        L7:
            java.lang.String r0 = "AdResponseManager"
            java.lang.String r1 = "store - %s"
            java.lang.Object[] r2 = new java.lang.Object[]{r13}
            java.lang.String r1 = java.lang.String.format(r1, r2)
            io.bidmachine.core.Logger.log(r0, r1)
            java.lang.Object r0 = r12.lock
            monitor-enter(r0)
            io.bidmachine.AdRequestParameters r1 = r13.getAdRequestParameters()     // Catch: java.lang.Throwable -> Lb3
            java.util.List<io.bidmachine.AdResponse> r2 = r12.adResponseList     // Catch: java.lang.Throwable -> Lb3
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> Lb3
            r3 = 0
            r4 = 0
            r5 = r4
            r6 = r5
            r4 = r3
        L28:
            boolean r7 = r2.hasNext()     // Catch: java.lang.Throwable -> Lb3
            if (r7 == 0) goto L67
            java.lang.Object r7 = r2.next()     // Catch: java.lang.Throwable -> Lb3
            io.bidmachine.AdResponse r7 = (io.bidmachine.AdResponse) r7     // Catch: java.lang.Throwable -> Lb3
            io.bidmachine.AdRequestParameters r8 = r7.getAdRequestParameters()     // Catch: java.lang.Throwable -> Lb3
            boolean r8 = r1.isParametersMatched(r8)     // Catch: java.lang.Throwable -> Lb3
            if (r8 != 0) goto L3f
            goto L28
        L3f:
            int r6 = r6 + 1
            io.bidmachine.AdResponseStatus r8 = r7.getStatus()     // Catch: java.lang.Throwable -> Lb3
            io.bidmachine.AdResponseStatus r9 = io.bidmachine.AdResponseStatus.Idle     // Catch: java.lang.Throwable -> Lb3
            if (r8 != r9) goto L59
            if (r4 == 0) goto L57
            double r8 = r4.getPrice()     // Catch: java.lang.Throwable -> Lb3
            double r10 = r7.getPrice()     // Catch: java.lang.Throwable -> Lb3
            int r8 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r8 <= 0) goto L28
        L57:
            r4 = r7
            goto L28
        L59:
            io.bidmachine.AdResponseStatus r8 = r7.getStatus()     // Catch: java.lang.Throwable -> Lb3
            io.bidmachine.AdResponseStatus r9 = io.bidmachine.AdResponseStatus.Busy     // Catch: java.lang.Throwable -> Lb3
            if (r8 != r9) goto L28
            int r5 = r5 + 1
            if (r3 != 0) goto L28
            r3 = r7
            goto L28
        L67:
            io.bidmachine.AdResponseStatus r2 = r13.getStatus()     // Catch: java.lang.Throwable -> Lb3
            io.bidmachine.AdResponseStatus r7 = io.bidmachine.AdResponseStatus.Busy     // Catch: java.lang.Throwable -> Lb3
            if (r2 != r7) goto L8b
            if (r3 == 0) goto L8b
            int r2 = r12.getBusyLimitForAdsType(r1)     // Catch: java.lang.Throwable -> Lb3
            if (r5 < r2) goto L8b
            io.bidmachine.AdResponseStatus r2 = io.bidmachine.AdResponseStatus.Idle     // Catch: java.lang.Throwable -> Lb3
            r3.setStatus(r2)     // Catch: java.lang.Throwable -> Lb3
            if (r4 == 0) goto L8c
            double r7 = r4.getPrice()     // Catch: java.lang.Throwable -> Lb3
            double r9 = r3.getPrice()     // Catch: java.lang.Throwable -> Lb3
            int r2 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r2 <= 0) goto L8b
            goto L8c
        L8b:
            r3 = r4
        L8c:
            int r1 = r12.getMaxCacheSizeForAdsType(r1)     // Catch: java.lang.Throwable -> Lb3
            if (r6 < r1) goto Lac
            if (r3 == 0) goto Lac
            double r1 = r13.getPrice()     // Catch: java.lang.Throwable -> Lb3
            double r4 = r3.getPrice()     // Catch: java.lang.Throwable -> Lb3
            int r1 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r1 < 0) goto Laa
            r1 = 1
            r3.notifyExpired(r1)     // Catch: java.lang.Throwable -> Lb3
            java.util.List<io.bidmachine.AdResponse> r1 = r12.adResponseList     // Catch: java.lang.Throwable -> Lb3
            r1.remove(r3)     // Catch: java.lang.Throwable -> Lb3
            goto Lac
        Laa:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb3
            return
        Lac:
            java.util.List<io.bidmachine.AdResponse> r1 = r12.adResponseList     // Catch: java.lang.Throwable -> Lb3
            r1.add(r13)     // Catch: java.lang.Throwable -> Lb3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb3
            return
        Lb3:
            r13 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb3
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.AdResponseManager.store(io.bidmachine.AdResponse):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdResponse receive(AdRequestParameters adRequestParameters) {
        synchronized (this.lock) {
            int busyLimitForAdsType = getBusyLimitForAdsType(adRequestParameters);
            int i = 0;
            AdResponse adResponse = null;
            AdResponse adResponse2 = null;
            for (AdResponse adResponse3 : this.adResponseList) {
                if (!adResponse3.wasShown() && adRequestParameters.isParametersMatched(adResponse3.getAdRequestParameters())) {
                    if (adResponse3.getStatus() == AdResponseStatus.Idle) {
                        if (adResponse == null || adResponse3.getPrice() > adResponse.getPrice()) {
                            adResponse = adResponse3;
                        }
                    } else if (adResponse3.getStatus() == AdResponseStatus.Busy) {
                        i++;
                        if (adResponse2 == null) {
                            adResponse2 = adResponse3;
                        }
                        if (i >= busyLimitForAdsType) {
                            adResponse2.expireAdRequests(null);
                            adResponse2.clearAdRequestList();
                            adResponse2.setStatus(AdResponseStatus.Idle);
                            if (adResponse == null || adResponse2.getPrice() >= adResponse.getPrice()) {
                                adResponse = adResponse2;
                            }
                        }
                    }
                }
            }
            if (adResponse == null || !adRequestParameters.isPricePassedByPriceFloor(adResponse.getPrice())) {
                return null;
            }
            adResponse.setStatus(AdResponseStatus.Busy);
            Logger.log(TAG, String.format("receive - %s", adResponse));
            this.adResponseList.remove(adResponse);
            this.adResponseList.add(adResponse);
            return adResponse;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<AdResponse> peek(AdRequestParameters adRequestParameters) {
        synchronized (this.lock) {
            ArrayList arrayList = new ArrayList();
            for (AdResponse adResponse : this.adResponseList) {
                if (adResponse.getStatus() == AdResponseStatus.Idle && adRequestParameters.isParametersMatched(adResponse.getAdRequestParameters())) {
                    arrayList.add(adResponse);
                }
            }
            if (arrayList.isEmpty()) {
                return arrayList;
            }
            Collections.sort(arrayList, new Comparator<AdResponse>() { // from class: io.bidmachine.AdResponseManager.1
                @Override // java.util.Comparator
                public int compare(AdResponse adResponse2, AdResponse adResponse3) {
                    return -Double.compare(adResponse2.getPrice(), adResponse3.getPrice());
                }
            });
            return arrayList.subList(0, Math.min(getBusyLimitForAdsType(adRequestParameters), arrayList.size()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void remove(AdResponse adResponse) {
        Logger.log(TAG, String.format("remove - %s", adResponse));
        synchronized (this.lock) {
            this.adResponseList.remove(adResponse);
        }
    }

    int getMaxCacheSizeForAdsType(AdRequestParameters adRequestParameters) {
        AdCachePlacementControl adCachePlacementControl = getAdCachePlacementControl(adRequestParameters);
        int maxCacheSize = adCachePlacementControl != null ? adCachePlacementControl.getMaxCacheSize() : 0;
        if (maxCacheSize > 0) {
            return maxCacheSize;
        }
        return 8;
    }

    int getBusyLimitForAdsType(AdRequestParameters adRequestParameters) {
        AdCachePlacementControl adCachePlacementControl = getAdCachePlacementControl(adRequestParameters);
        int maxRetainCount = adCachePlacementControl != null ? adCachePlacementControl.getMaxRetainCount() : 0;
        if (maxRetainCount > 0) {
            return maxRetainCount;
        }
        return 2;
    }

    private AdCachePlacementControl getAdCachePlacementControl(AdRequestParameters adRequestParameters) {
        return adCachePlacementControlMap.get(adRequestParameters.getAdsType().getName());
    }

    int size() {
        return this.adResponseList.size();
    }

    void clear() {
        synchronized (this.lock) {
            this.adResponseList.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setAdCachePlacementControlMap(Map<String, AdCachePlacementControl> map) {
        Map<String, AdCachePlacementControl> map2 = adCachePlacementControlMap;
        map2.clear();
        if (map != null) {
            map2.putAll(map);
        }
    }
}
