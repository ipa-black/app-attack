package com.appodeal.ads;

import android.content.Context;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class Native {

    /* renamed from: a  reason: collision with root package name */
    public static int f6381a = 1;

    /* renamed from: d  reason: collision with root package name */
    public static String f6384d;

    /* renamed from: f  reason: collision with root package name */
    public static n2 f6386f;

    /* renamed from: g  reason: collision with root package name */
    public static b f6387g;

    /* renamed from: h  reason: collision with root package name */
    public static a f6388h;

    /* renamed from: b  reason: collision with root package name */
    public static NativeAdType f6382b = NativeAdType.Auto;

    /* renamed from: c  reason: collision with root package name */
    public static MediaAssetType f6383c = MediaAssetType.ALL;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f6385e = false;

    /* loaded from: classes.dex */
    public enum MediaAssetType {
        ICON,
        IMAGE,
        ALL
    }

    /* loaded from: classes.dex */
    public enum NativeAdType {
        Auto("auto"),
        NoVideo("static"),
        Video("video");
        
        public final String name;

        NativeAdType(String str) {
            this.name = str;
        }
    }

    /* loaded from: classes.dex */
    public static class b extends b0<s2, t2, l2> {
        public b() {
            super(Native.c());
        }

        @Override // com.appodeal.ads.b0
        public final /* bridge */ /* synthetic */ boolean a(t2 t2Var, s2 s2Var) {
            return false;
        }

        @Override // com.appodeal.ads.b0
        public final boolean a(r rVar, l lVar, l2 l2Var) {
            s2 s2Var = (s2) lVar;
            return ((t2) rVar).L.contains(Integer.valueOf(l2Var.a()));
        }

        @Override // com.appodeal.ads.b0
        public final boolean b(r rVar, l lVar, l2 l2Var) {
            s2 s2Var = (s2) lVar;
            return ((t2) rVar).M.contains(Integer.valueOf(l2Var.a()));
        }

        @Override // com.appodeal.ads.b0
        public final /* bridge */ /* synthetic */ boolean b(t2 t2Var, s2 s2Var, boolean z) {
            return true;
        }

        @Override // com.appodeal.ads.b0
        public final boolean c(r rVar, l lVar, l2 l2Var) {
            s2 s2Var = (s2) lVar;
            return ((t2) rVar).K.contains(Integer.valueOf(l2Var.a()));
        }

        @Override // com.appodeal.ads.b0
        public final com.appodeal.ads.segments.g e(r rVar, l lVar, l2 l2Var) {
            t2 t2Var = (t2) rVar;
            s2 s2Var = (s2) lVar;
            com.appodeal.ads.segments.g gVar = l2Var.u;
            return gVar == null ? com.appodeal.ads.segments.h.a(RewardedVideo.VIDEO_MODE_DEFAULT) : gVar;
        }

        @Override // com.appodeal.ads.b0
        public final void f(r rVar, l lVar, l2 l2Var) {
            t2 t2Var = (t2) rVar;
            s2 s2Var = (s2) lVar;
            if (t2Var == null || l2Var == null) {
                return;
            }
            t2Var.L.add(Integer.valueOf(l2Var.a()));
        }

        @Override // com.appodeal.ads.b0
        public final void g(r rVar, l lVar, l2 l2Var) {
            t2 t2Var = (t2) rVar;
            s2 s2Var = (s2) lVar;
            if (t2Var == null || l2Var == null) {
                return;
            }
            t2Var.M.add(Integer.valueOf(l2Var.a()));
        }

        @Override // com.appodeal.ads.b0
        public final void h(t2 t2Var, s2 s2Var) {
            s2 s2Var2 = s2Var;
            if (s2Var2 != null) {
                Native.c().f7092d.removeAll(s2Var2.o());
            }
            if (this.f6556a.k()) {
                Native.c().c();
            }
        }

        @Override // com.appodeal.ads.b0
        public final boolean k(r rVar, l lVar, l2 l2Var) {
            s2 s2Var = (s2) lVar;
            return !((t2) rVar).M.contains(Integer.valueOf(l2Var.a())) && this.f6556a.q > 0;
        }

        @Override // com.appodeal.ads.b0
        public final void l(t2 t2Var, s2 s2Var) {
            t2 t2Var2 = t2Var;
            s2 s2Var2 = s2Var;
            t2Var2.t = s2Var2.f6826c.getEcpm();
            ArrayList arrayList = s2Var2.s;
            t2Var2.J = arrayList != null ? arrayList.size() : 0;
        }

        @Override // com.appodeal.ads.b0
        public final boolean p(t2 t2Var, s2 s2Var) {
            t2 t2Var2 = t2Var;
            s2 s2Var2 = s2Var;
            if (!s2Var2.f6826c.isPrecache()) {
                this.f6556a.getClass();
                if (!u.b(t2Var2, s2Var2)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.appodeal.ads.b0
        public final void a(t2 t2Var) {
            HashSet hashSet = new HashSet();
            for (t2 t2Var2 = t2Var; t2Var2 != null; t2Var2 = t2Var2.H) {
                hashSet.addAll(t2Var2.f7338f);
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((s2) it.next()).j();
            }
        }

        @Override // com.appodeal.ads.b0
        public final boolean b(t2 t2Var, s2 s2Var) {
            return t2Var.u;
        }

        @Override // com.appodeal.ads.b0
        public final void h(r rVar, l lVar, l2 l2Var) {
            t2 t2Var = (t2) rVar;
            s2 s2Var = (s2) lVar;
            if (t2Var == null || l2Var == null) {
                return;
            }
            t2Var.K.add(Integer.valueOf(l2Var.a()));
        }

        @Override // com.appodeal.ads.b0
        public final boolean l(r rVar, l lVar, l2 l2Var) {
            s2 s2Var = (s2) lVar;
            return !((t2) rVar).K.contains(Integer.valueOf(l2Var.a()));
        }
    }

    /* loaded from: classes.dex */
    public static class c extends s<c> {
        public c() {
            super("native", Constants.DEBUG_NATIVE);
        }
    }

    public static a a() {
        a aVar = f6388h;
        if (aVar == null) {
            synchronized (u.class) {
                aVar = f6388h;
                if (aVar == null) {
                    aVar = new a(b());
                    f6388h = aVar;
                }
            }
        }
        return aVar;
    }

    public static b b() {
        if (f6387g == null) {
            f6387g = new b();
        }
        return f6387g;
    }

    public static n2 c() {
        if (f6386f == null) {
            f6386f = new n2();
        }
        return f6386f;
    }

    /* loaded from: classes.dex */
    public static class a extends u<s2, t2, c> {
        public a(b bVar) {
            super(bVar, AdType.Native, null);
        }

        @Override // com.appodeal.ads.u
        public final void a(JSONObject jSONObject) {
            if (jSONObject.has("video_native_autostart")) {
                Native.f6385e = jSONObject.optBoolean("video_native_autostart", false);
            }
            if (jSONObject.has("diu")) {
                Native.f6384d = jSONObject.optString("diu");
            }
        }

        @Override // com.appodeal.ads.u
        public final boolean a(t2 t2Var) {
            return (t2Var.f7334b.isEmpty() ^ true) && !Native.c().b();
        }

        @Override // com.appodeal.ads.u
        public final /* bridge */ /* synthetic */ boolean a(t2 t2Var, s2 s2Var) {
            return true;
        }

        @Override // com.appodeal.ads.u
        public final void b() {
            int i = 0;
            while (i < this.f7692g.size() - 3) {
                t2 t2Var = (t2) ((this.f7692g.size() <= i || i == -1) ? null : (r) this.f7692g.get(i));
                if (t2Var != null && !t2Var.E) {
                    t2Var.c();
                }
                i++;
            }
        }

        @Override // com.appodeal.ads.u
        public final void b(Context context) {
            b(context, (Context) new c());
        }

        @Override // com.appodeal.ads.u
        public final String i() {
            return "native_disabled";
        }

        @Override // com.appodeal.ads.u
        public final void s() {
            Native.c().c();
        }

        @Override // com.appodeal.ads.u
        public final l a(r rVar, AdNetwork adNetwork, d0 d0Var) {
            return new s2((t2) rVar, adNetwork, d0Var);
        }

        @Override // com.appodeal.ads.u
        public final t2 a(c cVar) {
            return new t2(cVar);
        }

        @Override // com.appodeal.ads.u
        public final int a(t2 t2Var, s2 s2Var, boolean z) {
            if (z) {
                return 1;
            }
            return Native.f6381a;
        }
    }
}
