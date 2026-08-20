package com.iab.omid.library.bytedance2.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
/* loaded from: classes2.dex */
public class d implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private boolean f10285a;

    /* renamed from: b  reason: collision with root package name */
    protected boolean f10286b;

    /* renamed from: c  reason: collision with root package name */
    private a f10287c;

    /* loaded from: classes2.dex */
    public interface a {
        void a(boolean z);
    }

    private void a(boolean z) {
        if (this.f10286b != z) {
            this.f10286b = z;
            if (this.f10285a) {
                b(z);
                a aVar = this.f10287c;
                if (aVar != null) {
                    aVar.a(z);
                }
            }
        }
    }

    private boolean a() {
        return b().importance == 100 || d();
    }

    public void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public void a(a aVar) {
        this.f10287c = aVar;
    }

    ActivityManager.RunningAppProcessInfo b() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    protected void b(boolean z) {
    }

    public boolean c() {
        return this.f10286b;
    }

    protected boolean d() {
        return false;
    }

    public void e() {
        this.f10285a = true;
        boolean a2 = a();
        this.f10286b = a2;
        b(a2);
    }

    public void f() {
        this.f10285a = false;
        this.f10287c = null;
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
        a(true);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        a(a());
    }
}
