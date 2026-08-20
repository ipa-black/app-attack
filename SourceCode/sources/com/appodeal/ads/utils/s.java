package com.appodeal.ads.utils;

import com.appodeal.ads.h0;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class s implements Executor {

    /* renamed from: b  reason: collision with root package name */
    public static final TimeUnit f7821b = TimeUnit.SECONDS;

    /* renamed from: c  reason: collision with root package name */
    public static final int f7822c;

    /* renamed from: d  reason: collision with root package name */
    public static final int f7823d;

    /* renamed from: e  reason: collision with root package name */
    public static s f7824e;

    /* renamed from: a  reason: collision with root package name */
    public final ThreadPoolExecutor f7825a;

    /* loaded from: classes2.dex */
    public static final class a implements RejectedExecutionHandler {
        public a() {
        }

        public /* synthetic */ a(int i) {
            this();
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            Log.log(new com.appodeal.ads.utils.exception_handler.a(h0.a("Task ").append(runnable.toString()).append(" rejected from ").append(threadPoolExecutor.toString()).toString()));
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f7822c = Math.max(2, Math.min(availableProcessors - 1, 4));
        f7823d = (availableProcessors * 2) + 1;
        f7824e = new s();
    }

    public s() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        a aVar = new a(0);
        this.f7825a = new ThreadPoolExecutor(f7822c, f7823d, 1L, f7821b, linkedBlockingQueue, new u(), aVar);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f7825a.execute(runnable);
    }
}
