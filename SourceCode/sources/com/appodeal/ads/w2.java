package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class w2 {

    /* renamed from: a  reason: collision with root package name */
    public static c f7874a;

    /* renamed from: b  reason: collision with root package name */
    public static b f7875b;

    /* renamed from: c  reason: collision with root package name */
    public static p5<q5, o5> f7876c;

    /* loaded from: classes.dex */
    public static class a extends s<a> {
        public a() {
            super("video", Constants.DEBUG_NON_REWARDED_VIDEO);
        }
    }

    /* loaded from: classes.dex */
    public static class b extends u<o5, q5, a> {
        public b(c cVar) {
            super(cVar, AdType.Video, com.appodeal.ads.segments.h.b());
            this.z = 1.1f;
            this.A = 1.4f;
        }

        @Override // com.appodeal.ads.u
        public final l a(r rVar, AdNetwork adNetwork, d0 d0Var) {
            return new o5((q5) rVar, adNetwork, d0Var);
        }

        @Override // com.appodeal.ads.u
        public final void a(JSONObject jSONObject) {
        }

        @Override // com.appodeal.ads.u
        public final void b(Context context) {
            q1.a().f7294e.a(context, (Context) new a());
        }

        @Override // com.appodeal.ads.u
        public final String i() {
            return "video_disabled";
        }

        @Override // com.appodeal.ads.u
        public final boolean k() {
            return q1.a().f7292c;
        }

        @Override // com.appodeal.ads.u
        public final q5 a(a aVar) {
            return new q5(aVar);
        }

        @Override // com.appodeal.ads.u
        public final boolean a(q5 q5Var, int i) {
            JSONObject jSONObject;
            AdNetwork b2;
            q5 q5Var2 = q5Var;
            if (q5Var2.f7333a.size() == 1 && (jSONObject = q5Var2.G) != null && jSONObject == q5Var2.a(i)) {
                String optString = q5Var2.G.optString("status");
                if (!TextUtils.isEmpty(optString) && (b2 = this.f7690e.b(optString)) != null && b2.isVideoShowing()) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.appodeal.ads.u
        public final boolean a(AdNetwork adNetwork, JSONObject jSONObject, String str, boolean z) {
            AdObjectType adobjecttype;
            if (!z && adNetwork != null && adNetwork.isVideoShowing() && this.f7692g.size() > 1) {
                Object obj = this.x;
                q5 q5Var = (q5) obj;
                int indexOf = this.f7692g.indexOf(obj);
                q5 q5Var2 = (q5) (indexOf > 0 ? (r) this.f7692g.get(indexOf - 1) : null);
                if (q5Var != null && q5Var2 != null && (adobjecttype = q5Var2.s) != 0) {
                    if (str.equals(((o5) adobjecttype).f6826c.getId())) {
                        q5Var.a(jSONObject);
                    }
                    w2.a().a((b) q5Var, 0, false, false);
                    return true;
                }
            }
            return false;
        }

        @Override // com.appodeal.ads.u
        public final void a(Context context, a aVar) {
            q4.f7303a.getClass();
            if (q4.p()) {
                h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.w2$b$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        q1.a().f7294e.d(null, null);
                    }
                });
                return;
            }
            super.a(context, (Context) aVar);
        }
    }

    /* loaded from: classes.dex */
    public static class c extends v2<o5, q5> {
        public c() {
            super(q1.a().f7294e);
        }

        @Override // com.appodeal.ads.b0
        public final void a(r rVar, j1 j1Var) {
            q5 q5Var = (q5) rVar;
            o5 o5Var = (o5) j1Var;
            if (w2.f7876c == null) {
                w2.f7876c = new p5<>();
            }
            w2.f7876c.getClass();
            k1.b();
            k1.a();
            this.f6556a.y = null;
            o5Var.f6825b.setVideoShowing(false);
            c(q5Var);
        }

        @Override // com.appodeal.ads.b0
        public final boolean b() {
            return true;
        }

        @Override // com.appodeal.ads.b0
        public final boolean d(r rVar) {
            return ((q5) rVar).G == null;
        }

        @Override // com.appodeal.ads.b0
        public final void i(r rVar, l lVar) {
            q5 q5Var = (q5) rVar;
            o5 o5Var = (o5) lVar;
            q1.a().f7294e.f7297c = true;
        }

        @Override // com.appodeal.ads.b0
        public final void j(r rVar, l lVar) {
            q5 q5Var = (q5) rVar;
            o5 o5Var = (o5) lVar;
            k1.a();
            if (q5Var == null || this.f6556a.f7692g.isEmpty()) {
                return;
            }
            q1.a().f7294e.f7297c = true;
        }

        @Override // com.appodeal.ads.b0
        public final /* bridge */ /* synthetic */ boolean k(r rVar, l lVar, l2 l2Var) {
            q5 q5Var = (q5) rVar;
            o5 o5Var = (o5) lVar;
            return false;
        }

        @Override // com.appodeal.ads.b0
        public final void l(r rVar, l lVar) {
            q5 q5Var = (q5) rVar;
            o5 o5Var = (o5) lVar;
            q5Var.t = o5Var.f6826c.getEcpm();
            if (q5Var.G == o5Var.f6826c.getJsonData()) {
                q5Var.a((JSONObject) null);
            }
        }

        @Override // com.appodeal.ads.b0
        public final boolean p(r rVar, l lVar) {
            q5 q5Var = (q5) rVar;
            return super.p(q5Var, (o5) lVar) || q5Var.a(0) == q5Var.G;
        }

        @Override // com.appodeal.ads.b0
        public final boolean q(r rVar, l lVar) {
            o5 o5Var = (o5) lVar;
            JSONObject jSONObject = ((q5) rVar).G;
            return jSONObject == null || (o5Var != null && jSONObject.optString("id").equals(o5Var.f6826c.getId()));
        }

        @Override // com.appodeal.ads.v2
        public final void r(q5 q5Var, o5 o5Var) {
            o5Var.f6825b.setVideoShowing(true);
        }
    }

    public static b a() {
        b bVar = f7875b;
        if (bVar == null) {
            synchronized (u.class) {
                bVar = f7875b;
                if (bVar == null) {
                    bVar = new b(b());
                    f7875b = bVar;
                }
            }
        }
        return bVar;
    }

    public static boolean a(Activity activity, q qVar) {
        if (f7876c == null) {
            f7876c = new p5<>();
        }
        return f7876c.b(activity, qVar, a());
    }

    public static c b() {
        if (f7874a == null) {
            f7874a = new c();
        }
        return f7874a;
    }
}
