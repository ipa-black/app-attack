package com.iab.omid.library.adcolony.b;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
/* loaded from: classes2.dex */
public class b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private static b f9836a = new b();

    /* renamed from: b  reason: collision with root package name */
    private boolean f9837b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9838c;

    /* renamed from: d  reason: collision with root package name */
    private a f9839d;

    /* loaded from: classes2.dex */
    public interface a {
        void a(boolean z);
    }

    private b() {
    }

    public static b a() {
        return f9836a;
    }

    private void a(boolean z) {
        if (this.f9838c != z) {
            this.f9838c = z;
            if (this.f9837b) {
                e();
                a aVar = this.f9839d;
                if (aVar != null) {
                    aVar.a(!z);
                }
            }
        }
    }

    private void e() {
        boolean z = !this.f9838c;
        for (com.iab.omid.library.adcolony.adsession.a aVar : com.iab.omid.library.adcolony.b.a.a().b()) {
            aVar.getAdSessionStatePublisher().a(z);
        }
    }

    public void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public void a(a aVar) {
        this.f9839d = aVar;
    }

    public void b() {
        this.f9837b = true;
        this.f9838c = false;
        e();
    }

    public void c() {
        this.f9837b = false;
        this.f9838c = false;
        this.f9839d = null;
    }

    ActivityManager.RunningAppProcessInfo d() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        a(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        View e2;
        boolean z = true;
        boolean z2 = d().importance != 100;
        boolean z3 = true;
        for (com.iab.omid.library.adcolony.adsession.a aVar : com.iab.omid.library.adcolony.b.a.a().c()) {
            if (aVar.f() && (e2 = aVar.e()) != null && e2.hasWindowFocus()) {
                z3 = false;
            }
        }
        a((z2 && z3) ? false : false);
    }
}
