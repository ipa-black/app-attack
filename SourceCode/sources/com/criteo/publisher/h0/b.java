package com.criteo.publisher.h0;

import android.util.Base64;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.model.b0.n;
import com.criteo.publisher.model.b0.r;
import com.criteo.publisher.model.s;
import com.criteo.publisher.n0.k;
import com.criteo.publisher.n0.o;
import com.google.android.exoplayer2.C;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.List;
/* compiled from: DfpHeaderBidding.java */
/* loaded from: classes2.dex */
public class b implements com.criteo.publisher.h0.d {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.n0.c f8848a;

    /* renamed from: b  reason: collision with root package name */
    private final k f8849b;

    /* renamed from: c  reason: collision with root package name */
    private final g f8850c = h.b(getClass());

    @Override // com.criteo.publisher.h0.d
    public void a(Object obj) {
    }

    public b(com.criteo.publisher.n0.c cVar, k kVar) {
        this.f8848a = cVar;
        this.f8849b = kVar;
    }

    @Override // com.criteo.publisher.h0.d
    public boolean b(Object obj) {
        return d.a(obj);
    }

    @Override // com.criteo.publisher.h0.d
    public com.criteo.publisher.i0.a a() {
        return com.criteo.publisher.i0.a.GAM_APP_BIDDING;
    }

    @Override // com.criteo.publisher.h0.d
    public void a(Object obj, com.criteo.publisher.n0.a aVar, s sVar) {
        d b2 = d.b(obj);
        if (b2 == null) {
            return;
        }
        b2.a("crt_cpm", sVar.a());
        int i = a.f8851a[aVar.ordinal()];
        if (i == 1) {
            a(b2, sVar);
            b2.a("crt_size", sVar.k() + "x" + sVar.e());
        } else if (i == 2 || i == 3) {
            a(b2, sVar);
            b2.a("crt_size", a(sVar));
        } else if (i == 4) {
            b(b2, sVar);
        }
        if (sVar.p()) {
            b2.a("crt_format", "video");
        }
        this.f8850c.a(com.criteo.publisher.h0.a.a(a(), b2.a()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DfpHeaderBidding.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8851a;

        static {
            int[] iArr = new int[com.criteo.publisher.n0.a.values().length];
            f8851a = iArr;
            try {
                iArr[com.criteo.publisher.n0.a.CRITEO_BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8851a[com.criteo.publisher.n0.a.CRITEO_INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f8851a[com.criteo.publisher.n0.a.CRITEO_REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8851a[com.criteo.publisher.n0.a.CRITEO_CUSTOM_NATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private void a(d dVar, s sVar) {
        String b2;
        String d2 = sVar.d();
        if (com.criteo.publisher.n0.s.a((CharSequence) d2)) {
            return;
        }
        if (sVar.p()) {
            try {
                b2 = b(b(d2));
            } catch (UnsupportedEncodingException e2) {
                o.a((Throwable) e2);
                return;
            }
        } else {
            b2 = a(d2);
        }
        dVar.a("crt_displayurl", b2);
    }

    private String a(s sVar) {
        boolean z = this.f8848a.a() == 1;
        if (this.f8849b.c()) {
            if (z && sVar.k() >= 768 && sVar.e() >= 1024) {
                return "768x1024";
            }
            if (!z && sVar.k() >= 1024 && sVar.e() >= 768) {
                return "1024x768";
            }
        }
        if (z) {
            return "320x480";
        }
        return "480x320";
    }

    private void b(d dVar, s sVar) {
        n g2 = sVar.g();
        if (g2 == null) {
            return;
        }
        r n = g2.n();
        a(dVar, n.g(), "crtn_title");
        a(dVar, n.c(), "crtn_desc");
        a(dVar, n.f(), "crtn_price");
        a(dVar, n.b().toString(), "crtn_clickurl");
        a(dVar, n.a(), "crtn_cta");
        a(dVar, n.e().toString(), "crtn_imageurl");
        a(dVar, g2.c(), "crtn_advname");
        a(dVar, g2.d(), "crtn_advdomain");
        a(dVar, g2.f().toString(), "crtn_advlogourl");
        a(dVar, g2.e().toString(), "crtn_advurl");
        a(dVar, g2.l().toString(), "crtn_prurl");
        a(dVar, g2.m().toString(), "crtn_primageurl");
        a(dVar, g2.k(), "crtn_prtext");
        List<URL> g3 = g2.g();
        for (int i = 0; i < g3.size(); i++) {
            a(dVar, g3.get(i).toString(), "crtn_pixurl_" + i);
        }
        dVar.a("crtn_pixcount", g3.size() + "");
    }

    private void a(d dVar, String str, String str2) {
        if (com.criteo.publisher.n0.s.a((CharSequence) str)) {
            return;
        }
        dVar.a(str2, a(str));
    }

    String a(String str) {
        if (com.criteo.publisher.n0.s.a((CharSequence) str)) {
            return null;
        }
        try {
            return b(b(Base64.encodeToString(str.getBytes(Charset.forName(C.UTF8_NAME)), 2)));
        } catch (UnsupportedEncodingException e2) {
            o.a((Throwable) e2);
            return null;
        }
    }

    String b(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, Charset.forName(C.UTF8_NAME).name());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DfpHeaderBidding.java */
    /* loaded from: classes2.dex */
    public static abstract class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f8856a;

        /* renamed from: b  reason: collision with root package name */
        private final StringBuilder f8857b;

        /* synthetic */ d(String str, a aVar) {
            this(str);
        }

        private d(String str) {
            this.f8856a = str;
            this.f8857b = new StringBuilder();
        }

        static boolean a(Object obj) {
            return c.a(obj) || C0248b.a(obj);
        }

        static d b(Object obj) {
            if (c.a(obj)) {
                return new c((AdManagerAdRequest.Builder) obj, null);
            }
            if (C0248b.a(obj)) {
                return new C0248b(obj, null);
            }
            return null;
        }

        protected void a(String str, String str2) {
            if (this.f8857b.length() != 0) {
                this.f8857b.append(",");
            } else {
                this.f8857b.append(this.f8856a).append(':');
            }
            this.f8857b.append(str).append("=").append(str2);
        }

        final String a() {
            return this.f8857b.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DfpHeaderBidding.java */
    /* loaded from: classes2.dex */
    public static class c extends d {

        /* renamed from: c  reason: collision with root package name */
        private final AdManagerAdRequest.Builder f8855c;

        /* synthetic */ c(AdManagerAdRequest.Builder builder, a aVar) {
            this(builder);
        }

        private c(AdManagerAdRequest.Builder builder) {
            super("AdMob20", null);
            this.f8855c = builder;
        }

        static boolean a(Object obj) {
            try {
                return obj instanceof AdManagerAdRequest.Builder;
            } catch (LinkageError unused) {
                return false;
            }
        }

        @Override // com.criteo.publisher.h0.b.d
        protected void a(String str, String str2) {
            try {
                this.f8855c.addCustomTargeting(str, str2);
                super.a(str, str2);
            } catch (LinkageError e2) {
                o.a((Throwable) e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DfpHeaderBidding.java */
    /* renamed from: com.criteo.publisher.h0.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0248b extends d {

        /* renamed from: d  reason: collision with root package name */
        private static Class<?> f8852d;

        /* renamed from: e  reason: collision with root package name */
        private static Method f8853e;

        /* renamed from: c  reason: collision with root package name */
        private final Object f8854c;

        /* synthetic */ C0248b(Object obj, a aVar) {
            this(obj);
        }

        private C0248b(Object obj) {
            super("AdMob19", null);
            this.f8854c = obj;
        }

        static boolean a(Object obj) {
            return a(obj.getClass().getClassLoader()) && f8852d.isAssignableFrom(obj.getClass());
        }

        @Override // com.criteo.publisher.h0.b.d
        protected void a(String str, String str2) {
            try {
                f8853e.invoke(this.f8854c, str, str2);
            } catch (IllegalAccessException e2) {
                o.a((Throwable) e2);
            } catch (InvocationTargetException e3) {
                o.a((Throwable) e3);
            }
            super.a(str, str2);
        }

        private static boolean a(ClassLoader classLoader) {
            if (f8852d == null || f8853e == null) {
                try {
                    Class<?> cls = Class.forName("com.google.android.gms.ads.doubleclick.PublisherAdRequest$Builder", false, classLoader);
                    f8852d = cls;
                    f8853e = cls.getMethod("addCustomTargeting", String.class, String.class);
                    return true;
                } catch (ClassNotFoundException unused) {
                    return false;
                } catch (NoSuchMethodException e2) {
                    o.a((Throwable) e2);
                    return false;
                }
            }
            return true;
        }
    }
}
