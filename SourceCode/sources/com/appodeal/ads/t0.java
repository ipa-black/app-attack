package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.unified.UnifiedBanner;
import com.appodeal.ads.x5;
/* loaded from: classes.dex */
public final class t0 {

    /* renamed from: a  reason: collision with root package name */
    public static final u0 f7669a = new u0();

    /* renamed from: b  reason: collision with root package name */
    public static boolean f7670b = true;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f7671c = true;

    /* renamed from: d  reason: collision with root package name */
    public static c f7672d;

    /* renamed from: e  reason: collision with root package name */
    public static b f7673e;

    /* renamed from: f  reason: collision with root package name */
    public static a f7674f;

    /* loaded from: classes.dex */
    public static class a extends x5<w0, v0> {
        public a() {
            super(com.appodeal.ads.a.f6414d);
        }

        @Override // com.appodeal.ads.x5
        public final boolean a(View view) {
            return view instanceof BannerView;
        }

        @Override // com.appodeal.ads.x5
        public final void c(Activity activity) {
            t0.a().b((Context) activity, (Activity) new d());
        }
    }

    /* loaded from: classes.dex */
    public static class b extends a6<v0, w0, d> {
        public b(c cVar) {
            super(cVar, AdType.Banner);
        }

        @Override // com.appodeal.ads.u
        public final l a(r rVar, AdNetwork adNetwork, d0 d0Var) {
            return new v0((w0) rVar, adNetwork, d0Var);
        }

        @Override // com.appodeal.ads.u
        public final String i() {
            return "banners_disabled";
        }

        @Override // com.appodeal.ads.a6
        public final d w() {
            return new d();
        }

        @Override // com.appodeal.ads.a6
        public final x5<w0, v0> x() {
            return t0.c();
        }

        @Override // com.appodeal.ads.u
        public final r a(s sVar) {
            return new w0((d) sVar);
        }

        @Override // com.appodeal.ads.u
        public final void a(Configuration configuration) {
            UnifiedBanner unifiedBanner;
            int i;
            w0 w0Var = (w0) f();
            if (w0Var != null) {
                v0 v0Var = (v0) w0Var.s;
                if (v0Var == null || !((unifiedBanner = (UnifiedBanner) v0Var.f6829f) == null || !unifiedBanner.isRefreshOnRotate() || (i = v0Var.u) == -1 || i == configuration.orientation)) {
                    c(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext());
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static class c extends b6<v0, w0> {
        public c() {
            super(t0.f7669a);
        }

        @Override // com.appodeal.ads.b6
        public final x5<w0, v0> c() {
            return t0.c();
        }
    }

    /* loaded from: classes.dex */
    public static class d extends s<d> {
        public d() {
            super(Constants.BANNER, Constants.DEBUG_BANNER);
        }
    }

    public static b a() {
        b bVar = f7673e;
        if (bVar == null) {
            synchronized (u.class) {
                bVar = f7673e;
                if (bVar == null) {
                    bVar = new b(b());
                    f7673e = bVar;
                }
            }
        }
        return bVar;
    }

    public static void a(Activity activity) {
        a c2 = c();
        b a2 = a();
        x5.d a3 = c2.a(activity);
        a3.f7950a = null;
        a3.f7951b = f0.HIDDEN;
        if (c2.f7940c == null) {
            return;
        }
        h5.f6714a.post(new v5(c2, a2));
    }

    public static boolean a(Activity activity, y5 y5Var) {
        return c().a2(activity, y5Var, (u) a());
    }

    public static boolean a(Context context) {
        return f7671c && f1.r(context) && f1.p(context) >= 728.0f;
    }

    public static c b() {
        if (f7672d == null) {
            f7672d = new c();
        }
        return f7672d;
    }

    public static a c() {
        if (f7674f == null) {
            f7674f = new a();
        }
        return f7674f;
    }
}
