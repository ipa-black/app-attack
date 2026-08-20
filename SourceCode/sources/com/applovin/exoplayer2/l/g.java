package com.applovin.exoplayer2.l;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final d f3797a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f3798b;

    public g() {
        this(d.f3790a);
    }

    public g(d dVar) {
        this.f3797a = dVar;
    }

    public synchronized boolean a() {
        if (this.f3798b) {
            return false;
        }
        this.f3798b = true;
        notifyAll();
        return true;
    }

    public synchronized boolean b() {
        boolean z;
        z = this.f3798b;
        this.f3798b = false;
        return z;
    }

    public synchronized void c() throws InterruptedException {
        while (!this.f3798b) {
            wait();
        }
    }

    public synchronized void d() {
        boolean z = false;
        while (!this.f3798b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean e() {
        return this.f3798b;
    }
}
