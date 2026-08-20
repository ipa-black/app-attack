package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.SystemClock;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class b implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private final n f5545a;

    /* renamed from: b  reason: collision with root package name */
    private final v f5546b;

    /* renamed from: c  reason: collision with root package name */
    private final a f5547c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.sdk.utils.p f5548d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f5549e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private long f5550f;

    /* loaded from: classes.dex */
    public interface a {
        void onAdExpired();
    }

    public b(n nVar, a aVar) {
        this.f5545a = nVar;
        this.f5546b = nVar.D();
        this.f5547c = aVar;
    }

    private void a(long j) {
        synchronized (this.f5549e) {
            a();
            this.f5550f = System.currentTimeMillis() + j;
            this.f5545a.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
            this.f5545a.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
            if (((Boolean) this.f5545a.a(com.applovin.impl.sdk.c.a.F)).booleanValue() || !this.f5545a.ag().isApplicationPaused()) {
                this.f5548d = com.applovin.impl.sdk.utils.p.a(j, this.f5545a, new Runnable() { // from class: com.applovin.impl.sdk.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.a();
                        b.this.f5547c.onAdExpired();
                    }
                });
            }
        }
    }

    private void b() {
        com.applovin.impl.sdk.utils.p pVar = this.f5548d;
        if (pVar != null) {
            pVar.d();
            this.f5548d = null;
        }
    }

    private void c() {
        synchronized (this.f5549e) {
            b();
        }
    }

    private void d() {
        boolean z;
        synchronized (this.f5549e) {
            long currentTimeMillis = this.f5550f - System.currentTimeMillis();
            if (currentTimeMillis <= 0) {
                a();
                z = true;
            } else {
                a(currentTimeMillis);
                z = false;
            }
        }
        if (z) {
            this.f5547c.onAdExpired();
        }
    }

    public void a() {
        synchronized (this.f5549e) {
            b();
            this.f5545a.am().unregisterReceiver(this);
        }
    }

    public boolean a(com.applovin.impl.mediation.a.a aVar) {
        long C;
        if (aVar instanceof com.applovin.impl.mediation.a.c) {
            C = ((com.applovin.impl.mediation.a.c) aVar).z();
        } else if (!(aVar instanceof com.applovin.impl.mediation.a.d)) {
            throw new IllegalArgumentException("Ad does not support scheduling expiration");
        } else {
            C = ((com.applovin.impl.mediation.a.d) aVar).C();
        }
        long elapsedRealtime = C - (SystemClock.elapsedRealtime() - aVar.u());
        if (elapsedRealtime > ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            if (v.a()) {
                this.f5546b.b("AdExpirationManager", "Scheduling ad expiration " + TimeUnit.MILLISECONDS.toSeconds(elapsedRealtime) + " seconds from now for " + aVar.getAdUnitId() + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            a(elapsedRealtime);
            return true;
        } else if (v.a()) {
            this.f5546b.b("AdExpirationManager", "Ad is already expired");
            return false;
        } else {
            return false;
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            c();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            d();
        }
    }
}
