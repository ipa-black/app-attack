package io.bidmachine.core;

import java.lang.Thread;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes5.dex */
final class ProcessPriorityThreadFactory implements ThreadFactory {
    private final int threadPriority;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProcessPriorityThreadFactory(int i) {
        this.threadPriority = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(this.threadPriority);
        thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: io.bidmachine.core.ProcessPriorityThreadFactory.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread2, Throwable th) {
                Logger.log(th);
            }
        });
        return thread;
    }
}
