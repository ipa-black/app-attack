package com.ironsource.mediationsdk;

import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    ae f10966a;

    /* renamed from: b  reason: collision with root package name */
    private com.ironsource.mediationsdk.utils.c f10967b;

    /* renamed from: c  reason: collision with root package name */
    private Timer f10968c = null;

    public ad(com.ironsource.mediationsdk.utils.c cVar, ae aeVar) {
        this.f10967b = cVar;
        this.f10966a = aeVar;
    }

    private void e() {
        Timer timer = this.f10968c;
        if (timer != null) {
            timer.cancel();
            this.f10968c = null;
        }
    }

    public final synchronized void a() {
        if (this.f10967b.m) {
            e();
            Timer timer = new Timer();
            this.f10968c = timer;
            timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.ad.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    ad.this.f10966a.d();
                }
            }, this.f10967b.k);
        }
    }

    public final synchronized void b() {
        if (!this.f10967b.m) {
            e();
            Timer timer = new Timer();
            this.f10968c = timer;
            timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.ad.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    ad.this.f10966a.d();
                }
            }, this.f10967b.k);
        }
    }

    public final void c() {
        synchronized (this) {
            e();
        }
        this.f10966a.d();
    }

    public final synchronized void d() {
        e();
        Timer timer = new Timer();
        this.f10968c = timer;
        timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.ad.3
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                ad.this.f10966a.d();
            }
        }, this.f10967b.j);
    }
}
