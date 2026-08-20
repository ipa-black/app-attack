package com.adcolony.sdk;

import android.os.SystemClock;
import com.adcolony.sdk.e0;
import java.util.LinkedHashMap;
import org.altbeacon.beacon.service.scanner.CycledLeScanner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t0 {

    /* renamed from: b  reason: collision with root package name */
    private int f547b;

    /* renamed from: c  reason: collision with root package name */
    private long f548c;

    /* renamed from: f  reason: collision with root package name */
    private boolean f551f;
    private boolean i;
    private boolean j;
    private boolean k;
    private u0 l;

    /* renamed from: a  reason: collision with root package name */
    private long f546a = CycledLeScanner.ANDROID_N_MAX_SCAN_DURATION_MILLIS;

    /* renamed from: d  reason: collision with root package name */
    private boolean f549d = true;

    /* renamed from: e  reason: collision with root package name */
    private boolean f550e = true;

    /* renamed from: g  reason: collision with root package name */
    private boolean f552g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f553h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            t0.this.j = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f555a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ k f556b;

        b(t0 t0Var, l lVar, k kVar) {
            this.f555a = lVar;
            this.f556b = kVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f555a.b();
            this.f556b.q().d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f557a;

        c(boolean z) {
            this.f557a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            LinkedHashMap<Integer, k0> d2 = com.adcolony.sdk.a.b().r().d();
            synchronized (d2) {
                for (k0 k0Var : d2.values()) {
                    f1 b2 = c0.b();
                    c0.b(b2, "from_window_focus", this.f557a);
                    if (t0.this.f553h && !t0.this.f552g) {
                        c0.b(b2, "app_in_foreground", false);
                        t0.this.f553h = false;
                    }
                    new h0("SessionInfo.on_pause", k0Var.getModuleId(), b2).c();
                }
            }
            com.adcolony.sdk.a.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f559a;

        d(boolean z) {
            this.f559a = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            k b2 = com.adcolony.sdk.a.b();
            LinkedHashMap<Integer, k0> d2 = b2.r().d();
            synchronized (d2) {
                for (k0 k0Var : d2.values()) {
                    f1 b3 = c0.b();
                    c0.b(b3, "from_window_focus", this.f559a);
                    if (t0.this.f553h && t0.this.f552g) {
                        c0.b(b3, "app_in_foreground", true);
                        t0.this.f553h = false;
                    }
                    new h0("SessionInfo.on_resume", k0Var.getModuleId(), b3).c();
                }
            }
            b2.q().d();
        }
    }

    private void h() {
        a(false);
    }

    private void i() {
        b(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(boolean z) {
        k b2 = com.adcolony.sdk.a.b();
        if (this.f551f) {
            return;
        }
        if (this.i) {
            b2.c(false);
            this.i = false;
        }
        this.f547b = 0;
        this.f548c = SystemClock.uptimeMillis();
        this.f549d = true;
        this.f551f = true;
        this.f552g = true;
        this.f553h = false;
        AdColony.c();
        if (z) {
            f1 b3 = c0.b();
            c0.a(b3, "id", z0.a());
            new h0("SessionInfo.on_start", 1, b3).c();
            l c2 = com.adcolony.sdk.a.b().r().c();
            if (c2 != null && !AdColony.a(new b(this, c2, b2))) {
                new e0.a().a("RejectedExecutionException on controller update.").a(e0.i);
            }
        }
        b2.r().h();
        v.a().b();
    }

    public void d() {
        com.adcolony.sdk.a.a("SessionInfo.stopped", new a());
        this.l = new u0(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e() {
        return this.f549d;
    }

    public void f(boolean z) {
        this.i = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(boolean z) {
        this.k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j() {
        s0 a2 = com.adcolony.sdk.a.b().q().a();
        this.f551f = false;
        this.f549d = false;
        if (a2 != null) {
            a2.b();
        }
        f1 b2 = c0.b();
        c0.a(b2, "session_length", (SystemClock.uptimeMillis() - this.f548c) / 1000.0d);
        new h0("SessionInfo.on_stop", 1, b2).c();
        com.adcolony.sdk.a.f();
        AdColony.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(boolean z) {
        if (this.f552g != z) {
            this.f552g = z;
            this.f553h = true;
            if (z) {
                return;
            }
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f551f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f550e = true;
        this.l.b();
        if (AdColony.a(new c(z))) {
            return;
        }
        new e0.a().a("RejectedExecutionException on session pause.").a(e0.i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(boolean z) {
        this.f550e = false;
        this.l.c();
        if (AdColony.a(new d(z))) {
            return;
        }
        new e0.a().a("RejectedExecutionException on session resume.").a(e0.i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(boolean z) {
        if (z && this.f550e) {
            i();
        } else if (!z && !this.f550e) {
            h();
        }
        this.f549d = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        return this.f546a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.f546a = i <= 0 ? this.f546a : i * 1000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f547b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        this.f547b++;
    }
}
