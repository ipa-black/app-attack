package com.iab.omid.library.appodeal.b;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
/* loaded from: classes2.dex */
public class b implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private static b f10164a = new b();

    /* renamed from: b  reason: collision with root package name */
    private boolean f10165b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10166c;

    /* renamed from: d  reason: collision with root package name */
    private a f10167d;

    /* loaded from: classes2.dex */
    public interface a {
        void a(boolean z);
    }

    private b() {
    }

    public static b a() {
        return f10164a;
    }

    private void a(boolean z) {
        if (this.f10166c != z) {
            this.f10166c = z;
            if (this.f10165b) {
                e();
                a aVar = this.f10167d;
                if (aVar != null) {
                    aVar.a(!z);
                }
            }
        }
    }

    private void e() {
        boolean z = !this.f10166c;
        for (com.iab.omid.library.appodeal.adsession.a aVar : com.iab.omid.library.appodeal.b.a.a().b()) {
            aVar.getAdSessionStatePublisher().a(z);
        }
    }

    public void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public void a(a aVar) {
        this.f10167d = aVar;
    }

    public void b() {
        this.f10165b = true;
        this.f10166c = false;
        e();
    }

    public void c() {
        this.f10165b = false;
        this.f10166c = false;
        this.f10167d = null;
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
        View d2;
        boolean z = true;
        boolean z2 = d().importance != 100;
        boolean z3 = true;
        for (com.iab.omid.library.appodeal.adsession.a aVar : com.iab.omid.library.appodeal.b.a.a().c()) {
            if (aVar.e() && (d2 = aVar.d()) != null && d2.hasWindowFocus()) {
                z3 = false;
            }
        }
        a((z2 && z3) ? false : false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        a(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
