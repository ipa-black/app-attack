package com.ironsource.mediationsdk.b;

import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public abstract class a<T> {

    /* renamed from: a  reason: collision with root package name */
    protected T f11082a;

    /* renamed from: b  reason: collision with root package name */
    private Timer f11083b;

    /* renamed from: c  reason: collision with root package name */
    private long f11084c;

    public a(long j) {
        this.f11084c = j;
    }

    protected abstract void a();

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(T t) {
        if (this.f11084c > 0 && t != null) {
            this.f11082a = t;
            b();
            Timer timer = new Timer();
            this.f11083b = timer;
            timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.b.a.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    a.this.a();
                }
            }, this.f11084c);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        Timer timer = this.f11083b;
        if (timer != null) {
            timer.cancel();
            this.f11083b = null;
        }
    }

    public final void c() {
        this.f11082a = null;
    }
}
