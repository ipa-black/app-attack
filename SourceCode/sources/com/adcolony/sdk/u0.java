package com.adcolony.sdk;

import android.content.Context;
import com.adcolony.sdk.e0;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u0 {

    /* renamed from: a  reason: collision with root package name */
    private final ScheduledExecutorService f579a = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: b  reason: collision with root package name */
    private ScheduledFuture<?> f580b;

    /* renamed from: c  reason: collision with root package name */
    private ScheduledFuture<?> f581c;

    /* renamed from: d  reason: collision with root package name */
    private final t0 f582d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            u0.this.f580b = null;
            u0.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.this.f582d.g()) {
                com.adcolony.sdk.a.b().r().i();
                u0.this.f581c = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u0(t0 t0Var) {
        this.f582d = t0Var;
    }

    private void d() {
        if (this.f580b == null) {
            try {
                this.f580b = this.f579a.schedule(new a(), this.f582d.a(), TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e2) {
                new e0.a().a("RejectedExecutionException when scheduling session stop ").a(e2.toString()).a(e0.i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        new e0.a().a("AdColony session ending, releasing Context.").a(e0.f293d);
        com.adcolony.sdk.a.b().c(true);
        com.adcolony.sdk.a.a((Context) null);
        this.f582d.f(true);
        this.f582d.g(true);
        this.f582d.j();
        if (com.adcolony.sdk.a.b().r().f()) {
            ScheduledFuture<?> scheduledFuture = this.f581c;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                this.f581c.cancel(false);
            }
            try {
                this.f581c = this.f579a.schedule(new b(), 10L, TimeUnit.SECONDS);
            } catch (RejectedExecutionException e2) {
                new e0.a().a("RejectedExecutionException when scheduling message pumping stop ").a(e2.toString()).a(e0.i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        a();
    }

    private void a() {
        ScheduledFuture<?> scheduledFuture = this.f580b;
        if (scheduledFuture == null || scheduledFuture.isCancelled()) {
            return;
        }
        this.f580b.cancel(false);
        this.f580b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        d();
    }
}
