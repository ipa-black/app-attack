package com.applovin.impl.sdk;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.applovin.impl.sdk.utils.a> f5434a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Activity> f5435b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<Activity> f5436c;

    public a(Context context) {
        this.f5435b = new WeakReference<>(null);
        this.f5436c = new WeakReference<>(null);
        v.f("AppLovinSdk", "Attaching Activity lifecycle manager...");
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            this.f5435b = new WeakReference<>(activity);
            if (activity.hasWindowFocus()) {
                this.f5436c = this.f5435b;
            }
        }
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(this);
    }

    public Activity a() {
        return this.f5435b.get();
    }

    public void a(com.applovin.impl.sdk.utils.a aVar) {
        this.f5434a.add(aVar);
    }

    public Activity b() {
        return this.f5436c.get();
    }

    public void b(com.applovin.impl.sdk.utils.a aVar) {
        this.f5434a.remove(aVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        for (com.applovin.impl.sdk.utils.a aVar : new ArrayList(this.f5434a)) {
            aVar.onActivityCreated(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        for (com.applovin.impl.sdk.utils.a aVar : new ArrayList(this.f5434a)) {
            aVar.onActivityDestroyed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f5436c = new WeakReference<>(null);
        for (com.applovin.impl.sdk.utils.a aVar : new ArrayList(this.f5434a)) {
            aVar.onActivityPaused(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        WeakReference<Activity> weakReference = new WeakReference<>(activity);
        this.f5435b = weakReference;
        this.f5436c = weakReference;
        for (com.applovin.impl.sdk.utils.a aVar : new ArrayList(this.f5434a)) {
            aVar.onActivityResumed(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        for (com.applovin.impl.sdk.utils.a aVar : new ArrayList(this.f5434a)) {
            aVar.onActivitySaveInstanceState(activity, bundle);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        for (com.applovin.impl.sdk.utils.a aVar : new ArrayList(this.f5434a)) {
            aVar.onActivityStarted(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        for (com.applovin.impl.sdk.utils.a aVar : new ArrayList(this.f5434a)) {
            aVar.onActivityStopped(activity);
        }
    }
}
