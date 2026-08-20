package com.criteo.publisher.e0;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* compiled from: RunOnUiThreadExecutor.java */
/* loaded from: classes2.dex */
public class c implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f8724a = new Handler(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (Thread.currentThread() == this.f8724a.getLooper().getThread()) {
            runnable.run();
        } else {
            this.f8724a.post(runnable);
        }
    }

    public void a(Runnable runnable) {
        this.f8724a.post(runnable);
    }
}
