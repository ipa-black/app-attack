package com.adcolony.sdk;

import com.adcolony.sdk.e0;
import com.adcolony.sdk.z0;
import java.util.Date;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private boolean f670a = true;

    /* renamed from: b  reason: collision with root package name */
    private final Runnable f671b = new a();

    /* renamed from: c  reason: collision with root package name */
    private Runnable f672c;

    /* renamed from: d  reason: collision with root package name */
    private c f673d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            new h0("AdColony.heartbeat", 1).c();
            z.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ z0.c f675a;

        b(z0.c cVar) {
            this.f675a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.f672c = null;
            if (com.adcolony.sdk.a.d()) {
                k b2 = com.adcolony.sdk.a.b();
                if (this.f675a.a() && b2.I()) {
                    b2.a();
                    new e0.a().a("Controller heartbeat timeout occurred. ").a("Timeout set to: " + this.f675a.b() + " ms. ").a("Interval set to: " + b2.h() + " ms. ").a("Heartbeat last reply: ").a(z.this.f673d).a(e0.i);
                    z.this.a();
                } else if (b2.F()) {
                    z.this.a();
                } else {
                    z0.a(z.this.f671b, b2.h());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final f1 f677a;

        /* synthetic */ c(f1 f1Var, a aVar) {
            this(f1Var);
        }

        public String toString() {
            return this.f677a.toString();
        }

        private c(f1 f1Var) {
            f1 m = f1Var != null ? f1Var.m("payload") : c0.b();
            this.f677a = m;
            c0.a(m, "heartbeatLastTimestamp", f0.f303e.format(new Date()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (com.adcolony.sdk.a.d()) {
            z0.c cVar = new z0.c(com.adcolony.sdk.a.b().i());
            b bVar = new b(cVar);
            this.f672c = bVar;
            z0.a(bVar, cVar.d());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        a();
        this.f670a = false;
        z0.a(this.f671b, com.adcolony.sdk.a.b().h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.f670a = true;
        z0.c(this.f671b);
        z0.c(this.f672c);
        this.f672c = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(h0 h0Var) {
        if (!com.adcolony.sdk.a.d() || this.f670a) {
            return;
        }
        this.f673d = new c(h0Var.a(), null);
        Runnable runnable = this.f672c;
        if (runnable != null) {
            z0.c(runnable);
            z0.b(this.f672c);
            return;
        }
        z0.c(this.f671b);
        z0.a(this.f671b, com.adcolony.sdk.a.b().h());
    }
}
