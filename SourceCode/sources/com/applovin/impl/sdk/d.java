package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class d implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a  reason: collision with root package name */
    private com.applovin.impl.sdk.utils.p f5620a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f5621b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f5622c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private boolean f5623d;

    /* renamed from: e  reason: collision with root package name */
    private final n f5624e;

    /* renamed from: f  reason: collision with root package name */
    private final WeakReference<a> f5625f;

    /* renamed from: g  reason: collision with root package name */
    private long f5626g;

    /* loaded from: classes.dex */
    public interface a {
        void onAdRefresh();
    }

    public d(n nVar, a aVar) {
        this.f5625f = new WeakReference<>(aVar);
        this.f5624e = nVar;
    }

    private void i() {
        synchronized (this.f5621b) {
            com.applovin.impl.sdk.utils.p pVar = this.f5620a;
            if (pVar != null) {
                pVar.b();
            } else {
                this.f5624e.D();
                if (v.a()) {
                    this.f5624e.D().b("AdRefreshManager", "An ad load is in progress. Will pause refresh once the ad finishes loading.");
                }
                this.f5622c.set(true);
            }
        }
    }

    private void j() {
        synchronized (this.f5621b) {
            com.applovin.impl.sdk.utils.p pVar = this.f5620a;
            if (pVar != null) {
                pVar.c();
            } else {
                this.f5622c.set(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        synchronized (this.f5621b) {
            this.f5620a = null;
            if (!((Boolean) this.f5624e.a(com.applovin.impl.sdk.c.a.r)).booleanValue()) {
                this.f5624e.am().unregisterReceiver(this);
            }
        }
    }

    private void l() {
        if (((Boolean) this.f5624e.a(com.applovin.impl.sdk.c.a.q)).booleanValue()) {
            i();
        }
    }

    private void m() {
        if (((Boolean) this.f5624e.a(com.applovin.impl.sdk.c.a.q)).booleanValue()) {
            synchronized (this.f5621b) {
                if (this.f5623d) {
                    this.f5624e.D();
                    if (v.a()) {
                        this.f5624e.D().b("AdRefreshManager", "Fullscreen ad dismissed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                    }
                } else if (this.f5624e.ag().isApplicationPaused()) {
                    this.f5624e.D();
                    if (v.a()) {
                        this.f5624e.D().b("AdRefreshManager", "Waiting for the application to enter foreground to resume the timer.");
                    }
                } else {
                    com.applovin.impl.sdk.utils.p pVar = this.f5620a;
                    if (pVar != null) {
                        pVar.c();
                    }
                }
            }
        }
    }

    public void a(long j) {
        synchronized (this.f5621b) {
            c();
            this.f5626g = j;
            this.f5620a = com.applovin.impl.sdk.utils.p.a(j, this.f5624e, new Runnable() { // from class: com.applovin.impl.sdk.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.k();
                    a aVar = (a) d.this.f5625f.get();
                    if (aVar != null) {
                        aVar.onAdRefresh();
                    }
                }
            });
            if (!((Boolean) this.f5624e.a(com.applovin.impl.sdk.c.a.r)).booleanValue()) {
                this.f5624e.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
                this.f5624e.am().registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
                this.f5624e.am().registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_displayed"));
                this.f5624e.am().registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_hidden"));
            }
            if (((Boolean) this.f5624e.a(com.applovin.impl.sdk.c.a.q)).booleanValue() && (this.f5624e.ah().b() || this.f5624e.ag().isApplicationPaused())) {
                this.f5620a.b();
            }
            if (this.f5622c.compareAndSet(true, false) && ((Boolean) this.f5624e.a(com.applovin.impl.sdk.c.a.s)).booleanValue()) {
                this.f5624e.D();
                if (v.a()) {
                    this.f5624e.D().b("AdRefreshManager", "Pausing refresh for a previous request.");
                }
                this.f5620a.b();
            }
        }
    }

    public boolean a() {
        boolean z;
        synchronized (this.f5621b) {
            z = this.f5620a != null;
        }
        return z;
    }

    public long b() {
        long a2;
        synchronized (this.f5621b) {
            com.applovin.impl.sdk.utils.p pVar = this.f5620a;
            a2 = pVar != null ? pVar.a() : -1L;
        }
        return a2;
    }

    public void c() {
        synchronized (this.f5621b) {
            com.applovin.impl.sdk.utils.p pVar = this.f5620a;
            if (pVar != null) {
                pVar.d();
                k();
            }
        }
    }

    public void d() {
        synchronized (this.f5621b) {
            i();
            this.f5623d = true;
        }
    }

    public void e() {
        synchronized (this.f5621b) {
            j();
            this.f5623d = false;
        }
    }

    public boolean f() {
        return this.f5623d;
    }

    public void g() {
        if (((Boolean) this.f5624e.a(com.applovin.impl.sdk.c.a.p)).booleanValue()) {
            i();
        }
    }

    public void h() {
        a aVar;
        if (((Boolean) this.f5624e.a(com.applovin.impl.sdk.c.a.p)).booleanValue()) {
            synchronized (this.f5621b) {
                if (this.f5623d) {
                    this.f5624e.D();
                    if (v.a()) {
                        this.f5624e.D().b("AdRefreshManager", "Application resumed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh.");
                    }
                } else if (this.f5624e.ah().b()) {
                    this.f5624e.D();
                    if (v.a()) {
                        this.f5624e.D().b("AdRefreshManager", "Waiting for the full screen ad to be dismissed to resume the timer.");
                    }
                } else {
                    boolean z = false;
                    if (this.f5620a != null) {
                        long b2 = this.f5626g - b();
                        long longValue = ((Long) this.f5624e.a(com.applovin.impl.sdk.c.a.o)).longValue();
                        if (longValue < 0 || b2 <= longValue) {
                            this.f5620a.c();
                        } else {
                            c();
                            z = true;
                        }
                    }
                    if (!z || (aVar = this.f5625f.get()) == null) {
                        return;
                    }
                    aVar.onAdRefresh();
                }
            }
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            g();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            h();
        } else if ("com.applovin.fullscreen_ad_displayed".equals(action)) {
            l();
        } else if ("com.applovin.fullscreen_ad_hidden".equals(action)) {
            m();
        }
    }
}
