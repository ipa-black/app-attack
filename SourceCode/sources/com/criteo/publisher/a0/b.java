package com.criteo.publisher.a0;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import com.criteo.publisher.n0.o;
import java.lang.ref.WeakReference;
import java.util.List;
/* compiled from: TopActivityFinder.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f8621a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Activity> f8622b = new WeakReference<>(null);

    public b(Context context) {
        this.f8621a = context;
    }

    public ComponentName a() {
        Activity activity = this.f8622b.get();
        if (activity != null) {
            return activity.getComponentName();
        }
        ActivityManager activityManager = (ActivityManager) this.f8621a.getSystemService("activity");
        if (o.a(activityManager)) {
            try {
                List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
                if (runningTasks.isEmpty()) {
                    return null;
                }
                ComponentName componentName = runningTasks.get(0).topActivity;
                if (componentName.getPackageName().startsWith(this.f8621a.getPackageName())) {
                    return componentName;
                }
                return null;
            } catch (SecurityException e2) {
                o.a((Throwable) e2);
                return null;
            }
        }
        return null;
    }

    /* compiled from: TopActivityFinder.java */
    /* loaded from: classes2.dex */
    class a extends com.criteo.publisher.a0.a {
        a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            b.this.f8622b = new WeakReference(activity);
        }

        @Override // com.criteo.publisher.a0.a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (activity.equals(b.this.f8622b.get())) {
                b.this.f8622b = new WeakReference(null);
            }
        }
    }

    public void a(Application application) {
        application.registerActivityLifecycleCallbacks(new a());
    }
}
