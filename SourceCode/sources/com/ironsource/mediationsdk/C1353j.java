package com.ironsource.mediationsdk;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* renamed from: com.ironsource.mediationsdk.j  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1353j {

    /* renamed from: b  reason: collision with root package name */
    private static C1353j f11160b;

    /* renamed from: a  reason: collision with root package name */
    int f11161a;

    /* renamed from: c  reason: collision with root package name */
    private long f11162c = 0;

    /* renamed from: d  reason: collision with root package name */
    private boolean f11163d = false;

    private C1353j() {
    }

    public static synchronized C1353j a() {
        C1353j c1353j;
        synchronized (C1353j.class) {
            if (f11160b == null) {
                f11160b = new C1353j();
            }
            c1353j = f11160b;
        }
        return c1353j;
    }

    public final void a(final IronSourceBannerLayout ironSourceBannerLayout, final IronSourceError ironSourceError) {
        synchronized (this) {
            if (this.f11163d) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis() - this.f11162c;
            int i = this.f11161a;
            if (currentTimeMillis > i * 1000) {
                b(ironSourceBannerLayout, ironSourceError);
                return;
            }
            this.f11163d = true;
            long j = (i * 1000) - currentTimeMillis;
            IronLog.INTERNAL.verbose("delaying callback by " + j);
            com.ironsource.environment.e.c cVar = com.ironsource.environment.e.c.f10584a;
            com.ironsource.environment.e.c.b(new Runnable() { // from class: com.ironsource.mediationsdk.j.1
                @Override // java.lang.Runnable
                public final void run() {
                    C1353j.this.b(ironSourceBannerLayout, ironSourceError);
                }
            }, j);
        }
    }

    void b(IronSourceBannerLayout ironSourceBannerLayout, IronSourceError ironSourceError) {
        if (ironSourceBannerLayout != null) {
            this.f11162c = System.currentTimeMillis();
            this.f11163d = false;
            ironSourceBannerLayout.a(ironSourceError);
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this) {
            z = this.f11163d;
        }
        return z;
    }
}
