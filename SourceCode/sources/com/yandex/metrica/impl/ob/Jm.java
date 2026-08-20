package com.yandex.metrica.impl.ob;

import android.os.Handler;
import android.os.Looper;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class Jm implements IHandlerExecutor {

    /* renamed from: a  reason: collision with root package name */
    private final Looper f13320a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f13321b;

    /* renamed from: c  reason: collision with root package name */
    private final Km f13322c;

    public Jm(String str) {
        this(a(str));
    }

    private static Km a(String str) {
        Km b2 = new Mm(str).b();
        b2.start();
        return b2;
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f13321b.post(runnable);
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public void executeDelayed(Runnable runnable, long j) {
        this.f13321b.postDelayed(runnable, TimeUnit.MILLISECONDS.toMillis(j));
    }

    @Override // com.yandex.metrica.core.api.executors.IHandlerExecutor
    public Handler getHandler() {
        return this.f13321b;
    }

    @Override // com.yandex.metrica.core.api.executors.IHandlerExecutor
    public Looper getLooper() {
        return this.f13320a;
    }

    @Override // com.yandex.metrica.core.api.executors.IInterruptionSafeThread
    public boolean isRunning() {
        return this.f13322c.isRunning();
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public void remove(Runnable runnable) {
        this.f13321b.removeCallbacks(runnable);
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public void removeAll() {
        this.f13321b.removeCallbacksAndMessages(null);
    }

    @Override // com.yandex.metrica.core.api.executors.IInterruptionSafeThread
    public void stopRunning() {
        this.f13322c.stopRunning();
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public <T> Future<T> submit(Callable<T> callable) {
        FutureTask futureTask = new FutureTask(callable);
        this.f13321b.post(futureTask);
        return futureTask;
    }

    Jm(Km km) {
        this(km, km.getLooper(), new Handler(km.getLooper()));
    }

    public Jm(Km km, Looper looper, Handler handler) {
        this.f13322c = km;
        this.f13320a = looper;
        this.f13321b = handler;
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public void executeDelayed(Runnable runnable, long j, TimeUnit timeUnit) {
        this.f13321b.postDelayed(runnable, timeUnit.toMillis(j));
    }
}
