package com.adcolony.sdk;

import android.util.Log;
import com.adcolony.sdk.f0;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.ads.metadata.MediationMetaData;
import io.bidmachine.ads.networks.adcolony.BuildConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    d0 f530a;

    /* renamed from: b  reason: collision with root package name */
    ScheduledExecutorService f531b;

    /* renamed from: d  reason: collision with root package name */
    HashMap<String, Object> f533d;

    /* renamed from: c  reason: collision with root package name */
    List<f0> f532c = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private b0 f534e = new b0("adcolony_android", BuildConfig.ADAPTER_SDK_VERSION_NAME, "Production");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s0.this.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ f0 f536a;

        b(f0 f0Var) {
            this.f536a = f0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            s0.this.f532c.add(this.f536a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(d0 d0Var, ScheduledExecutorService scheduledExecutorService, HashMap<String, Object> hashMap) {
        this.f530a = d0Var;
        this.f531b = scheduledExecutorService;
        this.f533d = hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(long j, TimeUnit timeUnit) {
        try {
            if (!this.f531b.isShutdown() && !this.f531b.isTerminated()) {
                this.f531b.scheduleAtFixedRate(new a(), j, j, timeUnit);
            }
        } catch (RuntimeException unused) {
            Log.e("ADCLogError", "Internal error when submitting remote log to executor service");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b() {
        this.f531b.shutdown();
        try {
            ScheduledExecutorService scheduledExecutorService = this.f531b;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            if (!scheduledExecutorService.awaitTermination(1L, timeUnit)) {
                this.f531b.shutdownNow();
                if (!this.f531b.awaitTermination(1L, timeUnit)) {
                    System.err.println("s0: ScheduledExecutorService did not terminate");
                }
            }
        } catch (InterruptedException unused) {
            this.f531b.shutdownNow();
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void c(String str) {
        b(new f0.a().a(2).a(this.f534e).a(str).a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d(String str) {
        b(new f0.a().a(1).a(this.f534e).a(str).a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void e(String str) {
        this.f533d.put("controllerVersion", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void f(String str) {
        this.f533d.put("sessionId", str);
    }

    void a() {
        synchronized (this) {
            try {
                if (this.f532c.size() > 0) {
                    this.f530a.a(a(this.f534e, this.f532c));
                    this.f532c.clear();
                }
            } catch (IOException unused) {
                this.f532c.clear();
            } catch (JSONException unused2) {
                this.f532c.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void b(String str) {
        b(new f0.a().a(0).a(this.f534e).a(str).a());
    }

    synchronized void b(f0 f0Var) {
        try {
            if (!this.f531b.isShutdown() && !this.f531b.isTerminated()) {
                this.f531b.submit(new b(f0Var));
            }
        } catch (RejectedExecutionException unused) {
            Log.e("ADCLogError", "Internal error when submitting remote log to executor service");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(String str) {
        b(new f0.a().a(3).a(this.f534e).a(str).a());
    }

    String a(b0 b0Var, List<f0> list) throws JSONException {
        f1 f1Var = new f1();
        f1Var.a(FirebaseAnalytics.Param.INDEX, b0Var.b());
        f1Var.a("environment", b0Var.a());
        f1Var.a(MediationMetaData.KEY_VERSION, b0Var.c());
        e1 e1Var = new e1();
        for (f0 f0Var : list) {
            e1Var.a(a(f0Var));
        }
        f1Var.a("logs", e1Var);
        return f1Var.toString();
    }

    private synchronized f1 a(f0 f0Var) throws JSONException {
        f1 f1Var;
        f1Var = new f1(this.f533d);
        f1Var.a("environment", f0Var.a().a());
        f1Var.a("level", f0Var.b());
        f1Var.a("message", f0Var.c());
        f1Var.a("clientTimestamp", f0Var.d());
        f1 f1Var2 = new f1(com.adcolony.sdk.a.b().u().getMediationInfo());
        f1 f1Var3 = new f1(com.adcolony.sdk.a.b().u().getPluginInfo());
        f1Var.a("mediation_network", c0.h(f1Var2, "name"));
        f1Var.a("mediation_network_version", c0.h(f1Var2, MediationMetaData.KEY_VERSION));
        f1Var.a("plugin", c0.h(f1Var3, "name"));
        f1Var.a("plugin_version", c0.h(f1Var3, MediationMetaData.KEY_VERSION));
        e1 b2 = com.adcolony.sdk.a.b().q().b();
        if (b2 == null || b2.a("batteryInfo")) {
            f1Var.b("batteryInfo", com.adcolony.sdk.a.b().n().l());
        }
        if (b2 != null) {
            f1Var.a(b2);
        }
        return f1Var;
    }
}
