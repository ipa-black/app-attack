package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class o1 {

    /* renamed from: a  reason: collision with root package name */
    public static b f7263a;

    /* renamed from: b  reason: collision with root package name */
    public static a f7264b;

    /* renamed from: c  reason: collision with root package name */
    public static k1<r1, p1> f7265c;

    /* loaded from: classes.dex */
    public static class a extends u<p1, r1, c> {
        public a(b bVar) {
            super(bVar, AdType.Interstitial, com.appodeal.ads.segments.h.b());
            this.z = 1.1f;
            this.A = 1.4f;
        }

        @Override // com.appodeal.ads.u
        public final l a(r rVar, AdNetwork adNetwork, d0 d0Var) {
            return new p1((r1) rVar, adNetwork, d0Var);
        }

        @Override // com.appodeal.ads.u
        public final void a(JSONObject jSONObject) {
        }

        @Override // com.appodeal.ads.u
        public final void b(Context context) {
            q1.a().f7293d.a(context, (Context) new c());
        }

        @Override // com.appodeal.ads.u
        public final String i() {
            return "interstitials_disabled";
        }

        @Override // com.appodeal.ads.u
        public final boolean k() {
            return q1.a().f7292c;
        }

        @Override // com.appodeal.ads.u
        public final r1 a(c cVar) {
            return new r1(cVar);
        }

        @Override // com.appodeal.ads.u
        public final boolean a(r1 r1Var, int i) {
            JSONObject jSONObject;
            AdNetwork b2;
            r1 r1Var2 = r1Var;
            if (r1Var2.f7333a.size() == 1 && (jSONObject = r1Var2.G) != null && jSONObject == r1Var2.a(i)) {
                String optString = r1Var2.G.optString("status");
                if (!TextUtils.isEmpty(optString) && (b2 = this.f7690e.b(optString)) != null && b2.isInterstitialShowing()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.appodeal.ads.u
        public final boolean a(AdNetwork adNetwork, JSONObject jSONObject, String str, boolean z) {
            AdObjectType adobjecttype;
            if (!z && adNetwork != null && adNetwork.isInterstitialShowing() && this.f7692g.size() > 1) {
                Object obj = this.x;
                r1 r1Var = (r1) obj;
                int indexOf = this.f7692g.indexOf(obj);
                r1 r1Var2 = (r1) (indexOf > 0 ? (r) this.f7692g.get(indexOf - 1) : null);
                if (r1Var != null && r1Var2 != null && (adobjecttype = r1Var2.s) != 0) {
                    if (str.equals(((p1) adobjecttype).f6826c.getId())) {
                        r1Var.a(jSONObject);
                    }
                    o1.a().a((a) r1Var, 0, false, false);
                    return true;
                }
            }
            return false;
        }

        @Override // com.appodeal.ads.u
        public final void a(Context context, c cVar) {
            c cVar2 = cVar;
            q4.f7303a.getClass();
            if (q4.p()) {
                h5.f6714a.post(new n1());
                return;
            }
            super.a(context, (Context) cVar2);
        }
    }

    /* loaded from: classes.dex */
    public static class b extends v2<p1, r1> {
        public b() {
            super(q1.a().f7293d);
        }

        @Override // com.appodeal.ads.b0
        public final void a(r rVar, j1 j1Var) {
            r1 r1Var = (r1) rVar;
            p1 p1Var = (p1) j1Var;
            if (o1.f7265c == null) {
                o1.f7265c = new k1<>();
            }
            o1.f7265c.getClass();
            k1.b();
            k1.a();
            this.f6556a.y = null;
            p1Var.f6825b.setInterstitialShowing(false);
            if (!r1Var.z && this.f6556a.q > 0 && r1Var.m > 0 && System.currentTimeMillis() - r1Var.m >= this.f6556a.q) {
                i(r1Var, p1Var, null);
            }
            c(r1Var);
        }

        @Override // com.appodeal.ads.b0
        public final boolean d(r rVar) {
            return ((r1) rVar).G == null;
        }

        @Override // com.appodeal.ads.b0
        public final void i(r rVar, l lVar) {
            r1 r1Var = (r1) rVar;
            p1 p1Var = (p1) lVar;
            q1.a().f7293d.f7297c = true;
        }

        @Override // com.appodeal.ads.b0
        public final void j(r rVar, l lVar) {
            r1 r1Var = (r1) rVar;
            p1 p1Var = (p1) lVar;
            k1.a();
            if (r1Var == null || this.f6556a.f7692g.isEmpty()) {
                return;
            }
            q1.a().f7293d.f7297c = true;
        }

        @Override // com.appodeal.ads.b0
        public final boolean k(r rVar, l lVar, l2 l2Var) {
            p1 p1Var = (p1) lVar;
            return (((r1) rVar).z ^ true) && this.f6556a.q > 0;
        }

        @Override // com.appodeal.ads.b0
        public final void l(r rVar, l lVar) {
            r1 r1Var = (r1) rVar;
            p1 p1Var = (p1) lVar;
            r1Var.t = p1Var.f6826c.getEcpm();
            if (r1Var.G == p1Var.f6826c.getJsonData()) {
                r1Var.a((JSONObject) null);
            }
        }

        @Override // com.appodeal.ads.b0
        public final boolean p(r rVar, l lVar) {
            r1 r1Var = (r1) rVar;
            return super.p(r1Var, (p1) lVar) || r1Var.a(0) == r1Var.G;
        }

        @Override // com.appodeal.ads.b0
        public final boolean q(r rVar, l lVar) {
            p1 p1Var = (p1) lVar;
            JSONObject jSONObject = ((r1) rVar).G;
            return jSONObject == null || (p1Var != null && jSONObject.optString("id").equals(p1Var.f6826c.getId()));
        }

        @Override // com.appodeal.ads.v2
        public final void r(r1 r1Var, p1 p1Var) {
            p1Var.f6825b.setInterstitialShowing(true);
        }
    }

    /* loaded from: classes.dex */
    public static class c extends s<c> {
        public c() {
            super("banner", Constants.DEBUG_INTERSTITIAL);
        }
    }

    public static a a() {
        a aVar = f7264b;
        if (aVar == null) {
            synchronized (u.class) {
                aVar = f7264b;
                if (aVar == null) {
                    aVar = new a(b());
                    f7264b = aVar;
                }
            }
        }
        return aVar;
    }

    public static boolean a(Activity activity, q qVar) {
        if (f7265c == null) {
            f7265c = new k1<>();
        }
        return f7265c.b(activity, qVar, a());
    }

    public static b b() {
        if (f7263a == null) {
            f7263a = new b();
        }
        return f7263a;
    }
}
