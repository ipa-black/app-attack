package com.ironsource.sdk.controller;

import android.content.Context;
import com.ironsource.sdk.g.d;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class p implements m {

    /* renamed from: a  reason: collision with root package name */
    String f11734a;

    /* renamed from: b  reason: collision with root package name */
    private final com.ironsource.environment.e.a f11735b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(String str, com.ironsource.environment.e.a aVar, final e eVar) {
        this.f11735b = aVar;
        this.f11734a = str;
        a(new Runnable() { // from class: com.ironsource.sdk.controller.p.1
            @Override // java.lang.Runnable
            public final void run() {
                eVar.b();
            }
        });
    }

    private void a(Runnable runnable) {
        com.ironsource.environment.e.a aVar = this.f11735b;
        if (aVar != null) {
            aVar.c(runnable);
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(Context context) {
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(com.ironsource.sdk.g.c cVar, final Map<String, String> map, final com.ironsource.sdk.j.a.b bVar) {
        if (bVar != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.4
                @Override // java.lang.Runnable
                public final void run() {
                    bVar.d((String) map.get("demandSourceName"), p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final com.ironsource.sdk.g.c cVar, Map<String, String> map, final com.ironsource.sdk.j.a.c cVar2) {
        if (cVar2 != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.12
                @Override // java.lang.Runnable
                public final void run() {
                    cVar2.b(cVar.f12026b, p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final String str, final com.ironsource.sdk.j.a.c cVar) {
        if (cVar != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.11
                @Override // java.lang.Runnable
                public final void run() {
                    cVar.b(str, p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, com.ironsource.sdk.g.c cVar, com.ironsource.sdk.j.a.b bVar) {
        if (bVar != null) {
            bVar.a(d.e.Banner, cVar.f12026b, this.f11734a);
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, final com.ironsource.sdk.g.c cVar, final com.ironsource.sdk.j.a.c cVar2) {
        if (cVar2 != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.10
                @Override // java.lang.Runnable
                public final void run() {
                    cVar2.a(d.e.Interstitial, cVar.f12026b, p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, final com.ironsource.sdk.g.c cVar, final com.ironsource.sdk.j.a.d dVar) {
        if (dVar != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.8
                @Override // java.lang.Runnable
                public final void run() {
                    dVar.a(d.e.RewardedVideo, cVar.f12026b, p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, final com.ironsource.sdk.j.e eVar) {
        if (eVar != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.7
                @Override // java.lang.Runnable
                public final void run() {
                    eVar.onGetOWCreditsFailed(p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(String str, String str2, Map<String, String> map, final com.ironsource.sdk.j.e eVar) {
        if (eVar != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.5
                @Override // java.lang.Runnable
                public final void run() {
                    eVar.onOfferwallInitFail(p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(Map<String, String> map, final com.ironsource.sdk.j.e eVar) {
        if (eVar != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.6
                @Override // java.lang.Runnable
                public final void run() {
                    eVar.onOWShowFail(p.this.f11734a);
                    eVar.onOfferwallInitFail(p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(JSONObject jSONObject) {
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final JSONObject jSONObject, final com.ironsource.sdk.j.a.c cVar) {
        if (cVar != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.2
                @Override // java.lang.Runnable
                public final void run() {
                    cVar.c(jSONObject.optString("demandSourceName"), p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void a(final JSONObject jSONObject, final com.ironsource.sdk.j.a.d dVar) {
        if (dVar != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.9
                @Override // java.lang.Runnable
                public final void run() {
                    dVar.a(jSONObject.optString("demandSourceName"), p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final void b(Context context) {
    }

    @Override // com.ironsource.sdk.controller.m
    public final void b(final com.ironsource.sdk.g.c cVar, Map<String, String> map, final com.ironsource.sdk.j.a.c cVar2) {
        if (cVar2 != null) {
            a(new Runnable() { // from class: com.ironsource.sdk.controller.p.3
                @Override // java.lang.Runnable
                public final void run() {
                    cVar2.c(cVar.f12026b, p.this.f11734a);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.controller.m
    public final d.c c() {
        return d.c.Native;
    }

    @Override // com.ironsource.sdk.controller.m
    public final boolean c(String str) {
        return false;
    }

    @Override // com.ironsource.sdk.controller.m
    public final void d() {
    }

    @Override // com.ironsource.sdk.controller.m
    public final void destroy() {
    }

    @Override // com.ironsource.sdk.controller.m
    public final void e() {
    }

    @Override // com.ironsource.sdk.controller.m
    public final void f() {
    }

    @Override // com.ironsource.sdk.controller.m
    public final void g() {
    }

    @Override // com.ironsource.sdk.controller.m
    public final void h() {
    }
}
