package com.appodeal.ads.utils;

import java.lang.Thread;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
public final class u implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(10);
        thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.appodeal.ads.utils.u$$ExternalSyntheticLambda0
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public final void uncaughtException(Thread thread2, Throwable th) {
                Log.log(th);
            }
        });
        return thread;
    }
}
