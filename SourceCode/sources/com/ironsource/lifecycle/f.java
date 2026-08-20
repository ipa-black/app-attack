package com.ironsource.lifecycle;

import java.util.Calendar;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public final class f implements c {

    /* renamed from: a  reason: collision with root package name */
    Runnable f10628a;

    /* renamed from: b  reason: collision with root package name */
    private String f10629b = "INTERNAL";

    /* renamed from: c  reason: collision with root package name */
    private Timer f10630c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f10631d;

    /* renamed from: e  reason: collision with root package name */
    private Long f10632e;

    /* renamed from: f  reason: collision with root package name */
    private long f10633f;

    public f(long j, Runnable runnable, boolean z) {
        this.f10633f = j;
        this.f10628a = runnable;
        this.f10631d = false;
        this.f10632e = null;
        this.f10631d = true;
        d.a().a(this);
        this.f10632e = Long.valueOf(System.currentTimeMillis() + this.f10633f);
        if (d.a().b()) {
            return;
        }
        d();
    }

    private void d() {
        if (this.f10630c == null) {
            Timer timer = new Timer();
            this.f10630c = timer;
            timer.schedule(new TimerTask() { // from class: com.ironsource.lifecycle.f.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    f.this.f10628a.run();
                }
            }, this.f10633f);
            Calendar.getInstance().setTimeInMillis(this.f10632e.longValue());
        }
    }

    private void e() {
        Timer timer = this.f10630c;
        if (timer != null) {
            timer.cancel();
            this.f10630c = null;
        }
    }

    @Override // com.ironsource.lifecycle.c
    public final void a() {
        Long l;
        if (this.f10630c == null && (l = this.f10632e) != null) {
            long longValue = l.longValue() - System.currentTimeMillis();
            this.f10633f = longValue;
            if (longValue > 0) {
                d();
                return;
            }
            c();
            this.f10628a.run();
        }
    }

    @Override // com.ironsource.lifecycle.c
    public final void b() {
        if (this.f10630c != null) {
            e();
        }
    }

    public final void c() {
        e();
        this.f10631d = false;
        this.f10632e = null;
        d a2 = d.a();
        if (a2.f10614g.contains(this)) {
            a2.f10614g.remove(this);
        }
    }
}
