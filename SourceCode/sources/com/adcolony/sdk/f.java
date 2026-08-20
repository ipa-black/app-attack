package com.adcolony.sdk;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private boolean f302a;

    public synchronized void a(long j) {
        if (!this.f302a) {
            try {
                wait(j);
            } catch (InterruptedException unused) {
            }
        }
    }

    public synchronized void a(boolean z) {
        this.f302a = z;
        if (z) {
            notifyAll();
        }
    }

    public boolean a() {
        return this.f302a;
    }
}
