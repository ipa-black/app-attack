package com.ironsource.sdk.controller;

import android.content.Context;
import android.os.CountDownTimer;
import android.util.Log;
import com.ironsource.sdk.IronSourceNetwork;
import com.ironsource.sdk.g.d;
import com.ironsource.sdk.utils.Logger;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class g implements e, m {

    /* renamed from: a  reason: collision with root package name */
    public m f11643a;

    /* renamed from: d  reason: collision with root package name */
    private CountDownTimer f11646d;

    /* renamed from: g  reason: collision with root package name */
    private final com.ironsource.environment.e.a f11649g;

    /* renamed from: b  reason: collision with root package name */
    private final String f11644b = "g";

    /* renamed from: c  reason: collision with root package name */
    private d.b f11645c = d.b.None;

    /* renamed from: e  reason: collision with root package name */
    private final b f11647e = new b("NativeCommandExecutor");

    /* renamed from: f  reason: collision with root package name */
    private final b f11648f = new b("ControllerCommandsExecutor");

    /* JADX WARN: Type inference failed for: r9v1, types: [com.ironsource.sdk.controller.g$10] */
    public g(final Context context, final c cVar, final com.ironsource.sdk.service.d dVar, final j jVar, com.ironsource.environment.e.a aVar) {
        this.f11649g = aVar;
        b(new Runnable() { // from class: com.ironsource.sdk.controller.g.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    g gVar = g.this;
                    gVar.f11643a = g.a(gVar, context, cVar, dVar, jVar);
                    g.this.f11643a.h();
                } catch (Exception e2) {
                    g.this.d(Log.getStackTraceString(e2));
                }
            }
        });
        this.f11646d = new CountDownTimer(200000L, 1000L) { // from class: com.ironsource.sdk.controller.g.10
            {
                super(200000L, 1000L);
            }

            @Override // android.os.CountDownTimer
            public final void onFinish() {
                Logger.i(g.this.f11644b, "Global Controller Timer Finish");
                g.this.d("controller html - download timeout");
            }

            @Override // android.os.CountDownTimer
            public final void onTick(long j) {
                Logger.i(g.this.f11644b, "Global Controller Timer Tick " + j);
            }
        }.start();
    }

    static /* synthetic */ x a(g gVar, Context context, c cVar, com.ironsource.sdk.service.d dVar, j jVar) {
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.f11510b);
        final x xVar = new x(context, jVar, cVar, gVar, gVar.f11649g);
        com.ironsource.sdk.h.b bVar = new com.ironsource.sdk.h.b(context, xVar.a(), new com.ironsource.sdk.h.a(com.ironsource.environment.e.a.a()), new com.ironsource.sdk.h.d(xVar.a().f12082b));
        xVar.p = new v(context, dVar);
        xVar.n = new q(context);
        xVar.o = new r(context);
        xVar.q = new k(context);
        xVar.r = new a(cVar);
        a aVar = xVar.r;
        if (xVar.t == null) {
            xVar.t = new y() { // from class: com.ironsource.sdk.controller.x.11
                @Override // com.ironsource.sdk.controller.y
                public final void a(String str, JSONObject jSONObject) {
                    xVar.b(x.a(xVar, str, jSONObject.toString()));
                }
            };
        }
        aVar.f11606a = xVar.t;
        xVar.s = new l(xVar.a().f12082b, bVar);
        return xVar;
    }

    private void b(Runnable runnable) {
        com.ironsource.environment.e.a aVar = this.f11649g;
        if (aVar != null) {
            aVar.a(runnable);
        } else {
            Logger.e(this.f11644b, "mThreadManager = null");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d(String str) {
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.f11511c, new com.ironsource.sdk.a.a().a("callfailreason", str).f11500a);
        this.f11643a = new p(str, this.f11649g, this);
        this.f11647e.a();
        this.f11647e.b();
    }

    private boolean i() {
        return d.b.Ready.equals(this.f11645c);
    }

    @Override // com.ironsource.sdk.controller.e
    public final void a() {
        this.f11645c = d.b.Loaded;
        this.f11647e.a();
        this.f11647e.b();
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(Context context) {
        if (i()) {
            this.f11643a.a(context);
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final com.ironsource.sdk.g.c cVar, final Map<String, String> map, final com.ironsource.sdk.j.a.b bVar) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.7
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(cVar, map, bVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final com.ironsource.sdk.g.c cVar, final Map<String, String> map, final com.ironsource.sdk.j.a.c cVar2) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.2
            @Override // java.lang.Runnable
            public final void run() {
                com.ironsource.sdk.a.a a2 = new com.ironsource.sdk.a.a().a("demandsourcename", cVar.f12025a).a("producttype", com.ironsource.sdk.a.e.a(cVar, d.e.Interstitial)).a("isbiddinginstance", Boolean.valueOf(com.ironsource.sdk.a.e.a(cVar)));
                com.ironsource.sdk.service.a aVar = com.ironsource.sdk.service.a.f12109a;
                com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.i, a2.a("custom_c", Long.valueOf(com.ironsource.sdk.service.a.c(cVar.f12026b))).f11500a);
                g.this.f11643a.a(cVar, map, cVar2);
            }
        });
    }

    public final void a(Runnable runnable) {
        this.f11647e.a(runnable);
    }

    @Override // com.ironsource.sdk.controller.e
    public final void a(String str) {
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.l, new com.ironsource.sdk.a.a().a("callfailreason", str).f11500a);
        com.ironsource.sdk.j.d initListener = IronSourceNetwork.getInitListener();
        if (initListener != null) {
            initListener.onFail(new com.ironsource.sdk.g.e(1001, str));
            IronSourceNetwork.setInitListener(null);
        }
        CountDownTimer countDownTimer = this.f11646d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        d(str);
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final String str, final com.ironsource.sdk.j.a.c cVar) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.17
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(str, cVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final String str, final String str2, final com.ironsource.sdk.g.c cVar, final com.ironsource.sdk.j.a.b bVar) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.5
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(str, str2, cVar, bVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final String str, final String str2, final com.ironsource.sdk.g.c cVar, final com.ironsource.sdk.j.a.c cVar2) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.16
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(str, str2, cVar, cVar2);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final String str, final String str2, final com.ironsource.sdk.g.c cVar, final com.ironsource.sdk.j.a.d dVar) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.14
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(str, str2, cVar, dVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final String str, final String str2, final com.ironsource.sdk.j.e eVar) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.13
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(str, str2, eVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final String str, final String str2, final Map<String, String> map, final com.ironsource.sdk.j.e eVar) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.11
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(str, str2, map, eVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final Map<String, String> map, final com.ironsource.sdk.j.e eVar) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.12
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(map, eVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final JSONObject jSONObject) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.8
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(jSONObject);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final JSONObject jSONObject, final com.ironsource.sdk.j.a.c cVar) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.3
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(jSONObject, cVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final JSONObject jSONObject, final com.ironsource.sdk.j.a.d dVar) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.15
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.a(jSONObject, dVar);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.e
    public final void b() {
        if (d.c.Web.equals(c())) {
            com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.f11512d);
            com.ironsource.sdk.j.d initListener = IronSourceNetwork.getInitListener();
            if (initListener != null) {
                initListener.onSuccess();
                IronSourceNetwork.setInitListener(null);
            }
        }
        this.f11645c = d.b.Ready;
        CountDownTimer countDownTimer = this.f11646d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f11648f.a();
        this.f11648f.b();
        this.f11643a.g();
    }

    @Override // com.ironsource.sdk.controller.m
    public final void b(Context context) {
        if (i()) {
            this.f11643a.b(context);
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void b(final com.ironsource.sdk.g.c cVar, final Map<String, String> map, final com.ironsource.sdk.j.a.c cVar2) {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.4
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.b(cVar, map, cVar2);
            }
        });
    }

    @Override // com.ironsource.sdk.controller.e
    public final void b(String str) {
        com.ironsource.sdk.a.d.a(com.ironsource.sdk.a.f.u, new com.ironsource.sdk.a.a().a("generalmessage", str).f11500a);
        CountDownTimer countDownTimer = this.f11646d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        d(str);
    }

    @Override // com.ironsource.sdk.controller.m
    public final d.c c() {
        return this.f11643a.c();
    }

    @Override // com.ironsource.sdk.controller.m
    public final boolean c(String str) {
        if (i()) {
            return this.f11643a.c(str);
        }
        return false;
    }

    @Override // com.ironsource.sdk.controller.m
    public final void d() {
        this.f11648f.a(new Runnable() { // from class: com.ironsource.sdk.controller.g.6
            @Override // java.lang.Runnable
            public final void run() {
                g.this.f11643a.d();
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public void destroy() {
        CountDownTimer countDownTimer = this.f11646d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.f11646d = null;
        b(new Runnable() { // from class: com.ironsource.sdk.controller.g.9
            @Override // java.lang.Runnable
            public final void run() {
                if (g.this.f11643a != null) {
                    g.this.f11643a.destroy();
                    g.this.f11643a = null;
                }
            }
        });
    }

    @Override // com.ironsource.sdk.controller.m
    public final void e() {
        if (i()) {
            this.f11643a.e();
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void f() {
        if (i()) {
            this.f11643a.f();
        }
    }

    @Override // com.ironsource.sdk.controller.m
    @Deprecated
    public final void g() {
    }

    @Override // com.ironsource.sdk.controller.m
    public final void h() {
    }
}
