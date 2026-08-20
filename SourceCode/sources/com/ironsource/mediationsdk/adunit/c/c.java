package com.ironsource.mediationsdk.adunit.c;

import com.ironsource.mediationsdk.adunit.c.b.a;
import com.ironsource.mediationsdk.ae;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    com.ironsource.mediationsdk.adunit.c.b.a f11012a;

    /* renamed from: b  reason: collision with root package name */
    ae f11013b;

    /* renamed from: c  reason: collision with root package name */
    private Timer f11014c;

    public c(com.ironsource.mediationsdk.adunit.c.b.a aVar, ae aeVar) {
        this.f11012a = aVar;
        this.f11013b = aeVar;
    }

    private void c() {
        Timer timer = this.f11014c;
        if (timer != null) {
            timer.cancel();
            this.f11014c = null;
        }
    }

    public final void a() {
        if (this.f11012a.f11004a != a.EnumC0323a.MANUAL) {
            a(this.f11012a.f11006c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        c();
        Timer timer = new Timer();
        this.f11014c = timer;
        timer.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.adunit.c.c.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public final void run() {
                c.this.f11013b.d();
            }
        }, j);
    }

    public final void b() {
        if (this.f11012a.f11004a != a.EnumC0323a.MANUAL) {
            a(0L);
        }
    }
}
