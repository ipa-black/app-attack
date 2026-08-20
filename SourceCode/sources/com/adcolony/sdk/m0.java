package com.adcolony.sdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.adcolony.sdk.e0;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m0 {

    /* renamed from: a  reason: collision with root package name */
    private ScheduledExecutorService f420a;

    /* renamed from: b  reason: collision with root package name */
    private ScheduledFuture<?> f421b;

    /* renamed from: c  reason: collision with root package name */
    private String f422c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            m0.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements j0 {
        b() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            m0.this.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m0.this.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        String e2 = e();
        if (e2.equals(this.f422c)) {
            return;
        }
        this.f422c = e2;
        f1 b2 = c0.b();
        c0.a(b2, "network_type", e2);
        new h0("Network.on_status_change", 1, b2).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        ScheduledFuture<?> scheduledFuture = this.f421b;
        if (scheduledFuture != null) {
            if (!scheduledFuture.isCancelled()) {
                this.f421b.cancel(false);
            }
            this.f421b = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e() {
        return a();
    }

    private String a() {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return "none";
        }
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) a2.getApplicationContext().getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager == null ? null : connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return "none";
            }
            int type = activeNetworkInfo.getType();
            if (type == 1) {
                return "wifi";
            }
            return (type == 0 || type >= 2) ? "cell" : "none";
        } catch (SecurityException e2) {
            new e0.a().a("SecurityException - please ensure you added the ").a("ACCESS_NETWORK_STATE permission: ").a(e2.toString()).a(e0.f297h);
            return "none";
        } catch (Exception e3) {
            new e0.a().a("Exception occurred when retrieving activeNetworkInfo in ").a("ADCNetwork.getConnectivityStatus(): ").a(e3.toString()).a(e0.i);
            return "none";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f420a == null) {
            this.f420a = Executors.newSingleThreadScheduledExecutor();
        }
        if (this.f421b == null) {
            try {
                this.f421b = this.f420a.scheduleAtFixedRate(new c(), 0L, 1000L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e2) {
                new e0.a().a("Error when scheduling network checks: ").a(e2.toString()).a(e0.i);
            }
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.f422c = e();
        com.adcolony.sdk.a.a("Network.start_notifications", new a());
        com.adcolony.sdk.a.a("Network.stop_notifications", new b());
    }
}
