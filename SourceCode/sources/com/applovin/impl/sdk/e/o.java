package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.Utils;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private static final ExecutorService f5718a = Executors.newFixedThreadPool(4);

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f5719b;

    /* renamed from: c  reason: collision with root package name */
    private final com.applovin.impl.sdk.v f5720c;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f5721d;

    /* renamed from: e  reason: collision with root package name */
    private final ScheduledThreadPoolExecutor f5722e;

    /* renamed from: f  reason: collision with root package name */
    private final List<c> f5723f = new ArrayList(5);

    /* renamed from: g  reason: collision with root package name */
    private final Object f5724g = new Object();

    /* renamed from: h  reason: collision with root package name */
    private boolean f5725h;

    /* loaded from: classes.dex */
    public enum a {
        MAIN,
        TIMEOUT,
        BACKGROUND,
        ADVERTISING_INFO_COLLECTION,
        POSTBACKS,
        CACHING_INTERSTITIAL,
        CACHING_INCENTIVIZED,
        CACHING_OTHER,
        REWARD,
        MEDIATION_MAIN,
        MEDIATION_TIMEOUT,
        MEDIATION_BACKGROUND,
        MEDIATION_POSTBACKS,
        MEDIATION_BANNER,
        MEDIATION_INTERSTITIAL,
        MEDIATION_APP_OPEN,
        MEDIATION_INCENTIVIZED,
        MEDIATION_REWARDED_INTERSTITIAL,
        MEDIATION_REWARD
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b implements ThreadFactory {

        /* renamed from: b  reason: collision with root package name */
        private final String f5737b;

        b(String str) {
            this.f5737b = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:" + this.f5737b + ":" + Utils.shortenKey(o.this.f5719b.C()));
            thread.setDaemon(true);
            thread.setPriority(((Integer) o.this.f5719b.a(com.applovin.impl.sdk.c.b.fr)).intValue());
            thread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.applovin.impl.sdk.e.o.b.1
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public void uncaughtException(Thread thread2, Throwable th) {
                    com.applovin.impl.sdk.v unused = o.this.f5720c;
                    if (com.applovin.impl.sdk.v.a()) {
                        o.this.f5720c.b("TaskManager", "Caught unhandled exception", th);
                    }
                }
            });
            return thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.sdk.n f5739a;

        /* renamed from: b  reason: collision with root package name */
        private final String f5740b;

        /* renamed from: c  reason: collision with root package name */
        private final com.applovin.impl.sdk.v f5741c;

        /* renamed from: d  reason: collision with root package name */
        private final com.applovin.impl.sdk.e.a f5742d;

        /* renamed from: e  reason: collision with root package name */
        private final a f5743e;

        c(com.applovin.impl.sdk.n nVar, com.applovin.impl.sdk.e.a aVar, a aVar2) {
            this.f5739a = nVar;
            this.f5741c = nVar.D();
            this.f5740b = aVar.e();
            this.f5742d = aVar;
            this.f5743e = aVar2;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r6 = this;
                java.lang.String r0 = " queue finished task "
                com.applovin.impl.sdk.utils.h.a()     // Catch: java.lang.Throwable -> L4a
                com.applovin.impl.sdk.n r1 = r6.f5739a     // Catch: java.lang.Throwable -> L4a
                boolean r1 = r1.c()     // Catch: java.lang.Throwable -> L4a
                if (r1 == 0) goto L35
                com.applovin.impl.sdk.e.a r1 = r6.f5742d     // Catch: java.lang.Throwable -> L4a
                boolean r1 = r1.g()     // Catch: java.lang.Throwable -> L4a
                if (r1 == 0) goto L16
                goto L35
            L16:
                boolean r1 = com.applovin.impl.sdk.v.a()     // Catch: java.lang.Throwable -> L4a
                if (r1 == 0) goto L25
                com.applovin.impl.sdk.v r1 = r6.f5741c     // Catch: java.lang.Throwable -> L4a
                java.lang.String r2 = r6.f5740b     // Catch: java.lang.Throwable -> L4a
                java.lang.String r3 = "Task re-scheduled..."
                r1.c(r2, r3)     // Catch: java.lang.Throwable -> L4a
            L25:
                com.applovin.impl.sdk.n r1 = r6.f5739a     // Catch: java.lang.Throwable -> L4a
                com.applovin.impl.sdk.e.o r1 = r1.V()     // Catch: java.lang.Throwable -> L4a
                com.applovin.impl.sdk.e.a r2 = r6.f5742d     // Catch: java.lang.Throwable -> L4a
                com.applovin.impl.sdk.e.o$a r3 = r6.f5743e     // Catch: java.lang.Throwable -> L4a
                r4 = 2000(0x7d0, double:9.88E-321)
                r1.a(r2, r3, r4)     // Catch: java.lang.Throwable -> L4a
                goto L3a
            L35:
                com.applovin.impl.sdk.e.a r1 = r6.f5742d     // Catch: java.lang.Throwable -> L4a
                r1.run()     // Catch: java.lang.Throwable -> L4a
            L3a:
                boolean r1 = com.applovin.impl.sdk.v.a()
                if (r1 == 0) goto L84
                com.applovin.impl.sdk.v r1 = r6.f5741c
                java.lang.String r2 = r6.f5740b
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                goto L69
            L4a:
                r1 = move-exception
                boolean r2 = com.applovin.impl.sdk.v.a()     // Catch: java.lang.Throwable -> L85
                if (r2 == 0) goto L5a
                com.applovin.impl.sdk.v r2 = r6.f5741c     // Catch: java.lang.Throwable -> L85
                java.lang.String r3 = r6.f5740b     // Catch: java.lang.Throwable -> L85
                java.lang.String r4 = "Task failed execution"
                r2.b(r3, r4, r1)     // Catch: java.lang.Throwable -> L85
            L5a:
                boolean r1 = com.applovin.impl.sdk.v.a()
                if (r1 == 0) goto L84
                com.applovin.impl.sdk.v r1 = r6.f5741c
                java.lang.String r2 = r6.f5740b
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
            L69:
                com.applovin.impl.sdk.e.o$a r4 = r6.f5743e
                java.lang.StringBuilder r3 = r3.append(r4)
                java.lang.StringBuilder r0 = r3.append(r0)
                com.applovin.impl.sdk.e.a r3 = r6.f5742d
                java.lang.String r3 = r3.e()
                java.lang.StringBuilder r0 = r0.append(r3)
                java.lang.String r0 = r0.toString()
                r1.c(r2, r0)
            L84:
                return
            L85:
                r1 = move-exception
                boolean r2 = com.applovin.impl.sdk.v.a()
                if (r2 == 0) goto Lb0
                com.applovin.impl.sdk.v r2 = r6.f5741c
                java.lang.String r3 = r6.f5740b
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                com.applovin.impl.sdk.e.o$a r5 = r6.f5743e
                java.lang.StringBuilder r4 = r4.append(r5)
                java.lang.StringBuilder r0 = r4.append(r0)
                com.applovin.impl.sdk.e.a r4 = r6.f5742d
                java.lang.String r4 = r4.e()
                java.lang.StringBuilder r0 = r0.append(r4)
                java.lang.String r0 = r0.toString()
                r2.c(r3, r0)
            Lb0:
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.e.o.c.run():void");
        }
    }

    public o(com.applovin.impl.sdk.n nVar) {
        this.f5719b = nVar;
        this.f5720c = nVar.D();
        this.f5721d = a("auxiliary_operations", ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cl)).intValue());
        this.f5722e = a("shared_thread_pool", ((Integer) nVar.a(com.applovin.impl.sdk.c.b.ap)).intValue());
    }

    private ScheduledThreadPoolExecutor a(String str, int i) {
        return new ScheduledThreadPoolExecutor(i, new b(str));
    }

    private void a(final Runnable runnable, long j, boolean z) {
        if (j <= 0) {
            this.f5722e.submit(runnable);
        } else if (z) {
            com.applovin.impl.sdk.utils.f.a(j, this.f5719b, new Runnable() { // from class: com.applovin.impl.sdk.e.o.1
                @Override // java.lang.Runnable
                public void run() {
                    o.this.f5722e.execute(runnable);
                }
            });
        } else {
            this.f5722e.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    private boolean a(c cVar) {
        if (cVar.f5742d.g()) {
            return false;
        }
        synchronized (this.f5724g) {
            if (this.f5725h) {
                return false;
            }
            this.f5723f.add(cVar);
            return true;
        }
    }

    public void a(com.applovin.impl.sdk.e.a aVar) {
        if (aVar == null) {
            if (com.applovin.impl.sdk.v.a()) {
                this.f5720c.e("TaskManager", "Attempted to execute null task immediately");
                return;
            }
            return;
        }
        try {
            if (Utils.isMainThread() && ((Boolean) this.f5719b.a(com.applovin.impl.sdk.c.b.fq)).booleanValue()) {
                this.f5722e.submit(aVar);
            } else {
                aVar.run();
            }
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.v.a()) {
                this.f5720c.b(aVar.e(), "Task failed execution", th);
            }
        }
    }

    public void a(com.applovin.impl.sdk.e.a aVar, a aVar2) {
        a(aVar, aVar2, 0L);
    }

    public void a(com.applovin.impl.sdk.e.a aVar, a aVar2, long j) {
        a(aVar, aVar2, j, false);
    }

    public void a(com.applovin.impl.sdk.e.a aVar, a aVar2, long j, boolean z) {
        if (aVar == null) {
            throw new IllegalArgumentException("No task specified");
        }
        if (j < 0) {
            throw new IllegalArgumentException("Invalid delay (millis) specified: " + j);
        }
        if (!a(new c(this.f5719b, aVar, aVar2))) {
            a(aVar, j, z);
        } else if (com.applovin.impl.sdk.v.a()) {
            this.f5720c.c(aVar.e(), "Task execution delayed until after init");
        }
    }

    public void a(Runnable runnable) {
        this.f5721d.submit(runnable);
    }

    public boolean a() {
        return this.f5725h;
    }

    public Executor b() {
        return this.f5722e;
    }

    public ExecutorService c() {
        return f5718a;
    }

    public void d() {
        synchronized (this.f5724g) {
            this.f5725h = false;
        }
    }

    public void e() {
        synchronized (this.f5724g) {
            this.f5725h = true;
            for (c cVar : this.f5723f) {
                a(cVar.f5742d, cVar.f5743e);
            }
            this.f5723f.clear();
        }
    }
}
