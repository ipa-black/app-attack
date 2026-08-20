package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.IInterruptionSafeThread;
/* loaded from: classes5.dex */
public class Lm extends Thread implements IInterruptionSafeThread {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f13450a;

    public Lm() {
        this.f13450a = true;
    }

    @Override // com.yandex.metrica.core.api.executors.IInterruptionSafeThread
    public synchronized boolean isRunning() {
        return this.f13450a;
    }

    @Override // com.yandex.metrica.core.api.executors.IInterruptionSafeThread
    public synchronized void stopRunning() {
        this.f13450a = false;
        interrupt();
    }

    public Lm(Runnable runnable, String str) {
        super(runnable, str);
        this.f13450a = true;
    }

    public Lm(String str) {
        super(str);
        this.f13450a = true;
    }
}
