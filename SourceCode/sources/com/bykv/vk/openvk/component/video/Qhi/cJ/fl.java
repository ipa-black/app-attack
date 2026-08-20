package com.bykv.vk.openvk.component.video.Qhi.cJ;

import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.bykv.vk.openvk.component.video.Qhi.cJ.WAv;
import com.bykv.vk.openvk.component.video.Qhi.cJ.cJ;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: Preloader.java */
/* loaded from: classes2.dex */
public class fl {
    private static volatile fl fl;
    private volatile String ABk;
    private final ExecutorService CJ;
    private volatile ac Gm;
    private volatile int Qhi = 163840;
    private volatile com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac ROR;
    private volatile com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.cJ Sf;
    private volatile com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac Tgh;
    private final cJ.InterfaceC0164cJ WAv;
    private final cJ<Runnable> ac;
    private final SparseArray<Map<String, com.bykv.vk.openvk.component.video.Qhi.cJ.cJ>> cJ;
    private final HashSet<Qhi> hm;
    private volatile boolean iMK;
    private volatile ac zc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.ac acVar) {
        this.ROR = acVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac acVar) {
        this.Tgh = acVar;
    }

    public void Qhi(int i) {
        if (i > 0) {
            this.Qhi = i;
        }
        if (Tgh.ac) {
            Log.i("TAG_PROXY_Preloader", "MaxPreloadSize: ".concat(String.valueOf(i)));
        }
    }

    private fl() {
        SparseArray<Map<String, com.bykv.vk.openvk.component.video.Qhi.cJ.cJ>> sparseArray = new SparseArray<>(2);
        this.cJ = sparseArray;
        this.hm = new HashSet<>();
        this.WAv = new cJ.InterfaceC0164cJ() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.fl.1
            @Override // com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.InterfaceC0164cJ
            public void Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ cJVar) {
                int Tgh = cJVar.Tgh();
                synchronized (fl.this.cJ) {
                    Map map = (Map) fl.this.cJ.get(Tgh);
                    if (map != null) {
                        map.remove(cJVar.Sf);
                    }
                }
                if (Tgh.ac) {
                    Log.d("TAG_PROXY_Preloader", "afterExecute, key: " + cJVar.Sf);
                }
            }
        };
        cJ<Runnable> cJVar = new cJ<>();
        this.ac = cJVar;
        ExecutorService Qhi2 = Qhi(cJVar);
        this.CJ = Qhi2;
        cJVar.Qhi((ThreadPoolExecutor) Qhi2);
        sparseArray.put(0, new HashMap());
        sparseArray.put(1, new HashMap());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac Qhi() {
        return this.Gm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac cJ() {
        return this.zc;
    }

    public static fl ac() {
        if (fl == null) {
            synchronized (fl.class) {
                if (fl == null) {
                    fl = new fl();
                }
            }
        }
        return fl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(boolean z, String str) {
        com.bykv.vk.openvk.component.video.Qhi.cJ.cJ remove;
        this.ABk = str;
        this.iMK = z;
        if (Tgh.ac) {
            Log.i("TAG_PROXY_Preloader", "setCurrentPlayKey, ".concat(String.valueOf(str)));
        }
        HashSet hashSet = null;
        HashSet hashSet2 = null;
        if (str == null) {
            synchronized (this.hm) {
                if (!this.hm.isEmpty()) {
                    hashSet2 = new HashSet(this.hm);
                    this.hm.clear();
                }
            }
            if (hashSet2 != null) {
                Iterator it = hashSet2.iterator();
                while (it.hasNext()) {
                    Qhi qhi = (Qhi) it.next();
                    Qhi(qhi.Qhi, qhi.cJ, qhi.ac, qhi.CJ, qhi.fl, qhi.Tgh);
                    if (Tgh.ac) {
                        Log.i("TAG_PROXY_Preloader", "setCurrentPlayKey, resume preload: " + qhi.CJ);
                    }
                }
                return;
            }
            return;
        }
        int i = Tgh.Sf;
        if (i != 3 && i != 2) {
            if (i == 1) {
                synchronized (this.cJ) {
                    Map<String, com.bykv.vk.openvk.component.video.Qhi.cJ.cJ> map = this.cJ.get(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.cJ.Qhi(z));
                    remove = map != null ? map.remove(str) : null;
                }
                if (remove != null) {
                    remove.Qhi();
                    return;
                }
                return;
            }
            return;
        }
        synchronized (this.cJ) {
            int size = this.cJ.size();
            for (int i2 = 0; i2 < size; i2++) {
                SparseArray<Map<String, com.bykv.vk.openvk.component.video.Qhi.cJ.cJ>> sparseArray = this.cJ;
                Map<String, com.bykv.vk.openvk.component.video.Qhi.cJ.cJ> map2 = sparseArray.get(sparseArray.keyAt(i2));
                if (map2 != null) {
                    Collection<com.bykv.vk.openvk.component.video.Qhi.cJ.cJ> values = map2.values();
                    if (values != null && !values.isEmpty()) {
                        if (hashSet == null) {
                            hashSet = new HashSet();
                        }
                        hashSet.addAll(values);
                    }
                    map2.clear();
                }
            }
        }
        if (hashSet == null || hashSet.isEmpty()) {
            return;
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            com.bykv.vk.openvk.component.video.Qhi.cJ.cJ cJVar = (com.bykv.vk.openvk.component.video.Qhi.cJ.cJ) it2.next();
            cJVar.Qhi();
            if (Tgh.ac) {
                Log.i("TAG_PROXY_Preloader", "setCurrentPlayKey, cancel preload: " + cJVar.ROR);
            }
        }
        if (i == 3) {
            synchronized (this.hm) {
                Iterator it3 = hashSet.iterator();
                while (it3.hasNext()) {
                    Qhi qhi2 = (Qhi) ((com.bykv.vk.openvk.component.video.Qhi.cJ.cJ) it3.next()).iMK;
                    if (qhi2 != null) {
                        this.hm.add(qhi2);
                    }
                }
            }
        }
    }

    public void Qhi(boolean z, boolean z2, int i, String str, String... strArr) {
        Qhi(z, z2, i, str, null, strArr);
    }

    public void Qhi(boolean z, boolean z2, int i, String str, Map<String, String> map, String... strArr) {
        ArrayList arrayList;
        if (Tgh.ac) {
            Log.d("TAG_PROXY_Preloader", "preload start ！！！！");
        }
        com.bykv.vk.openvk.component.video.Qhi.cJ.Qhi.Qhi qhi = z ? this.Sf : this.ROR;
        com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.ac acVar = this.Tgh;
        if (qhi == null || acVar == null) {
            if (Tgh.ac) {
                Log.e("TAG_PROXY_Preloader", "cache or videoProxyDB null in Preloader!!!");
            }
        } else if (!TextUtils.isEmpty(str) && strArr != null && strArr.length > 0) {
            int i2 = i <= 0 ? this.Qhi : i;
            String Qhi2 = z2 ? str : com.bykv.vk.openvk.component.video.api.Tgh.cJ.Qhi(str);
            File CJ = qhi.CJ(Qhi2);
            if (CJ != null && CJ.length() >= i2) {
                if (Tgh.ac) {
                    Log.i("TAG_PROXY_Preloader", "no need preload, file size: " + CJ.length() + ", need preload size: " + i2);
                }
            } else if (ROR.Qhi().Qhi(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.cJ.Qhi(z), Qhi2)) {
                if (Tgh.ac) {
                    Log.w("TAG_PROXY_Preloader", "has running proxy task, skip preload for key: ".concat(String.valueOf(str)));
                }
            } else {
                synchronized (this.cJ) {
                    Map<String, com.bykv.vk.openvk.component.video.Qhi.cJ.cJ> map2 = this.cJ.get(z ? 1 : 0);
                    if (map2.containsKey(Qhi2)) {
                        return;
                    }
                    int i3 = i2;
                    Qhi qhi2 = new Qhi(z, z2, i2, str, map, strArr);
                    String str2 = this.ABk;
                    if (str2 != null) {
                        int i4 = Tgh.Sf;
                        if (i4 == 3) {
                            synchronized (this.hm) {
                                this.hm.add(qhi2);
                            }
                            if (Tgh.ac) {
                                Log.w("TAG_PROXY_Preloader", "cancel preload: " + str + ", add to pending queue");
                            }
                            return;
                        } else if (i4 == 2) {
                            if (Tgh.ac) {
                                Log.w("TAG_PROXY_Preloader", "cancel preload: ".concat(String.valueOf(str)));
                            }
                            return;
                        } else if (i4 == 1 && this.iMK == z && str2.equals(Qhi2)) {
                            if (Tgh.ac) {
                                Log.w("TAG_PROXY_Preloader", "cancel preload: " + str + ", it is playing");
                            }
                            return;
                        }
                    }
                    List<WAv.cJ> Qhi3 = com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(map));
                    if (Qhi3 != null) {
                        arrayList = new ArrayList(Qhi3.size());
                        int size = Qhi3.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            WAv.cJ cJVar = Qhi3.get(i5);
                            if (cJVar != null) {
                                arrayList.add(new WAv.cJ(cJVar.Qhi, cJVar.cJ));
                            }
                        }
                    } else {
                        arrayList = null;
                    }
                    com.bykv.vk.openvk.component.video.Qhi.cJ.cJ Qhi4 = new cJ.Qhi().Qhi(qhi).Qhi(acVar).Qhi(str).cJ(Qhi2).Qhi(new ABk(com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(strArr))).Qhi((List<WAv.cJ>) arrayList).Qhi(i3).Qhi(this.WAv).Qhi(qhi2).Qhi();
                    map2.put(Qhi2, Qhi4);
                    this.CJ.execute(Qhi4);
                }
            }
        }
    }

    public void Qhi(String str) {
        Qhi(false, false, str);
    }

    public void Qhi(final boolean z, final boolean z2, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(new com.bytedance.sdk.component.Sf.hm("cancel b b S") { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.fl.2
            @Override // java.lang.Runnable
            public void run() {
                com.bykv.vk.openvk.component.video.Qhi.cJ.cJ cJVar;
                synchronized (fl.this.cJ) {
                    Map map = (Map) fl.this.cJ.get(com.bykv.vk.openvk.component.video.Qhi.cJ.cJ.cJ.Qhi(z));
                    if (map != null) {
                        cJVar = (com.bykv.vk.openvk.component.video.Qhi.cJ.cJ) map.remove(z2 ? str : com.bykv.vk.openvk.component.video.api.Tgh.cJ.Qhi(str));
                    } else {
                        cJVar = null;
                    }
                }
                if (cJVar != null) {
                    cJVar.Qhi();
                }
            }
        });
    }

    public void CJ() {
        com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi(new com.bytedance.sdk.component.Sf.hm("cancelAll") { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.fl.3
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<com.bykv.vk.openvk.component.video.Qhi.cJ.cJ> arrayList = new ArrayList();
                synchronized (fl.this.cJ) {
                    int size = fl.this.cJ.size();
                    for (int i = 0; i < size; i++) {
                        Map map = (Map) fl.this.cJ.get(fl.this.cJ.keyAt(i));
                        if (map != null) {
                            arrayList.addAll(map.values());
                            map.clear();
                        }
                    }
                    fl.this.ac.clear();
                }
                for (com.bykv.vk.openvk.component.video.Qhi.cJ.cJ cJVar : arrayList) {
                    cJVar.Qhi();
                    if (Tgh.ac) {
                        Log.w("TAG_PROXY_Preloader", "PreloadTask: " + cJVar + ", canceled!!!");
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Preloader.java */
    /* loaded from: classes2.dex */
    public static final class Qhi {
        final String CJ;
        final boolean Qhi;
        final String[] Tgh;
        final int ac;
        final boolean cJ;
        final Map<String, String> fl;

        Qhi(boolean z, boolean z2, int i, String str, Map<String, String> map, String[] strArr) {
            this.Qhi = z;
            this.cJ = z2;
            this.ac = i;
            this.CJ = str;
            this.fl = map;
            this.Tgh = strArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Qhi qhi = (Qhi) obj;
            if (this.Qhi == qhi.Qhi && this.cJ == qhi.cJ && this.ac == qhi.ac) {
                return this.CJ.equals(qhi.CJ);
            }
            return false;
        }

        public int hashCode() {
            return ((((((this.Qhi ? 1 : 0) * 31) + (this.cJ ? 1 : 0)) * 31) + this.ac) * 31) + this.CJ.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Preloader.java */
    /* loaded from: classes2.dex */
    public static final class cJ<T> extends LinkedBlockingDeque<T> {
        private ThreadPoolExecutor Qhi;

        private cJ() {
        }

        public void Qhi(ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.Qhi != null) {
                    throw new IllegalStateException("You can only call setExecutor() once!");
                }
                if (threadPoolExecutor == null) {
                    throw new NullPointerException("executor argument can't be null!");
                }
                this.Qhi = threadPoolExecutor;
            }
        }

        @Override // java.util.concurrent.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingDeque, java.util.concurrent.BlockingQueue, java.util.Deque
        public boolean offer(T t) {
            synchronized (this) {
                int poolSize = this.Qhi.getPoolSize();
                int activeCount = this.Qhi.getActiveCount();
                int maximumPoolSize = this.Qhi.getMaximumPoolSize();
                if (activeCount >= poolSize && poolSize < maximumPoolSize) {
                    if (Tgh.ac) {
                        Log.i("TAG_PROXY_TT", "create new preloader thread");
                    }
                    return false;
                }
                return offerFirst(t);
            }
        }
    }

    private static ExecutorService Qhi(final cJ<Runnable> cJVar) {
        int i;
        int Qhi2 = com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.Qhi();
        if (Qhi2 <= 0) {
            Qhi2 = 1;
        } else if (Qhi2 > 4) {
            i = 4;
            return new ThreadPoolExecutor(0, i, 60L, TimeUnit.SECONDS, cJVar, new ThreadFactory() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.fl.4
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable) { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.fl.4.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                Process.setThreadPriority(10);
                            } catch (Throwable unused) {
                            }
                            super.run();
                        }
                    };
                    thread.setName("csj_video_preload_" + thread.getId());
                    thread.setDaemon(true);
                    if (Tgh.ac) {
                        Log.i("TAG_PROXY_Preloader", "new preload thead: " + thread.getName());
                    }
                    return thread;
                }
            }, new RejectedExecutionHandler() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.fl.5
                @Override // java.util.concurrent.RejectedExecutionHandler
                public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                    try {
                        cJ.this.offerFirst(runnable);
                        if (Tgh.ac) {
                            Log.i("TAG_PROXY_TT", "task rejected in preloader, put first!!!");
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        }
        i = Qhi2;
        return new ThreadPoolExecutor(0, i, 60L, TimeUnit.SECONDS, cJVar, new ThreadFactory() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.fl.4
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable) { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.fl.4.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            Process.setThreadPriority(10);
                        } catch (Throwable unused) {
                        }
                        super.run();
                    }
                };
                thread.setName("csj_video_preload_" + thread.getId());
                thread.setDaemon(true);
                if (Tgh.ac) {
                    Log.i("TAG_PROXY_Preloader", "new preload thead: " + thread.getName());
                }
                return thread;
            }
        }, new RejectedExecutionHandler() { // from class: com.bykv.vk.openvk.component.video.Qhi.cJ.fl.5
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                try {
                    cJ.this.offerFirst(runnable);
                    if (Tgh.ac) {
                        Log.i("TAG_PROXY_TT", "task rejected in preloader, put first!!!");
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
