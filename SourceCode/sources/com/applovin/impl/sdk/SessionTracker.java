package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.AppKilledService;
import com.applovin.impl.sdk.utils.Utils;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class SessionTracker {
    public static final String ACTION_APPLICATION_PAUSED = "com.applovin.application_paused";
    public static final String ACTION_APPLICATION_RESUMED = "com.applovin.application_resumed";

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f5410b = new AtomicBoolean();

    /* renamed from: a  reason: collision with root package name */
    final n f5411a;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f5412c = new AtomicBoolean();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f5413d = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private final AtomicInteger f5414e = new AtomicInteger();

    /* renamed from: f  reason: collision with root package name */
    private Date f5415f;

    /* renamed from: g  reason: collision with root package name */
    private Date f5416g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SessionTracker(final n nVar) {
        this.f5411a = nVar;
        final Application application = (Application) nVar.P();
        application.registerActivityLifecycleCallbacks(new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.sdk.SessionTracker.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                super.onActivityResumed(activity);
                SessionTracker.this.a();
            }
        });
        application.registerComponentCallbacks(new ComponentCallbacks2() { // from class: com.applovin.impl.sdk.SessionTracker.2
            @Override // android.content.ComponentCallbacks
            public void onConfigurationChanged(Configuration configuration) {
            }

            @Override // android.content.ComponentCallbacks
            public void onLowMemory() {
            }

            @Override // android.content.ComponentCallbacks2
            public void onTrimMemory(int i) {
                SessionTracker.this.f5414e.set(i);
                if (i == 20) {
                    SessionTracker.this.b();
                }
            }
        });
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        application.registerReceiver(new BroadcastReceiver() { // from class: com.applovin.impl.sdk.SessionTracker.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if ("android.intent.action.USER_PRESENT".equals(action)) {
                    if (Utils.isCurrentProcessInForeground()) {
                        SessionTracker.this.a();
                    }
                } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                    SessionTracker.this.b();
                }
            }
        }, intentFilter);
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.cx)).booleanValue() && f5410b.compareAndSet(false, true)) {
            final Intent intent = new Intent(application, AppKilledService.class);
            application.startService(intent);
            nVar.am().registerReceiver(new AppLovinBroadcastManager.Receiver() { // from class: com.applovin.impl.sdk.SessionTracker.4
                @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
                public void onReceive(Context context, Intent intent2, Map<String, Object> map) {
                    application.stopService(intent);
                    nVar.am().unregisterReceiver(this);
                }
            }, new IntentFilter(AppKilledService.ACTION_APP_KILLED));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (this.f5413d.compareAndSet(true, false)) {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f5413d.compareAndSet(false, true)) {
            c();
        }
    }

    private void c() {
        this.f5411a.D();
        if (v.a()) {
            this.f5411a.D().b("SessionTracker", "Application Paused");
        }
        this.f5411a.am().sendBroadcastSync(new Intent(ACTION_APPLICATION_PAUSED), null);
        if (this.f5412c.get()) {
            return;
        }
        boolean booleanValue = ((Boolean) this.f5411a.a(com.applovin.impl.sdk.c.b.ds)).booleanValue();
        long millis = TimeUnit.MINUTES.toMillis(((Long) this.f5411a.a(com.applovin.impl.sdk.c.b.du)).longValue());
        if (this.f5415f == null || System.currentTimeMillis() - this.f5415f.getTime() >= millis) {
            ((EventServiceImpl) this.f5411a.x()).trackEvent("paused");
            if (booleanValue) {
                this.f5415f = new Date();
            }
        }
        if (booleanValue) {
            return;
        }
        this.f5415f = new Date();
    }

    private void d() {
        this.f5411a.D();
        if (v.a()) {
            this.f5411a.D().b("SessionTracker", "Application Resumed");
        }
        boolean booleanValue = ((Boolean) this.f5411a.a(com.applovin.impl.sdk.c.b.ds)).booleanValue();
        long longValue = ((Long) this.f5411a.a(com.applovin.impl.sdk.c.b.dt)).longValue();
        this.f5411a.am().sendBroadcastSync(new Intent(ACTION_APPLICATION_RESUMED), null);
        if (this.f5412c.getAndSet(false)) {
            return;
        }
        long millis = TimeUnit.MINUTES.toMillis(longValue);
        if (this.f5416g == null || System.currentTimeMillis() - this.f5416g.getTime() >= millis) {
            ((EventServiceImpl) this.f5411a.x()).trackEvent("resumed");
            if (booleanValue) {
                this.f5416g = new Date();
            }
        }
        if (!booleanValue) {
            this.f5416g = new Date();
        }
        this.f5411a.W().a(com.applovin.impl.sdk.d.f.m);
    }

    public int getLastTrimMemoryLevel() {
        return this.f5414e.get();
    }

    public boolean isApplicationPaused() {
        return this.f5413d.get();
    }

    public void pauseForClick() {
        this.f5412c.set(true);
    }

    public void resumeForClick() {
        this.f5412c.set(false);
    }
}
