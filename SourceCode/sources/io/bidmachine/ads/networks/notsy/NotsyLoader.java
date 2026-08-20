package io.bidmachine.ads.networks.notsy;

import android.content.Context;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdUnit;
import io.bidmachine.ads.networks.notsy.InternalNotsyAd;
import io.bidmachine.utils.BMError;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes5.dex */
class NotsyLoader {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final int DEFAULT_BOTTOM_BORDER_LOADED_AD = 2;
    private static final boolean DEFAULT_BREAK_AFTER_AD_LOADED = true;
    private static final int DEFAULT_REST_AD_LOAD_MS = 100;
    private static final int DEFAULT_REST_TASK_LOAD_MS = 5000;
    private static Context applicationContext;
    private static final ScheduledExecutorService loadAdUnitListExecutor;
    private static final Map<AdsFormat, LoadAdUnitListTask> loadTaskMap;
    static final List<InternalNotsyAd> notsyAdList;
    private static final Object notsyAdListLock;
    static final Map<NetworkAdUnit, InternalNotsyAd> reservedNotsyAdMap;

    NotsyLoader() {
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = availableProcessors;
        int max = Math.max(2, Math.min(availableProcessors - 1, 4));
        CORE_POOL_SIZE = max;
        loadAdUnitListExecutor = Executors.newScheduledThreadPool(max);
        loadTaskMap = new HashMap();
        notsyAdList = new ArrayList();
        reservedNotsyAdMap = Collections.synchronizedMap(new WeakHashMap());
        notsyAdListLock = new Object();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setup(Context context, Map<AdsFormat, List<InternalNotsyAdUnit>> map) {
        AdsFormat[] values;
        applicationContext = context;
        for (AdsFormat adsFormat : AdsFormat.values()) {
            List<InternalNotsyAdUnit> list = map.get(adsFormat);
            if (list != null && !list.isEmpty()) {
                Collections.sort(list, new Comparator() { // from class: io.bidmachine.ads.networks.notsy.NotsyLoader$$ExternalSyntheticLambda0
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return NotsyLoader.lambda$setup$0((InternalNotsyAdUnit) obj, (InternalNotsyAdUnit) obj2);
                    }
                });
                loadTaskMap.put(adsFormat, new LoadAdUnitListTask(list, 2, 100, 5000, true));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$setup$0(InternalNotsyAdUnit internalNotsyAdUnit, InternalNotsyAdUnit internalNotsyAdUnit2) {
        return -Float.compare(internalNotsyAdUnit.getInternalNotsyData().getScore(), internalNotsyAdUnit2.getInternalNotsyData().getScore());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void startLoading() {
        for (LoadAdUnitListTask loadAdUnitListTask : loadTaskMap.values()) {
            loadTask(loadAdUnitListTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean reserveNotsyAd(NetworkAdUnit networkAdUnit, InternalNotsyData internalNotsyData) {
        synchronized (notsyAdListLock) {
            InternalNotsyAd findIdleNotsyAd = findIdleNotsyAd(internalNotsyData);
            if (findIdleNotsyAd != null) {
                reservedNotsyAdMap.put(networkAdUnit, findIdleNotsyAd);
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void unReserveNotsyAd(NetworkAdUnit networkAdUnit) {
        reservedNotsyAdMap.remove(networkAdUnit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static InternalNotsyAd getNotsyAd(NetworkAdUnit networkAdUnit) {
        return reservedNotsyAdMap.get(networkAdUnit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onNotsyAdShown(InternalNotsyAd internalNotsyAd) {
        synchronized (notsyAdListLock) {
            removeFromCaches(internalNotsyAd);
            loadTask(internalNotsyAd.getAdsFormat());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void onNotsyAdDestroy(InternalNotsyAd internalNotsyAd, boolean z) {
        if (z) {
            try {
                internalNotsyAd.destroyAd();
            } catch (Throwable unused) {
            }
            removeFromCaches(internalNotsyAd);
            return;
        }
        unReserveNotsyAd(internalNotsyAd);
    }

    private static InternalNotsyAd findIdleNotsyAd(InternalNotsyData internalNotsyData) {
        synchronized (notsyAdListLock) {
            for (InternalNotsyAd internalNotsyAd : notsyAdList) {
                if (internalNotsyAd.getInternalNotsyData().equals(internalNotsyData) && !isReserved(internalNotsyAd)) {
                    return internalNotsyAd;
                }
            }
            return null;
        }
    }

    static boolean isReserved(InternalNotsyAd internalNotsyAd) {
        return reservedNotsyAdMap.containsValue(internalNotsyAd);
    }

    private static void loadTask(AdsFormat adsFormat) {
        LoadAdUnitListTask loadAdUnitListTask = loadTaskMap.get(adsFormat);
        if (loadAdUnitListTask == null) {
            return;
        }
        loadTask(loadAdUnitListTask);
    }

    private static void loadTask(LoadAdUnitListTask loadAdUnitListTask) {
        if (loadAdUnitListTask.isRunning()) {
            return;
        }
        loadAdUnitListExecutor.submit(loadAdUnitListTask);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void scheduleLoadTasks(LoadAdUnitListTask loadAdUnitListTask, int i) {
        if (loadAdUnitListTask.isRunning()) {
            return;
        }
        loadAdUnitListExecutor.schedule(loadAdUnitListTask, i, TimeUnit.MILLISECONDS);
    }

    static void storeNotsyAd(InternalNotsyAd internalNotsyAd) {
        synchronized (notsyAdListLock) {
            List<InternalNotsyAd> list = notsyAdList;
            if (list.contains(internalNotsyAd)) {
                return;
            }
            list.add(internalNotsyAd);
            Collections.sort(list, new Comparator() { // from class: io.bidmachine.ads.networks.notsy.NotsyLoader$$ExternalSyntheticLambda1
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return NotsyLoader.lambda$storeNotsyAd$1((InternalNotsyAd) obj, (InternalNotsyAd) obj2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$storeNotsyAd$1(InternalNotsyAd internalNotsyAd, InternalNotsyAd internalNotsyAd2) {
        return -Float.compare(internalNotsyAd.getScope(), internalNotsyAd2.getScope());
    }

    private static void removeFromCaches(InternalNotsyAd internalNotsyAd) {
        synchronized (notsyAdListLock) {
            notsyAdList.remove(internalNotsyAd);
            unReserveNotsyAd(internalNotsyAd);
        }
    }

    private static void unReserveNotsyAd(InternalNotsyAd internalNotsyAd) {
        for (Map.Entry<NetworkAdUnit, InternalNotsyAd> entry : reservedNotsyAdMap.entrySet()) {
            if (entry.getValue().equals(internalNotsyAd)) {
                reservedNotsyAdMap.remove(entry.getKey());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void destroyNotsyAd(InternalNotsyAd internalNotsyAd) {
        try {
            internalNotsyAd.destroy();
        } catch (Throwable unused) {
        }
        removeFromCaches(internalNotsyAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int loadedNotsyAdCount(List<InternalNotsyAdUnit> list) {
        int i;
        synchronized (notsyAdListLock) {
            i = 0;
            for (InternalNotsyAd internalNotsyAd : notsyAdList) {
                for (InternalNotsyAdUnit internalNotsyAdUnit : list) {
                    if (internalNotsyAd.getAdUnit().equals(internalNotsyAdUnit)) {
                        i++;
                    }
                }
            }
        }
        return i;
    }

    static void clear() {
        loadTaskMap.clear();
        notsyAdList.clear();
        reservedNotsyAdMap.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class LoadAdUnitListTask implements Runnable {
        private static final Executor loadAdTaskExecutor = Executors.newFixedThreadPool(NotsyLoader.CORE_POOL_SIZE);
        private final List<InternalNotsyAdUnit> adUnitList;
        private final int bottomBorderLoadedAd;
        private final boolean breakAfterAdLoaded;
        private final AtomicBoolean isRunning;
        private final int restAdLoadMs;
        private final int restTaskLoadMs;

        private LoadAdUnitListTask(List<InternalNotsyAdUnit> list, int i, int i2, int i3, boolean z) {
            this.adUnitList = new ArrayList(list);
            this.bottomBorderLoadedAd = i;
            this.restAdLoadMs = i2;
            this.restTaskLoadMs = i3;
            this.breakAfterAdLoaded = z;
            this.isRunning = new AtomicBoolean(false);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.isRunning.set(true);
                int loadedNotsyAdCount = NotsyLoader.loadedNotsyAdCount(this.adUnitList);
                if (loadedNotsyAdCount >= this.bottomBorderLoadedAd) {
                    this.isRunning.set(false);
                    return;
                }
                for (InternalNotsyAdUnit internalNotsyAdUnit : this.adUnitList) {
                    InternalNotsyAd create = InternalNotsyAd.Factory.create(internalNotsyAdUnit);
                    if (create != null) {
                        CountDownLatch countDownLatch = new CountDownLatch(1);
                        loadAdTaskExecutor.execute(new NotsyAdLoadTask(countDownLatch, create));
                        try {
                            countDownLatch.await();
                        } catch (InterruptedException unused) {
                        }
                        if (create.isLoaded()) {
                            loadedNotsyAdCount++;
                            if (this.breakAfterAdLoaded) {
                                break;
                            }
                        }
                        Thread.sleep(this.restAdLoadMs);
                    }
                }
                this.isRunning.set(false);
                if (loadedNotsyAdCount < this.bottomBorderLoadedAd) {
                    NotsyLoader.scheduleLoadTasks(this, this.restTaskLoadMs);
                }
            } catch (Throwable unused2) {
                this.isRunning.set(false);
                NotsyLoader.scheduleLoadTasks(this, this.restTaskLoadMs);
            }
        }

        public boolean isRunning() {
            return this.isRunning.get();
        }

        /* loaded from: classes5.dex */
        private static class NotsyAdLoadTask implements Runnable {
            private final CountDownLatch countDownLatch;
            private final InternalNotsyAd notsyAd;

            private NotsyAdLoadTask(CountDownLatch countDownLatch, InternalNotsyAd internalNotsyAd) {
                this.countDownLatch = countDownLatch;
                this.notsyAd = internalNotsyAd;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.notsyAd.load(NotsyLoader.applicationContext, new AwaitLoadListener(this.countDownLatch));
                } catch (Throwable unused) {
                    this.countDownLatch.countDown();
                }
            }
        }

        /* loaded from: classes5.dex */
        private static class AwaitLoadListener implements InternalLoadListener {
            private final CountDownLatch countDownLatch;

            private AwaitLoadListener(CountDownLatch countDownLatch) {
                this.countDownLatch = countDownLatch;
            }

            @Override // io.bidmachine.ads.networks.notsy.InternalLoadListener
            public void onAdLoaded(InternalNotsyAd internalNotsyAd) {
                NotsyLoader.storeNotsyAd(internalNotsyAd);
                this.countDownLatch.countDown();
            }

            @Override // io.bidmachine.ads.networks.notsy.InternalLoadListener
            public void onAdLoadFailed(InternalNotsyAd internalNotsyAd, BMError bMError) {
                NotsyLoader.destroyNotsyAd(internalNotsyAd);
                this.countDownLatch.countDown();
            }
        }
    }
}
