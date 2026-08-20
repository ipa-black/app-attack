package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.x5;
/* loaded from: classes.dex */
public final class h2 {

    /* renamed from: a  reason: collision with root package name */
    public static final i2 f6707a = new i2();

    /* renamed from: b  reason: collision with root package name */
    public static c f6708b;

    /* renamed from: c  reason: collision with root package name */
    public static b f6709c;

    /* renamed from: d  reason: collision with root package name */
    public static a f6710d;

    /* loaded from: classes.dex */
    public static class a extends x5<k2, j2> {
        public a() {
            super(com.appodeal.ads.a.f6418h);
        }

        @Override // com.appodeal.ads.x5
        public final boolean a(View view) {
            return view instanceof MrecView;
        }

        @Override // com.appodeal.ads.x5
        public final void c(Activity activity) {
            h2.a().b((Context) activity, (Activity) new d());
        }
    }

    /* loaded from: classes.dex */
    public static class b extends a6<j2, k2, d> {
        public b(c cVar) {
            super(cVar, AdType.Mrec);
        }

        @Override // com.appodeal.ads.u
        public final l a(r rVar, AdNetwork adNetwork, d0 d0Var) {
            return new j2((k2) rVar, adNetwork, d0Var);
        }

        @Override // com.appodeal.ads.u
        public final String i() {
            return "mrec_disabled";
        }

        @Override // com.appodeal.ads.a6
        public final d w() {
            return new d();
        }

        @Override // com.appodeal.ads.a6
        public final x5<k2, j2> x() {
            return h2.c();
        }

        @Override // com.appodeal.ads.u
        public final r a(s sVar) {
            return new k2((d) sVar);
        }
    }

    /* loaded from: classes.dex */
    public static class c extends b6<j2, k2> {
        public c() {
            super(h2.f6707a);
        }

        @Override // com.appodeal.ads.b6
        public final x5<k2, j2> c() {
            return h2.c();
        }
    }

    /* loaded from: classes.dex */
    public static class d extends s<d> {
        public d() {
            super(Constants.MREC, Constants.DEBUG_MREC);
        }
    }

    public static b a() {
        b bVar = f6709c;
        if (bVar == null) {
            synchronized (u.class) {
                bVar = f6709c;
                if (bVar == null) {
                    bVar = new b(b());
                    f6709c = bVar;
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

    public static c b() {
        if (f6708b == null) {
            f6708b = new c();
        }
        return f6708b;
    }

    public static a c() {
        if (f6710d == null) {
            f6710d = new a();
        }
        return f6710d;
    }
}
