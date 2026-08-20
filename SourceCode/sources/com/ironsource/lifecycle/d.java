package com.ironsource.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.ironsource.lifecycle.b;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public final class d implements Application.ActivityLifecycleCallbacks {
    private static d j = new d();

    /* renamed from: a  reason: collision with root package name */
    static AtomicBoolean f10608a = new AtomicBoolean(false);
    private String i = "IronsourceLifecycleManager";

    /* renamed from: b  reason: collision with root package name */
    int f10609b = 0;

    /* renamed from: c  reason: collision with root package name */
    int f10610c = 0;

    /* renamed from: d  reason: collision with root package name */
    boolean f10611d = true;

    /* renamed from: e  reason: collision with root package name */
    boolean f10612e = true;

    /* renamed from: f  reason: collision with root package name */
    int f10613f = e.f10622a;

    /* renamed from: g  reason: collision with root package name */
    List<c> f10614g = new CopyOnWriteArrayList();

    /* renamed from: h  reason: collision with root package name */
    Runnable f10615h = new Runnable() { // from class: com.ironsource.lifecycle.d.1
        @Override // java.lang.Runnable
        public final void run() {
            d.a(d.this);
            d.this.c();
        }
    };
    private b.a k = new b.a() { // from class: com.ironsource.lifecycle.d.6
        @Override // com.ironsource.lifecycle.b.a
        public final void a(Activity activity) {
            final d dVar = d.this;
            dVar.f10609b++;
            if (dVar.f10609b == 1 && dVar.f10612e) {
                com.ironsource.environment.e.c.f10584a.c(new Runnable() { // from class: com.ironsource.lifecycle.d.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        for (c cVar : d.this.f10614g) {
                            cVar.a();
                        }
                    }
                });
                dVar.f10612e = false;
                dVar.f10613f = e.f10623b;
            }
        }

        @Override // com.ironsource.lifecycle.b.a
        public final void b(Activity activity) {
            final d dVar = d.this;
            dVar.f10610c++;
            if (dVar.f10610c == 1) {
                if (!dVar.f10611d) {
                    com.ironsource.environment.e.c cVar = com.ironsource.environment.e.c.f10584a;
                    com.ironsource.environment.e.c.b(dVar.f10615h);
                    return;
                }
                com.ironsource.environment.e.c.f10584a.c(new Runnable() { // from class: com.ironsource.lifecycle.d.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        Iterator it = d.this.f10614g.iterator();
                        while (it.hasNext()) {
                            it.next();
                        }
                    }
                });
                dVar.f10611d = false;
                dVar.f10613f = e.f10624c;
            }
        }
    };

    public static d a() {
        return j;
    }

    static /* synthetic */ void a(d dVar) {
        if (dVar.f10610c == 0) {
            dVar.f10611d = true;
            com.ironsource.environment.e.c.f10584a.c(new Runnable() { // from class: com.ironsource.lifecycle.d.4
                @Override // java.lang.Runnable
                public final void run() {
                    Iterator it = d.this.f10614g.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                }
            });
            dVar.f10613f = e.f10625d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f10609b == 0 && this.f10611d) {
            com.ironsource.environment.e.c.f10584a.c(new Runnable() { // from class: com.ironsource.lifecycle.d.5
                @Override // java.lang.Runnable
                public final void run() {
                    for (c cVar : d.this.f10614g) {
                        cVar.b();
                    }
                }
            });
            this.f10612e = true;
            this.f10613f = e.f10626e;
        }
    }

    public final void a(c cVar) {
        if (!IronsourceLifecycleProvider.a() || this.f10614g.contains(cVar)) {
            return;
        }
        this.f10614g.add(cVar);
    }

    public final boolean b() {
        return this.f10613f == e.f10626e;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        b.b(activity);
        b a2 = b.a(activity);
        if (a2 != null) {
            a2.f10607a = this.k;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        int i = this.f10610c - 1;
        this.f10610c = i;
        if (i == 0) {
            com.ironsource.environment.e.c cVar = com.ironsource.environment.e.c.f10584a;
            com.ironsource.environment.e.c.a(this.f10615h, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f10609b--;
        c();
    }
}
