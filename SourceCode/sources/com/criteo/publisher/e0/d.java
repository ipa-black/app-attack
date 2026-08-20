package com.criteo.publisher.e0;

import com.criteo.publisher.s;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: ThreadPoolExecutorFactory.java */
/* loaded from: classes2.dex */
public class d implements s.a<ThreadPoolExecutor> {
    @Override // com.criteo.publisher.s.a
    /* renamed from: b */
    public ThreadPoolExecutor a() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 20, 3L, TimeUnit.SECONDS, new SynchronousQueue(), Executors.defaultThreadFactory());
        threadPoolExecutor.setRejectedExecutionHandler(new b());
        return threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ThreadPoolExecutorFactory.java */
    /* loaded from: classes2.dex */
    public static class b implements RejectedExecutionHandler {

        /* renamed from: a  reason: collision with root package name */
        private ThreadPoolExecutor f8725a;

        private b() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            synchronized (this) {
                if (this.f8725a == null) {
                    this.f8725a = new ThreadPoolExecutor(5, 5, 3L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
                }
            }
            this.f8725a.execute(runnable);
        }
    }
}
