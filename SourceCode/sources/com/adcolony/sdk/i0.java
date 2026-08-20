package com.adcolony.sdk;

import android.content.Context;
import com.adcolony.sdk.e0;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i0 {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedHashMap<Integer, k0> f346a = new LinkedHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private int f347b = 2;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<String, ArrayList<j0>> f348c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private int f349d = 1;

    /* renamed from: e  reason: collision with root package name */
    private final LinkedBlockingQueue<f1> f350e = new LinkedBlockingQueue<>();

    /* renamed from: f  reason: collision with root package name */
    private boolean f351f = false;

    /* renamed from: g  reason: collision with root package name */
    private final ScheduledExecutorService f352g = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: h  reason: collision with root package name */
    private final ExecutorService f353h = Executors.newSingleThreadExecutor();
    private ScheduledFuture<?> i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f354a;

        a(Context context) {
            this.f354a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            f1 b2 = com.adcolony.sdk.a.b().u().b();
            f1 b3 = c0.b();
            c0.a(b2, "os_name", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
            c0.a(b3, "filepath", com.adcolony.sdk.a.b().z().a() + "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5");
            c0.a(b3, "info", b2);
            c0.b(b3, "m_origin", 0);
            c0.b(b3, "m_id", i0.a(i0.this));
            c0.a(b3, "m_type", "Controller.create");
            try {
                l.b(this.f354a, new h0(b3));
            } catch (RuntimeException e2) {
                new e0.a().a(e2.toString() + ": during WebView initialization.").a(" Disabling AdColony.").a(e0.f297h);
                AdColony.disable();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    f1 f1Var = (f1) i0.this.f350e.poll(60L, TimeUnit.SECONDS);
                    if (f1Var == null) {
                        synchronized (i0.this.f350e) {
                            if (i0.this.f350e.peek() == null) {
                                i0.this.f351f = false;
                                return;
                            }
                        }
                    } else {
                        i0.this.b(f1Var);
                    }
                } catch (InterruptedException e2) {
                    new e0.a().a("Native messages thread was interrupted: ").a(e2.toString()).a(e0.i);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.adcolony.sdk.a.f();
            if (i0.this.f()) {
                return;
            }
            i0.this.i();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f358a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ f1 f359b;

        d(String str, f1 f1Var) {
            this.f358a = str;
            this.f359b = f1Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.this.a(this.f358a, this.f359b);
        }
    }

    static /* synthetic */ int a(i0 i0Var) {
        int i = i0Var.f349d;
        i0Var.f349d = i + 1;
        return i;
    }

    private void g() {
        if (this.i == null) {
            try {
                this.i = this.f352g.scheduleAtFixedRate(new c(), 0L, 17L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e2) {
                new e0.a().a("Error when scheduling message pumping").a(e2.toString()).a(e0.i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(f1 f1Var) {
        try {
            if (f1Var.c("m_id", this.f349d)) {
                this.f349d++;
            }
            f1Var.c("m_origin", 0);
            int b2 = f1Var.b("m_target");
            if (b2 == 0) {
                a(f1Var);
                return;
            }
            k0 k0Var = this.f346a.get(Integer.valueOf(b2));
            if (k0Var != null) {
                k0Var.a(f1Var);
            }
        } catch (JSONException e2) {
            new e0.a().a("JSON error in ADCMessageDispatcher's sendMessage(): ").a(e2.toString()).a(e0.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LinkedHashMap<Integer, k0> d() {
        return this.f346a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        int i = this.f347b;
        this.f347b = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        for (k0 k0Var : this.f346a.values()) {
            if (k0Var.a()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        if (f()) {
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        ScheduledFuture<?> scheduledFuture = this.i;
        if (scheduledFuture != null) {
            if (!scheduledFuture.isCancelled()) {
                this.i.cancel(false);
            }
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        synchronized (this.f346a) {
            ArrayList arrayList = new ArrayList(this.f346a.values());
            Collections.reverse(arrayList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((k0) it.next()).b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str, j0 j0Var) {
        synchronized (this.f348c) {
            ArrayList<j0> arrayList = this.f348c.get(str);
            if (arrayList != null) {
                arrayList.remove(j0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, j0 j0Var) {
        ArrayList<j0> arrayList = this.f348c.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f348c.put(str, arrayList);
        }
        arrayList.add(j0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(k0 k0Var) {
        return b(k0Var.getAdcModuleId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(int i) {
        synchronized (this.f346a) {
            k0 remove = this.f346a.remove(Integer.valueOf(i));
            if (remove != null) {
                remove.c();
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        Context a2;
        k b2 = com.adcolony.sdk.a.b();
        if (b2.E() || b2.F() || (a2 = com.adcolony.sdk.a.a()) == null) {
            return;
        }
        b();
        z0.b(new a(a2));
    }

    private void b() {
        if (this.f351f) {
            return;
        }
        synchronized (this.f350e) {
            if (this.f351f) {
                return;
            }
            this.f351f = true;
            new Thread(new b()).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l c() {
        k0 a2 = a(1);
        if (a2 instanceof l) {
            return (l) a2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k0 a(k0 k0Var) {
        synchronized (this.f346a) {
            this.f346a.put(Integer.valueOf(k0Var.getAdcModuleId()), k0Var);
            h();
        }
        return k0Var;
    }

    private void a(f1 f1Var) {
        b();
        this.f350e.add(f1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, f1 f1Var) {
        synchronized (this.f348c) {
            ArrayList<j0> arrayList = this.f348c.get(str);
            if (arrayList == null) {
                return;
            }
            ArrayList arrayList2 = new ArrayList(arrayList);
            h0 h0Var = new h0(f1Var);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                try {
                    ((j0) it.next()).a(h0Var);
                } catch (RuntimeException e2) {
                    new e0.a().a(e2).a(e0.i);
                    e2.printStackTrace();
                    return;
                }
            }
        }
    }

    k0 a(int i) {
        return this.f346a.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(f1 f1Var) {
        try {
            String e2 = f1Var.e("m_type");
            int b2 = f1Var.b("m_origin");
            d dVar = new d(e2, f1Var);
            if (b2 >= 2) {
                z0.b(dVar);
            } else {
                this.f353h.execute(dVar);
            }
        } catch (RejectedExecutionException e3) {
            new e0.a().a("RejectedExecutionException from message dispatcher's dispatchNativeMessage(): ").a(e3.toString()).a(e0.i);
        } catch (JSONException e4) {
            new e0.a().a("JSON error from message dispatcher's dispatchNativeMessage(): ").a(e4.toString()).a(e0.i);
        }
    }
}
