package com.adcolony.sdk;

import android.util.Log;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g0 {

    /* renamed from: f  reason: collision with root package name */
    static boolean f316f = false;

    /* renamed from: g  reason: collision with root package name */
    static int f317g = 3;

    /* renamed from: h  reason: collision with root package name */
    static int f318h = 1;

    /* renamed from: a  reason: collision with root package name */
    private f1 f319a = c0.b();

    /* renamed from: b  reason: collision with root package name */
    private e1 f320b = null;

    /* renamed from: c  reason: collision with root package name */
    private ExecutorService f321c = null;

    /* renamed from: d  reason: collision with root package name */
    private final Queue<Runnable> f322d = new ConcurrentLinkedQueue();

    /* renamed from: e  reason: collision with root package name */
    s0 f323e;

    /* loaded from: classes.dex */
    class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            g0.this.b(c0.d(h0Var.a(), "module"), 0, c0.h(h0Var.a(), "message"), true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f325a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f326b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f327c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f328d;

        b(int i, String str, int i2, boolean z) {
            this.f325a = i;
            this.f326b = str;
            this.f327c = i2;
            this.f328d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            g0.this.a(this.f325a, this.f326b, this.f327c);
            int i = 0;
            while (i <= this.f326b.length() / 4000) {
                int i2 = i * 4000;
                i++;
                int min = Math.min(i * 4000, this.f326b.length());
                if (this.f327c == 3) {
                    g0 g0Var = g0.this;
                    if (g0Var.a(c0.f(g0Var.f319a, Integer.toString(this.f325a)), 3, this.f328d)) {
                        Log.d("AdColony [TRACE]", this.f326b.substring(i2, min));
                    }
                }
                if (this.f327c == 2) {
                    g0 g0Var2 = g0.this;
                    if (g0Var2.a(c0.f(g0Var2.f319a, Integer.toString(this.f325a)), 2, this.f328d)) {
                        Log.i("AdColony [INFO]", this.f326b.substring(i2, min));
                    }
                }
                if (this.f327c == 1) {
                    g0 g0Var3 = g0.this;
                    if (g0Var3.a(c0.f(g0Var3.f319a, Integer.toString(this.f325a)), 1, this.f328d)) {
                        Log.w("AdColony [WARNING]", this.f326b.substring(i2, min));
                    }
                }
                if (this.f327c == 0) {
                    g0 g0Var4 = g0.this;
                    if (g0Var4.a(c0.f(g0Var4.f319a, Integer.toString(this.f325a)), 0, this.f328d)) {
                        Log.e("AdColony [ERROR]", this.f326b.substring(i2, min));
                    }
                }
                if (this.f327c == -1 && g0.f317g >= -1) {
                    Log.e("AdColony [FATAL]", this.f326b.substring(i2, min));
                }
            }
        }
    }

    /* loaded from: classes.dex */
    class c implements j0 {
        c(g0 g0Var) {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            g0.f317g = c0.d(h0Var.a(), "level");
        }
    }

    /* loaded from: classes.dex */
    class d implements j0 {
        d() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            g0.this.b(c0.d(h0Var.a(), "module"), 3, c0.h(h0Var.a(), "message"), false);
        }
    }

    /* loaded from: classes.dex */
    class e implements j0 {
        e() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            g0.this.b(c0.d(h0Var.a(), "module"), 3, c0.h(h0Var.a(), "message"), true);
        }
    }

    /* loaded from: classes.dex */
    class f implements j0 {
        f() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            g0.this.b(c0.d(h0Var.a(), "module"), 2, c0.h(h0Var.a(), "message"), false);
        }
    }

    /* loaded from: classes.dex */
    class g implements j0 {
        g() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            g0.this.b(c0.d(h0Var.a(), "module"), 2, c0.h(h0Var.a(), "message"), true);
        }
    }

    /* loaded from: classes.dex */
    class h implements j0 {
        h() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            g0.this.b(c0.d(h0Var.a(), "module"), 1, c0.h(h0Var.a(), "message"), false);
        }
    }

    /* loaded from: classes.dex */
    class i implements j0 {
        i() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            g0.this.b(c0.d(h0Var.a(), "module"), 1, c0.h(h0Var.a(), "message"), true);
        }
    }

    /* loaded from: classes.dex */
    class j implements j0 {
        j() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            g0.this.b(c0.d(h0Var.a(), "module"), 0, c0.h(h0Var.a(), "message"), false);
        }
    }

    void b(int i2, int i3, String str, boolean z) {
        if (a(a(i2, i3, str, z))) {
            return;
        }
        synchronized (this.f322d) {
            this.f322d.add(a(i2, i3, str, z));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        com.adcolony.sdk.a.a("Log.set_log_level", new c(this));
        com.adcolony.sdk.a.a("Log.public.trace", new d());
        com.adcolony.sdk.a.a("Log.private.trace", new e());
        com.adcolony.sdk.a.a("Log.public.info", new f());
        com.adcolony.sdk.a.a("Log.private.info", new g());
        com.adcolony.sdk.a.a("Log.public.warning", new h());
        com.adcolony.sdk.a.a("Log.private.warning", new i());
        com.adcolony.sdk.a.a("Log.public.error", new j());
        com.adcolony.sdk.a.a("Log.private.error", new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        ExecutorService executorService = this.f321c;
        if (executorService == null || executorService.isShutdown() || this.f321c.isTerminated()) {
            this.f321c = Executors.newSingleThreadExecutor();
        }
        synchronized (this.f322d) {
            while (!this.f322d.isEmpty()) {
                a(this.f322d.poll());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i2, String str, boolean z) {
        b(0, i2, str, z);
    }

    private Runnable a(int i2, int i3, String str, boolean z) {
        return new b(i2, str, i3, z);
    }

    boolean a(f1 f1Var, int i2, boolean z) {
        int d2 = c0.d(f1Var, "print_level");
        boolean b2 = c0.b(f1Var, "log_private");
        if (f1Var.b()) {
            d2 = f317g;
            b2 = f316f;
        }
        return (!z || b2) && d2 != 4 && d2 >= i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(e1 e1Var) {
        this.f319a = a(e1Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1 b() {
        return this.f320b;
    }

    boolean a(f1 f1Var, int i2) {
        int d2 = c0.d(f1Var, "send_level");
        if (f1Var.b()) {
            d2 = f318h;
        }
        return d2 >= i2 && d2 != 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(HashMap<String, Object> hashMap) {
        try {
            s0 s0Var = new s0(new d0(new URL("https://wd.adcolony.com/logs")), Executors.newSingleThreadScheduledExecutor(), hashMap);
            this.f323e = s0Var;
            s0Var.a(5L, TimeUnit.SECONDS);
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, int i3) {
        if (this.f323e == null) {
            return;
        }
        if (i3 == 3 && a(c0.f(this.f319a, Integer.toString(i2)), 3)) {
            this.f323e.a(str);
        } else if (i3 == 2 && a(c0.f(this.f319a, Integer.toString(i2)), 2)) {
            this.f323e.c(str);
        } else if (i3 == 1 && a(c0.f(this.f319a, Integer.toString(i2)), 1)) {
            this.f323e.d(str);
        } else if (i3 == 0 && a(c0.f(this.f319a, Integer.toString(i2)), 0)) {
            this.f323e.b(str);
        }
    }

    f1 a(e1 e1Var) {
        f1 b2 = c0.b();
        for (int i2 = 0; i2 < e1Var.b(); i2++) {
            f1 a2 = c0.a(e1Var, i2);
            c0.a(b2, Integer.toString(c0.d(a2, "id")), a2);
        }
        return b2;
    }

    private boolean a(Runnable runnable) {
        try {
            ExecutorService executorService = this.f321c;
            if (executorService == null || executorService.isShutdown() || this.f321c.isTerminated()) {
                return false;
            }
            this.f321c.submit(runnable);
            return true;
        } catch (RejectedExecutionException unused) {
            Log.e("ADCLogError", "Internal error when submitting log to executor service.");
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(e1 e1Var) {
        if (e1Var != null) {
            e1Var.b("level");
            e1Var.b("message");
        }
        this.f320b = e1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0 a() {
        return this.f323e;
    }
}
