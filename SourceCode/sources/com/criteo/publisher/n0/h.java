package com.criteo.publisher.n0;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: CompletableFuture.java */
/* loaded from: classes2.dex */
public class h<T> implements Future<T> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<c<T>> f9220a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final CountDownLatch f9221b = new CountDownLatch(1);

    /* renamed from: c  reason: collision with root package name */
    private final FutureTask<T> f9222c = new FutureTask<>(new b());

    public static <T> h<T> b(T t) {
        h<T> hVar = new h<>();
        hVar.a((h<T>) t);
        return hVar;
    }

    public void a(T t) {
        b$$ExternalSyntheticBackportWithForwarding0.m(this.f9220a, null, new c(t));
        this.f9221b.countDown();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f9222c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f9222c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f9222c.isDone();
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        this.f9222c.run();
        return this.f9222c.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        this.f9222c.run();
        return this.f9222c.get(j, timeUnit);
    }

    /* compiled from: CompletableFuture.java */
    /* loaded from: classes2.dex */
    private class b implements Callable<T> {
        private b() {
        }

        @Override // java.util.concurrent.Callable
        public T call() throws Exception {
            h.this.f9221b.await();
            return (T) ((c) h.this.f9220a.get()).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CompletableFuture.java */
    /* loaded from: classes2.dex */
    public static final class c<T> {

        /* renamed from: a  reason: collision with root package name */
        private final T f9224a;

        /* renamed from: b  reason: collision with root package name */
        private final Exception f9225b = null;

        c(T t) {
            this.f9224a = t;
        }

        T a() throws Exception {
            Exception exc = this.f9225b;
            if (exc != null) {
                throw exc;
            }
            return this.f9224a;
        }
    }
}
