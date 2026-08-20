package com.applovin.impl.sdk.utils;

import com.applovin.impl.sdk.v;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f6188a;

    /* renamed from: b  reason: collision with root package name */
    private Timer f6189b;

    /* renamed from: c  reason: collision with root package name */
    private long f6190c;

    /* renamed from: d  reason: collision with root package name */
    private long f6191d;

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f6192e;

    /* renamed from: f  reason: collision with root package name */
    private long f6193f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f6194g = new Object();

    private p(com.applovin.impl.sdk.n nVar, Runnable runnable) {
        this.f6188a = nVar;
        this.f6192e = runnable;
    }

    public static p a(long j, com.applovin.impl.sdk.n nVar, Runnable runnable) {
        if (j >= 0) {
            if (runnable != null) {
                p pVar = new p(nVar, runnable);
                pVar.f6190c = System.currentTimeMillis();
                pVar.f6191d = j;
                try {
                    Timer timer = new Timer();
                    pVar.f6189b = timer;
                    timer.schedule(pVar.e(), j);
                } catch (OutOfMemoryError e2) {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().b("Timer", "Failed to create timer due to OOM error", e2);
                    }
                }
                return pVar;
            }
            throw new IllegalArgumentException("Cannot create a scheduled timer. Runnable is null.");
        }
        throw new IllegalArgumentException("Cannot create a scheduled timer. Invalid fire time passed in: " + j + ".");
    }

    private TimerTask e() {
        return new TimerTask() { // from class: com.applovin.impl.sdk.utils.p.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                try {
                    p.this.f6192e.run();
                    synchronized (p.this.f6194g) {
                        p.this.f6189b = null;
                    }
                } catch (Throwable th) {
                    try {
                        if (p.this.f6188a != null) {
                            p.this.f6188a.D();
                            if (v.a()) {
                                p.this.f6188a.D();
                                if (v.a()) {
                                    p.this.f6188a.D().b("Timer", "Encountered error while executing timed task", th);
                                }
                            }
                        }
                        synchronized (p.this.f6194g) {
                            p.this.f6189b = null;
                        }
                    } catch (Throwable th2) {
                        synchronized (p.this.f6194g) {
                            p.this.f6189b = null;
                            throw th2;
                        }
                    }
                }
            }
        };
    }

    public long a() {
        if (this.f6189b != null) {
            return this.f6191d - (System.currentTimeMillis() - this.f6190c);
        }
        return this.f6191d - this.f6193f;
    }

    public void b() {
        synchronized (this.f6194g) {
            Timer timer = this.f6189b;
            if (timer != null) {
                timer.cancel();
                this.f6193f = Math.max(1L, System.currentTimeMillis() - this.f6190c);
                this.f6189b = null;
            }
        }
    }

    public void c() {
        synchronized (this.f6194g) {
            long j = this.f6193f;
            if (j > 0) {
                long j2 = this.f6191d - j;
                this.f6191d = j2;
                if (j2 < 0) {
                    this.f6191d = 0L;
                }
                Timer timer = new Timer();
                this.f6189b = timer;
                timer.schedule(e(), this.f6191d);
                this.f6190c = System.currentTimeMillis();
                this.f6193f = 0L;
            }
        }
    }

    public void d() {
        synchronized (this.f6194g) {
            Timer timer = this.f6189b;
            if (timer != null) {
                timer.cancel();
                this.f6189b = null;
                this.f6193f = 0L;
            }
        }
    }
}
