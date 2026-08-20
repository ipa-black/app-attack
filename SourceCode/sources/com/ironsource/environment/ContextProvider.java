package com.ironsource.environment;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3.dex */
public class ContextProvider {

    /* renamed from: e  reason: collision with root package name */
    private static volatile ContextProvider f10519e;

    /* renamed from: a  reason: collision with root package name */
    private Activity f10520a;

    /* renamed from: b  reason: collision with root package name */
    private Context f10521b;

    /* renamed from: d  reason: collision with root package name */
    private Handler f10523d = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<String, a> f10522c = new ConcurrentHashMap<>();

    /* loaded from: classes3.dex */
    public interface a {
        void onPause(Activity activity);

        void onResume(Activity activity);
    }

    private ContextProvider() {
    }

    public static ContextProvider getInstance() {
        if (f10519e == null) {
            synchronized (ContextProvider.class) {
                if (f10519e == null) {
                    f10519e = new ContextProvider();
                }
            }
        }
        return f10519e;
    }

    public Context getApplicationContext() {
        Activity activity;
        Context context = this.f10521b;
        return (context != null || (activity = this.f10520a) == null) ? context : activity.getApplicationContext();
    }

    public Activity getCurrentActiveActivity() {
        return this.f10520a;
    }

    public void onPause(Activity activity) {
        if (activity != null) {
            for (a aVar : this.f10522c.values()) {
                aVar.onPause(activity);
            }
        }
    }

    public void onResume(Activity activity) {
        if (activity != null) {
            this.f10520a = activity;
            for (a aVar : this.f10522c.values()) {
                aVar.onResume(this.f10520a);
            }
        }
    }

    @Deprecated
    public void postOnUIThread(Runnable runnable) {
        Handler handler = this.f10523d;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    public void registerLifeCycleListener(a aVar) {
        this.f10522c.put(aVar.getClass().getSimpleName(), aVar);
    }

    public void updateActivity(Activity activity) {
        if (activity != null) {
            this.f10520a = activity;
        }
    }

    public void updateAppContext(Context context) {
        if (context != null) {
            this.f10521b = context;
        }
    }
}
