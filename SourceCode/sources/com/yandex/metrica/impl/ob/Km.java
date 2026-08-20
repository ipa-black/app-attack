package com.yandex.metrica.impl.ob;

import android.os.HandlerThread;
import com.yandex.metrica.core.api.executors.IInterruptionSafeThread;
/* loaded from: classes5.dex */
public class Km extends HandlerThread implements IInterruptionSafeThread {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f13377a;

    public Km(String str) {
        super(str);
        this.f13377a = true;
    }

    @Override // com.yandex.metrica.core.api.executors.IInterruptionSafeThread
    public synchronized boolean isRunning() {
        return this.f13377a;
    }

    @Override // com.yandex.metrica.core.api.executors.IInterruptionSafeThread
    public synchronized void stopRunning() {
        this.f13377a = false;
        interrupt();
    }
}
