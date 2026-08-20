package com.bytedance.sdk.component.Sf.ac;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ABk;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: PagThreadPoolExecutor.java */
/* loaded from: classes2.dex */
public class ROR extends ThreadPoolExecutor {
    private int CJ;
    private final String Qhi;
    private boolean ROR;
    private LinkedHashMap<String, com.bytedance.sdk.component.Sf.ac.Qhi.Qhi> Sf;
    private int Tgh;
    private int ac;
    private int cJ;
    private int fl;

    private ROR(Qhi qhi) {
        super(qhi.cJ, Integer.MAX_VALUE, qhi.fl, qhi.ROR, qhi.Gm, qhi.zc);
        this.ROR = false;
        new Object[]{"create poolType = ", qhi.Qhi, " coreSize=", Integer.valueOf(qhi.cJ), " maxSize=", Integer.valueOf(qhi.ac), " keepAlive=", Long.valueOf(qhi.fl), " createSize=", Integer.valueOf(qhi.CJ), "  logTaskCount=", Integer.valueOf(qhi.hm), " isUseConfig=", Boolean.valueOf(qhi.WAv), "  workQueue", qhi.Gm};
        this.Qhi = qhi.Qhi;
        this.CJ = qhi.cJ;
        this.fl = qhi.ac;
        this.Tgh = qhi.CJ;
        allowCoreThreadTimeOut(qhi.Tgh);
        this.cJ = qhi.Sf;
        this.ac = qhi.hm;
        this.ROR = qhi.WAv;
        if (ROR()) {
            final int i = this.ac + 4;
            this.Sf = new LinkedHashMap<String, com.bytedance.sdk.component.Sf.ac.Qhi.Qhi>(i, 0.75f, true) { // from class: com.bytedance.sdk.component.Sf.ac.ROR.1
                @Override // java.util.LinkedHashMap
                protected boolean removeEldestEntry(Map.Entry<String, com.bytedance.sdk.component.Sf.ac.Qhi.Qhi> entry) {
                    return size() > i;
                }
            };
        }
    }

    public void Qhi(Qhi qhi) {
        try {
            if (qhi.cJ >= 0 && this.CJ != qhi.cJ) {
                int i = qhi.cJ;
                this.CJ = i;
                setCorePoolSize(i);
            }
            this.fl = qhi.ac;
            this.Tgh = qhi.CJ;
            allowCoreThreadTimeOut(qhi.Tgh);
            this.cJ = qhi.Sf;
            this.ac = qhi.hm;
            this.ROR = qhi.WAv;
        } catch (Throwable th) {
            ABk.Qhi("PAGThreadPoolExecutor", th.getMessage());
        }
        new Object[]{"update poolType = ", qhi.Qhi, " coreSize=", Integer.valueOf(qhi.cJ), " maxSize=", Integer.valueOf(qhi.ac), " keepAlive=", Long.valueOf(qhi.fl), " createSize=", Integer.valueOf(qhi.CJ), "  logTaskCount=", Integer.valueOf(qhi.hm), " isUseConfig=", Boolean.valueOf(qhi.WAv), "  workQueue", qhi.Gm};
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void beforeExecute(Thread thread, Runnable runnable) {
        if (runnable instanceof cJ) {
            ((cJ) runnable).cJ(SystemClock.elapsedRealtime());
        }
        super.beforeExecute(thread, runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        boolean z = runnable instanceof cJ;
        if (z) {
            ((cJ) runnable).ac(SystemClock.elapsedRealtime());
            try {
                if (ROR() && this.Sf != null) {
                    Qhi((cJ) runnable);
                    Tgh();
                }
            } catch (Exception e2) {
                ABk.Qhi("PAGThreadPoolExecutor", e2.getMessage());
            }
        }
        super.afterExecute(runnable, th);
        if (z) {
            cJ cJVar = (cJ) runnable;
            new Object[]{"submit  poolType = ", this.Qhi, " taskName=", cJVar.cJ(), "    ", "priority = ", Integer.valueOf(cJVar.Qhi()), " SubmitTimestamp=", Long.valueOf(cJVar.ac()), "  BeforeTimestamp=", Long.valueOf(cJVar.CJ()), "  AfterTimestamp=", Long.valueOf(cJVar.fl())};
        }
        fl();
    }

    private void CJ() {
        int corePoolSize;
        try {
            if (this.CJ != 0 && (corePoolSize = getCorePoolSize()) < this.fl) {
                int size = getQueue().size();
                if (getActiveCount() < this.CJ || size < this.Tgh) {
                    return;
                }
                setCorePoolSize(this.fl);
                new Object[]{this.Qhi, " increaseToMaxThread  queueSize=", Integer.valueOf(size), "    ", Integer.valueOf(corePoolSize), " --> ", Integer.valueOf(this.fl)};
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    private void fl() {
        int corePoolSize;
        int size;
        try {
            if (this.CJ != 0 && (corePoolSize = getCorePoolSize()) > this.CJ && (size = getQueue().size()) == 0) {
                setCorePoolSize(this.CJ);
                new Object[]{this.Qhi, " reduceToCoreThread  queueSize=", Integer.valueOf(size), "    ", Integer.valueOf(corePoolSize), " --> ", Integer.valueOf(this.CJ)};
            }
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        int i;
        String str;
        runnable.getClass();
        final RunnableFuture newTaskFor = newTaskFor(runnable, null);
        if (!(runnable instanceof cJ)) {
            i = 6;
            str = "";
        } else {
            cJ cJVar = (cJ) runnable;
            i = cJVar.Qhi();
            str = cJVar.cJ();
        }
        if (i == 0 || TextUtils.isEmpty(str)) {
            new RuntimeException();
        }
        execute(new cJ(i, str) { // from class: com.bytedance.sdk.component.Sf.ac.ROR.2
            @Override // java.lang.Runnable
            public void run() {
                newTaskFor.run();
            }
        });
        return newTaskFor;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bytedance.sdk.component.Sf.ac.Qhi cJ;
        if (!(runnable instanceof cJ)) {
            runnable = new cJ("unknown", runnable) { // from class: com.bytedance.sdk.component.Sf.ac.ROR.3
                @Override // java.lang.Runnable
                public void run() {
                    Runnable Sf = Sf();
                    if (Sf != null) {
                        Sf.run();
                    }
                }
            };
        }
        if (!"cache".equals(this.Qhi)) {
            String name = Thread.currentThread().getName();
            if (!TextUtils.isEmpty(name) && name.startsWith(fl.Qhi(this.Qhi)) && (cJ = ac.cJ()) != null) {
                cJ.Qhi(this, (cJ) runnable);
            }
        }
        ((cJ) runnable).Qhi(SystemClock.elapsedRealtime());
        try {
            super.execute(runnable);
            CJ();
        } catch (Throwable th) {
            Qhi(runnable, th);
        }
    }

    private void Qhi(Runnable runnable, Throwable th) {
        try {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                Handler ac = ac.ac();
                if (ac != null) {
                    ac.post(runnable);
                    return;
                }
                return;
            }
            runnable.run();
        } catch (Throwable th2) {
            ABk.Qhi("PAGThreadPoolExecutor", "try exc failed", th2);
        }
    }

    private void Qhi(cJ cJVar) {
        LinkedHashMap<String, com.bytedance.sdk.component.Sf.ac.Qhi.Qhi> linkedHashMap = this.Sf;
        if (linkedHashMap != null) {
            com.bytedance.sdk.component.Sf.ac.Qhi.Qhi qhi = linkedHashMap.get(cJVar.cJ());
            if (qhi == null) {
                synchronized (linkedHashMap) {
                    qhi = linkedHashMap.get(cJVar.cJ());
                    if (qhi == null) {
                        qhi = new com.bytedance.sdk.component.Sf.ac.Qhi.Qhi();
                        linkedHashMap.put(cJVar.cJ(), qhi);
                    }
                }
            }
            qhi.Qhi(cJVar);
        }
    }

    public LinkedHashMap<String, com.bytedance.sdk.component.Sf.ac.Qhi.Qhi> Qhi() {
        return this.Sf;
    }

    private void Tgh() {
        if (getCompletedTaskCount() > this.cJ) {
            Tgh Qhi2 = ac.Qhi();
            if (Qhi2 != null) {
                Qhi2.Qhi(this);
            }
            this.cJ = -1;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        if ("aidl".equals(this.Qhi)) {
            return Collections.emptyList();
        }
        return super.shutdownNow();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if ("aidl".equals(this.Qhi)) {
            return;
        }
        super.shutdown();
    }

    public String cJ() {
        return this.Qhi;
    }

    private boolean ROR() {
        return this.cJ > 0;
    }

    public boolean ac() {
        return this.ROR;
    }

    /* compiled from: PagThreadPoolExecutor.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private String Qhi = "cache";
        private int cJ = 4;
        private int ac = 100;
        private int CJ = 0;
        private long fl = 30000;
        private boolean Tgh = false;
        private TimeUnit ROR = TimeUnit.MILLISECONDS;
        private int Sf = -1;
        private int hm = 20;
        private boolean WAv = false;
        private BlockingQueue<Runnable> Gm = new PriorityBlockingQueue();
        private ThreadFactory zc = null;

        public Qhi Qhi(String str) {
            this.Qhi = str;
            return this;
        }

        public Qhi Qhi(int i) {
            this.cJ = i;
            return this;
        }

        public Qhi cJ(int i) {
            this.ac = i;
            return this;
        }

        public Qhi ac(int i) {
            this.CJ = i;
            return this;
        }

        public Qhi Qhi(long j) {
            this.fl = j;
            return this;
        }

        public Qhi Qhi(boolean z) {
            this.Tgh = z;
            return this;
        }

        public Qhi CJ(int i) {
            this.hm = i;
            return this;
        }

        public Qhi fl(int i) {
            this.Sf = i;
            return this;
        }

        public Qhi cJ(boolean z) {
            this.WAv = z;
            return this;
        }

        public ROR Qhi() {
            if (this.zc == null) {
                this.zc = new fl(this.Qhi);
            }
            if (this.cJ < 0) {
                this.cJ = 8;
            }
            if (this.cJ == 0) {
                this.Gm = new SynchronousQueue();
            }
            if (this.Gm == null) {
                this.Gm = new LinkedBlockingQueue();
            }
            if (this.ac > 100) {
                this.ac = 100;
            }
            int i = this.ac;
            int i2 = this.cJ;
            if (i < i2) {
                this.ac = i2;
            }
            if (this.hm < 0) {
                this.hm = 20;
            }
            if (this.hm > 100) {
                this.hm = 100;
            }
            return new ROR(this);
        }
    }
}
