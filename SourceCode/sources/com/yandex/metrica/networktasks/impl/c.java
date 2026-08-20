package com.yandex.metrica.networktasks.impl;
/* loaded from: classes5.dex */
public class c extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private volatile boolean f16281a;

    public c() {
        this.f16281a = true;
    }

    public c(Runnable runnable, String str) {
        super(runnable, str);
        this.f16281a = true;
    }

    public c(String str) {
        super(str);
        this.f16281a = true;
    }

    public synchronized boolean isRunning() {
        return this.f16281a;
    }

    public synchronized void stopRunning() {
        this.f16281a = false;
        interrupt();
    }
}
