package com.criteo.publisher.n0;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* compiled from: AppLifecycleUtil.java */
/* loaded from: classes2.dex */
public class e implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.a.a f9214a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.e f9215b;

    /* renamed from: c  reason: collision with root package name */
    private int f9216c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f9217d = 0;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9218e = false;

    /* renamed from: f  reason: collision with root package name */
    private boolean f9219f = false;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public e(com.criteo.publisher.a.a aVar, com.criteo.publisher.e eVar) {
        this.f9214a = aVar;
        this.f9215b = eVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (this.f9219f) {
            return;
        }
        this.f9219f = true;
        this.f9214a.d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        this.f9216c++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (this.f9217d == 0 && !this.f9218e) {
            this.f9214a.b();
        }
        this.f9218e = false;
        this.f9217d++;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f9218e = true;
        this.f9217d--;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (this.f9216c == 1) {
            if (this.f9218e && this.f9217d == 0) {
                this.f9214a.c();
            }
            this.f9214a.a();
            this.f9215b.c();
        }
        this.f9218e = false;
        this.f9216c--;
    }
}
