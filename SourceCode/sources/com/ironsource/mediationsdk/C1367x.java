package com.ironsource.mediationsdk;

import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
/* renamed from: com.ironsource.mediationsdk.x  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1367x {

    /* renamed from: a  reason: collision with root package name */
    InterfaceC1346c f11489a;

    /* renamed from: b  reason: collision with root package name */
    private Runnable f11490b = new Runnable() { // from class: com.ironsource.mediationsdk.x.1
        @Override // java.lang.Runnable
        public final void run() {
            IronLog.INTERNAL.verbose("loaded ads are expired");
            if (C1367x.this.f11489a != null) {
                C1367x.this.f11489a.c_();
            }
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private int f11491c;

    /* renamed from: d  reason: collision with root package name */
    private com.ironsource.lifecycle.f f11492d;

    public C1367x(int i, InterfaceC1346c interfaceC1346c) {
        this.f11489a = interfaceC1346c;
        this.f11491c = i;
    }

    private boolean b() {
        return this.f11491c > 0;
    }

    public final void a() {
        if (!b() || this.f11492d == null) {
            return;
        }
        IronLog.INTERNAL.verbose("canceling expiration timer");
        this.f11492d.c();
        this.f11492d = null;
    }

    public final void a(long j) {
        if (b()) {
            long millis = TimeUnit.MINUTES.toMillis(this.f11491c) - Math.max(j, 0L);
            if (millis <= 0) {
                IronLog.INTERNAL.verbose("no delay - onAdExpired called");
                this.f11489a.c_();
                return;
            }
            a();
            this.f11492d = new com.ironsource.lifecycle.f(millis, this.f11490b, true);
            Calendar calendar = Calendar.getInstance();
            calendar.add(14, (int) millis);
            IronLog.INTERNAL.verbose("loaded ads will expire on: " + calendar.getTime() + " in " + String.format("%.2f", Double.valueOf((millis / 1000.0d) / 60.0d)) + " minutes");
        }
    }
}
