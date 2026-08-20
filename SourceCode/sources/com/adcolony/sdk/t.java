package com.adcolony.sdk;

import com.adcolony.sdk.e0;
import com.adcolony.sdk.s;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements s.a {

    /* renamed from: a  reason: collision with root package name */
    private LinkedBlockingQueue<Runnable> f538a = new LinkedBlockingQueue<>();

    /* renamed from: b  reason: collision with root package name */
    private int f539b = 4;

    /* renamed from: c  reason: collision with root package name */
    private int f540c = 16;

    /* renamed from: d  reason: collision with root package name */
    private double f541d = 1.0d;

    /* renamed from: e  reason: collision with root package name */
    private ThreadPoolExecutor f542e = new ThreadPoolExecutor(this.f539b, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, this.f538a);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            t tVar = t.this;
            tVar.a(new s(h0Var, tVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements j0 {
        b() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            t tVar = t.this;
            tVar.a(new s(h0Var, tVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements j0 {
        c() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            t tVar = t.this;
            tVar.a(new s(h0Var, tVar));
        }
    }

    private void b() {
        int corePoolSize = this.f542e.getCorePoolSize();
        int size = this.f538a.size();
        int i = this.f539b;
        if (size * this.f541d > (corePoolSize - i) + 1 && corePoolSize < this.f540c) {
            this.f542e.setCorePoolSize(corePoolSize + 1);
        } else if (size != 0 || corePoolSize <= i) {
        } else {
            this.f542e.setCorePoolSize(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f542e.allowCoreThreadTimeOut(true);
        com.adcolony.sdk.a.a("WebServices.download", new a());
        com.adcolony.sdk.a.a("WebServices.get", new b());
        com.adcolony.sdk.a.a("WebServices.post", new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i) {
        this.f542e.setKeepAliveTime(i, TimeUnit.SECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i) {
        this.f540c = i;
        int corePoolSize = this.f542e.getCorePoolSize();
        int i2 = this.f540c;
        if (corePoolSize > i2) {
            this.f542e.setCorePoolSize(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(s sVar) {
        b();
        try {
            this.f542e.execute(sVar);
        } catch (RejectedExecutionException unused) {
            new e0.a().a("RejectedExecutionException: ThreadPoolExecutor unable to ").a("execute download for url " + sVar.l).a(e0.i);
            a(sVar, sVar.b(), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.f539b = i;
        int corePoolSize = this.f542e.getCorePoolSize();
        int i2 = this.f539b;
        if (corePoolSize < i2) {
            this.f542e.setCorePoolSize(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(double d2) {
        this.f541d = d2;
    }

    @Override // com.adcolony.sdk.s.a
    public void a(s sVar, h0 h0Var, Map<String, List<String>> map) {
        f1 b2 = c0.b();
        c0.a(b2, "url", sVar.l);
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, sVar.n);
        c0.b(b2, "status", sVar.p);
        c0.a(b2, TtmlNode.TAG_BODY, sVar.m);
        c0.b(b2, "size", sVar.o);
        if (map != null) {
            f1 b3 = c0.b();
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String obj = entry.getValue().toString();
                String substring = obj.substring(1, obj.length() - 1);
                if (entry.getKey() != null) {
                    c0.a(b3, entry.getKey(), substring);
                }
            }
            c0.a(b2, "headers", b3);
        }
        h0Var.a(b2).c();
    }
}
