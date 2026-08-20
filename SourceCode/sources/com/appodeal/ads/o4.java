package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class o4 {

    /* renamed from: a  reason: collision with root package name */
    public static final p4 f7269a = new p4();

    /* renamed from: b  reason: collision with root package name */
    public static int f7270b = 90000;

    /* renamed from: c  reason: collision with root package name */
    public static c f7271c;

    /* renamed from: d  reason: collision with root package name */
    public static b f7272d;

    /* renamed from: e  reason: collision with root package name */
    public static p5<n4, m4> f7273e;

    /* loaded from: classes.dex */
    public static class a extends s<a> {
        public a() {
            super("rewarded_video", Constants.DEBUG_REWARDED_VIDEO);
        }
    }

    /* loaded from: classes.dex */
    public static class b extends u<m4, n4, a> {
        public b(c cVar) {
            super(cVar, AdType.Rewarded, com.appodeal.ads.segments.h.b());
        }

        @Override // com.appodeal.ads.u
        public final l a(r rVar, AdNetwork adNetwork, d0 d0Var) {
            return new m4((n4) rVar, adNetwork, d0Var);
        }

        @Override // com.appodeal.ads.u
        public final void a(JSONObject jSONObject) {
            if (jSONObject.has("max_duration")) {
                o4.f7270b = jSONObject.optInt("max_duration", 0);
            }
        }

        @Override // com.appodeal.ads.u
        public final void b(Context context) {
            b(context, (Context) new a());
        }

        @Override // com.appodeal.ads.u
        public final String i() {
            return "rewarded_video_disabled";
        }

        @Override // com.appodeal.ads.u
        public final n4 a(a aVar) {
            return new n4(aVar);
        }

        @Override // com.appodeal.ads.u
        public final boolean a(n4 n4Var, int i) {
            JSONObject jSONObject;
            AdNetwork b2;
            n4 n4Var2 = n4Var;
            if (n4Var2.f7333a.size() == 1 && (jSONObject = n4Var2.G) != null && jSONObject == n4Var2.a(i)) {
                String optString = n4Var2.G.optString("status");
                if (!TextUtils.isEmpty(optString) && (b2 = this.f7690e.b(optString)) != null && b2.isRewardedShowing()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.appodeal.ads.u
        public final boolean a(AdNetwork adNetwork, JSONObject jSONObject, String str, boolean z) {
            AdObjectType adobjecttype;
            if (!z && adNetwork != null && adNetwork.isRewardedShowing() && this.f7692g.size() > 1) {
                Object obj = this.x;
                n4 n4Var = (n4) obj;
                int indexOf = this.f7692g.indexOf(obj);
                n4 n4Var2 = (n4) (indexOf > 0 ? (r) this.f7692g.get(indexOf - 1) : null);
                if (n4Var != null && n4Var2 != null && (adobjecttype = n4Var2.s) != 0) {
                    if (str.equals(((m4) adobjecttype).f6826c.getId())) {
                        n4Var.a(jSONObject);
                    }
                    o4.a().a((b) n4Var, 0, false, false);
                    return true;
                }
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class c extends v2<m4, n4> {
        public c() {
            super(o4.f7269a);
        }

        @Override // com.appodeal.ads.b0
        public final void a(r rVar, j1 j1Var) {
            n4 n4Var = (n4) rVar;
            m4 m4Var = (m4) j1Var;
            if (o4.f7273e == null) {
                o4.f7273e = new p5<>();
            }
            o4.f7273e.getClass();
            k1.b();
            k1.a();
            this.f6556a.y = null;
            m4Var.f6825b.setRewardedShowing(false);
            c(n4Var);
        }

        @Override // com.appodeal.ads.b0
        public final boolean b() {
            return true;
        }

        @Override // com.appodeal.ads.b0
        public final boolean d(r rVar) {
            return ((n4) rVar).G == null;
        }

        @Override // com.appodeal.ads.b0
        public final void h(r rVar, l lVar) {
            n4 n4Var = (n4) rVar;
            m4 m4Var = (m4) lVar;
            if (this.f6556a.k()) {
                this.f6556a.c(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext());
            }
        }

        @Override // com.appodeal.ads.b0
        public final void j(r rVar, l lVar) {
            n4 n4Var = (n4) rVar;
            m4 m4Var = (m4) lVar;
            k1.a();
        }

        @Override // com.appodeal.ads.b0
        public final /* bridge */ /* synthetic */ boolean k(r rVar, l lVar, l2 l2Var) {
            n4 n4Var = (n4) rVar;
            m4 m4Var = (m4) lVar;
            return false;
        }

        @Override // com.appodeal.ads.b0
        public final void l(r rVar, l lVar) {
            n4 n4Var = (n4) rVar;
            m4 m4Var = (m4) lVar;
            n4Var.t = m4Var.f6826c.getEcpm();
            if (n4Var.G == m4Var.f6826c.getJsonData()) {
                n4Var.a((JSONObject) null);
            }
        }

        @Override // com.appodeal.ads.b0
        public final boolean p(r rVar, l lVar) {
            n4 n4Var = (n4) rVar;
            return super.p(n4Var, (m4) lVar) || n4Var.a(0) == n4Var.G;
        }

        @Override // com.appodeal.ads.b0
        public final boolean q(r rVar, l lVar) {
            m4 m4Var = (m4) lVar;
            JSONObject jSONObject = ((n4) rVar).G;
            return jSONObject == null || (m4Var != null && jSONObject.optString("id").equals(m4Var.f6826c.getId()));
        }

        @Override // com.appodeal.ads.v2
        public final void r(n4 n4Var, m4 m4Var) {
            m4Var.f6825b.setRewardedShowing(true);
            if (n4Var.f7340h || !this.f6556a.k()) {
                return;
            }
            n4 n4Var2 = (n4) this.f6556a.f();
            if (n4Var2 == null || n4Var2.b()) {
                this.f6556a.c(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext());
            }
        }
    }

    public static b a() {
        b bVar = f7272d;
        if (bVar == null) {
            synchronized (u.class) {
                bVar = f7272d;
                if (bVar == null) {
                    bVar = new b(b());
                    f7272d = bVar;
                }
            }
        }
        return bVar;
    }

    public static boolean a(Activity activity, q qVar) {
        if (f7273e == null) {
            f7273e = new p5<>();
        }
        return f7273e.b(activity, qVar, a());
    }

    public static c b() {
        if (f7271c == null) {
            f7271c = new c();
        }
        return f7271c;
    }

    public static double c() {
        return a().e().c();
    }

    public static String d() {
        return a().e().d();
    }
}
