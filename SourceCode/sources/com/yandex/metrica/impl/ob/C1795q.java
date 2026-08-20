package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.Collection;
/* renamed from: com.yandex.metrica.impl.ob.q  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1795q extends C1647k0 {

    /* renamed from: a  reason: collision with root package name */
    private Application f15421a;

    /* renamed from: b  reason: collision with root package name */
    private volatile c f15422b = c.NOT_WATCHING_YET;

    /* renamed from: c  reason: collision with root package name */
    private final C1841rm<a, b> f15423c = new C1841rm<>(true);

    /* renamed from: com.yandex.metrica.impl.ob.q$a */
    /* loaded from: classes5.dex */
    public enum a {
        CREATED,
        RESUMED,
        PAUSED,
        STARTED,
        STOPPED,
        DESTROYED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.q$b */
    /* loaded from: classes5.dex */
    public interface b {
        void a(Activity activity, a aVar);
    }

    /* renamed from: com.yandex.metrica.impl.ob.q$c */
    /* loaded from: classes5.dex */
    public enum c {
        WATCHING(null),
        NO_APPLICATION("Bad application object"),
        NOT_WATCHING_YET("Internal inconsistency");
        

        /* renamed from: a  reason: collision with root package name */
        public final String f15435a;

        c(String str) {
            this.f15435a = str;
        }
    }

    private synchronized void b() {
        c cVar = this.f15422b;
        c cVar2 = c.WATCHING;
        if (cVar != cVar2 && !this.f15423c.b()) {
            if (this.f15421a == null) {
                this.f15422b = c.NO_APPLICATION;
                return;
            }
            this.f15422b = cVar2;
            this.f15421a.registerActivityLifecycleCallbacks(this);
        }
    }

    public synchronized void a(Context context) {
        if (this.f15421a == null) {
            try {
                this.f15421a = (Application) context.getApplicationContext();
            } catch (Throwable unused) {
            }
        }
        b();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        a(a.CREATED, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        a(a.DESTROYED, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        a(a.PAUSED, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        a(a.RESUMED, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        a(a.STARTED, activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        a(a.STOPPED, activity);
    }

    public synchronized void a(Application application) {
        if (this.f15421a == null) {
            this.f15421a = application;
        }
        b();
    }

    public c a() {
        return this.f15422b;
    }

    private void a(a aVar, Activity activity) {
        Collection<b> a2;
        synchronized (this) {
            a2 = this.f15423c.a(aVar);
        }
        if (a2 != null) {
            for (b bVar : a2) {
                bVar.a(activity, aVar);
            }
        }
    }

    public synchronized void a(b bVar, a... aVarArr) {
        if (aVarArr.length == 0) {
            aVarArr = a.values();
        }
        for (a aVar : aVarArr) {
            this.f15423c.a(aVar, bVar);
        }
        b();
    }
}
