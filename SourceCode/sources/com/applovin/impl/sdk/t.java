package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private final n f6033a;

    /* renamed from: c  reason: collision with root package name */
    private long f6035c;

    /* renamed from: f  reason: collision with root package name */
    private long f6038f;

    /* renamed from: g  reason: collision with root package name */
    private Object f6039g;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f6034b = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private final Object f6036d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f6037e = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(n nVar) {
        this.f6033a = nVar;
    }

    public void a(final Object obj) {
        if (!com.applovin.impl.mediation.c.c.a(obj) && this.f6034b.compareAndSet(false, true)) {
            this.f6039g = obj;
            this.f6035c = System.currentTimeMillis();
            this.f6033a.D();
            if (v.a()) {
                this.f6033a.D().b("FullScreenAdTracker", "Setting fullscreen ad displayed: " + this.f6035c);
            }
            this.f6033a.am().sendBroadcastWithAdObject("com.applovin.fullscreen_ad_displayed", obj);
            final long longValue = ((Long) this.f6033a.a(com.applovin.impl.sdk.c.b.co)).longValue();
            if (longValue >= 0) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.t.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (t.this.f6034b.get() && System.currentTimeMillis() - t.this.f6035c >= longValue) {
                            t.this.f6033a.D();
                            if (v.a()) {
                                t.this.f6033a.D().b("FullScreenAdTracker", "Resetting \"display\" state...");
                            }
                            t.this.b(obj);
                        }
                    }
                }, longValue);
            }
        }
    }

    public void a(boolean z) {
        synchronized (this.f6036d) {
            this.f6037e.set(z);
            if (z) {
                this.f6038f = System.currentTimeMillis();
                this.f6033a.D();
                if (v.a()) {
                    this.f6033a.D().b("FullScreenAdTracker", "Setting fullscreen ad pending display: " + this.f6038f);
                }
                final long longValue = ((Long) this.f6033a.a(com.applovin.impl.sdk.c.b.cn)).longValue();
                if (longValue >= 0) {
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.sdk.t.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (t.this.a() && System.currentTimeMillis() - t.this.f6038f >= longValue) {
                                t.this.f6033a.D();
                                if (v.a()) {
                                    t.this.f6033a.D().b("FullScreenAdTracker", "Resetting \"pending display\" state...");
                                }
                                t.this.f6037e.set(false);
                            }
                        }
                    }, longValue);
                }
            } else {
                this.f6038f = 0L;
                this.f6033a.D();
                if (v.a()) {
                    this.f6033a.D().b("FullScreenAdTracker", "Setting fullscreen ad not pending display: " + System.currentTimeMillis());
                }
            }
        }
    }

    public boolean a() {
        return this.f6037e.get();
    }

    public void b(Object obj) {
        if (!com.applovin.impl.mediation.c.c.a(obj) && this.f6034b.compareAndSet(true, false)) {
            this.f6039g = null;
            this.f6033a.D();
            if (v.a()) {
                this.f6033a.D().b("FullScreenAdTracker", "Setting fullscreen ad hidden: " + System.currentTimeMillis());
            }
            this.f6033a.am().sendBroadcastWithAdObject("com.applovin.fullscreen_ad_hidden", obj);
        }
    }

    public boolean b() {
        return this.f6034b.get();
    }

    public Object c() {
        return this.f6039g;
    }
}
