package com.bytedance.sdk.component.Sf;

import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ABk;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ADThreadPoolExecutor.java */
/* loaded from: classes2.dex */
public class Qhi extends ThreadPoolExecutor {
    private String Qhi;

    public Qhi(String str, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.Qhi = str;
    }

    private void Qhi(Runnable runnable) {
        try {
            super.execute(runnable);
        } catch (OutOfMemoryError e2) {
            Qhi(runnable, e2);
        } catch (Throwable th) {
            Qhi(runnable, th);
        }
    }

    private void Qhi(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        Qhi(runnable, (Throwable) outOfMemoryError);
    }

    private void Qhi(Runnable runnable, Throwable th) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                runnable.run();
            } catch (Throwable th2) {
                ABk.Qhi("", "try exc failed", th2);
            }
        }
    }

    private void Qhi(BlockingQueue<Runnable> blockingQueue, int i) {
        if (getCorePoolSize() == i || blockingQueue == null || blockingQueue.size() > 0) {
            return;
        }
        try {
            setCorePoolSize(i);
            new Object[]{"reduceCoreThreadSize: reduce poolType =  ", this.Qhi, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize())};
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    private void Qhi(BlockingQueue<Runnable> blockingQueue, int i, int i2) {
        if (getCorePoolSize() == i || blockingQueue == null || blockingQueue.size() < i2) {
            return;
        }
        try {
            setCorePoolSize(i);
            new Object[]{"increaseCoreThreadSize: increase poolType =  ", this.Qhi, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize())};
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        BlockingQueue<Runnable> queue;
        if (runnable instanceof hm) {
            Qhi(new cJ((hm) runnable, this));
        } else {
            Qhi(new cJ(new hm("unknown") { // from class: com.bytedance.sdk.component.Sf.Qhi.1
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                }
            }, this));
        }
        if (!ROR.ROR() || TextUtils.isEmpty(this.Qhi) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.Qhi;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 3366:
                if (str.equals("io")) {
                    c2 = 0;
                    break;
                }
                break;
            case 107332:
                if (str.equals("log")) {
                    c2 = 1;
                    break;
                }
                break;
            case 2993840:
                if (str.equals("aidl")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                Qhi(queue, ROR.Qhi + 2, getCorePoolSize() * 2);
                return;
            case 1:
                Qhi(queue, 8, 8);
                return;
            case 2:
                Qhi(queue, 5, 5);
                return;
            default:
                return;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        BlockingQueue<Runnable> queue;
        super.afterExecute(runnable, th);
        if (!ROR.ROR() || TextUtils.isEmpty(this.Qhi) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.Qhi;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 3366:
                if (str.equals("io")) {
                    c2 = 0;
                    break;
                }
                break;
            case 107332:
                if (str.equals("log")) {
                    c2 = 1;
                    break;
                }
                break;
            case 2993840:
                if (str.equals("aidl")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                Qhi(queue, 2);
                return;
            case 1:
                Qhi(queue, 4);
                return;
            case 2:
                Qhi(queue, 2);
                return;
            default:
                return;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        if ("io".equals(this.Qhi) || "aidl".equals(this.Qhi)) {
            return Collections.emptyList();
        }
        return super.shutdownNow();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if ("io".equals(this.Qhi) || "aidl".equals(this.Qhi)) {
            return;
        }
        super.shutdown();
    }

    public String Qhi() {
        return this.Qhi;
    }

    /* compiled from: ADThreadPoolExecutor.java */
    /* renamed from: com.bytedance.sdk.component.Sf.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0183Qhi {
        private RejectedExecutionHandler Sf;
        private String Qhi = "io";
        private int cJ = 1;
        private long ac = 30;
        private TimeUnit CJ = TimeUnit.SECONDS;
        private int fl = Integer.MAX_VALUE;
        private BlockingQueue<Runnable> Tgh = null;
        private ThreadFactory ROR = null;
        private int hm = 5;

        public C0183Qhi Qhi(String str) {
            this.Qhi = str;
            return this;
        }

        public C0183Qhi Qhi(int i) {
            this.cJ = i;
            return this;
        }

        public C0183Qhi Qhi(long j) {
            this.ac = j;
            return this;
        }

        public C0183Qhi Qhi(TimeUnit timeUnit) {
            this.CJ = timeUnit;
            return this;
        }

        public C0183Qhi Qhi(BlockingQueue<Runnable> blockingQueue) {
            this.Tgh = blockingQueue;
            return this;
        }

        public C0183Qhi Qhi(ThreadFactory threadFactory) {
            this.ROR = threadFactory;
            return this;
        }

        public C0183Qhi Qhi(RejectedExecutionHandler rejectedExecutionHandler) {
            this.Sf = rejectedExecutionHandler;
            return this;
        }

        public C0183Qhi cJ(int i) {
            this.hm = i;
            return this;
        }

        public Qhi Qhi() {
            if (this.ROR == null) {
                this.ROR = Tgh.Qhi().createThreadFactory(this.hm, this.Qhi);
            }
            if (this.Sf == null) {
                this.Sf = ROR.Sf();
            }
            if (this.Tgh == null) {
                this.Tgh = new LinkedBlockingQueue();
            }
            return new Qhi(this.Qhi, this.cJ, this.fl, this.ac, this.CJ, this.Tgh, this.ROR, this.Sf);
        }
    }
}
