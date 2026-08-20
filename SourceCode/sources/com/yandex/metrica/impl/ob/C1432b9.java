package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.b9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1432b9 extends AbstractC1482d9 {
    static final Rd A;
    static final Rd B;
    static final Rd C;
    static final Rd D;
    static final Rd E;
    static final Rd F;
    static final Rd G;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    static final Rd f14454c = new Rd(IronSourceConstants.TYPE_UUID, null);

    /* renamed from: d  reason: collision with root package name */
    static final Rd f14455d = new Rd("UUID_RESULT", null);
    @Deprecated

    /* renamed from: e  reason: collision with root package name */
    static final Rd f14456e = new Rd("DEVICE_ID", null);

    /* renamed from: f  reason: collision with root package name */
    static final Rd f14457f = new Rd("DEVICE_ID_RESULT", null);
    @Deprecated

    /* renamed from: g  reason: collision with root package name */
    static final Rd f14458g = new Rd("DEVICE_ID_HASH", null);

    /* renamed from: h  reason: collision with root package name */
    static final Rd f14459h = new Rd("DEVICE_ID_HASH_RESULT", null);
    @Deprecated
    static final Rd i = new Rd("AD_URL_GET", null);
    static final Rd j = new Rd("AD_URL_GET_RESULT", null);
    @Deprecated
    static final Rd k = new Rd("AD_URL_REPORT", null);
    static final Rd l = new Rd("AD_URL_REPORT_RESULT", null);
    static final Rd m = new Rd("CUSTOM_HOSTS", null);
    static final Rd n = new Rd("SERVER_TIME_OFFSET", null);
    @Deprecated
    static final Rd o = new Rd("CLIDS", null);
    static final Rd p = new Rd("RESPONSE_CLIDS_RESULT", null);
    static final Rd q = new Rd("CUSTOM_SDK_HOSTS", null);
    static final Rd r = new Rd("CLIENT_CLIDS", null);
    static final Rd s = new Rd("DEFERRED_DEEP_LINK_WAS_CHECKED", null);
    static final Rd t;
    static final Rd u;
    static final Rd v;
    static final Rd w;
    static final Rd x;
    static final Rd y;
    static final Rd z;

    static {
        new Rd("DEPRECATED_NATIVE_CRASHES_CHECKED", null);
        t = new Rd("API_LEVEL", null);
        u = new Rd("ADS_REQUESTED_CONTEXT", null);
        v = new Rd("CONTEXT_HISTORY", null);
        w = new Rd("ACCESS_CONFIG", null);
        x = new Rd("DIAGNOSTICS_CONFIGS_HOLDER", null);
        y = new Rd("NEXT_STARTUP_TIME", null);
        z = new Rd("LAST_UI_CONTEXT_ID", null);
        A = new Rd(IronSourceConstants.TYPE_GAID, null);
        B = new Rd("HOAID", null);
        C = new Rd("YANDEX_ADV_ID", null);
        D = new Rd("CLIENT_CLIDS_CHANGED_AFTER_LAST_IDENTIFIERS_UPDATE", null);
        E = new Rd("SCREEN_INFO", null);
        F = new Rd("SCREEN_SIZE_CHECKED_BY_DEPRECATED", null);
        G = new Rd("FEATURES", null);
    }

    public C1432b9(S7 s7) {
        super(s7);
    }

    public C1432b9 a(W0 w0) {
        return a(j.a(), w0);
    }

    public boolean b(boolean z2) {
        return a(D.a(), z2);
    }

    public C1432b9 c(W0 w0) {
        return a(q.a(), w0);
    }

    public long d(long j2) {
        return a(n.b(), j2);
    }

    public C1432b9 e(W0 w0) {
        return a(f14457f.a(), w0);
    }

    public W0 f() {
        return i(j.a());
    }

    public W0 g() {
        return i(l.a());
    }

    @Deprecated
    public String h(String str) {
        return a(k.a(), (String) null);
    }

    public List<String> i() {
        String a2 = a(m.a(), (String) null);
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        return Tl.c(a2);
    }

    public W0 j() {
        return i(q.a());
    }

    public W0 k() {
        return i(f14459h.a());
    }

    public W0 l() {
        return i(f14457f.a());
    }

    @Deprecated
    public String m(String str) {
        return a(f14458g.a(), (String) null);
    }

    public Xh n() {
        String a2 = a(G.a(), (String) null);
        try {
            if (!TextUtils.isEmpty(a2)) {
                JSONObject jSONObject = new JSONObject(a2);
                return new Xh(Tl.a(jSONObject, "libSslEnabled", (Boolean) null), U0.a(Tl.b(jSONObject, "STATUS")), Tl.b(jSONObject, "ERROR_EXPLANATION"));
            }
        } catch (Throwable unused) {
        }
        return new Xh(null, U0.UNKNOWN, null);
    }

    public W0 o() {
        return i(A.a());
    }

    public W0 p() {
        return i(B.a());
    }

    @Deprecated
    public C1432b9 q(String str) {
        return (C1432b9) b(o.a(), str);
    }

    public W0 r() {
        return i(p.a());
    }

    @Deprecated
    public C1432b9 s(String str) {
        return (C1432b9) b(f14456e.a(), str);
    }

    @Deprecated
    public C1432b9 t(String str) {
        return (C1432b9) b(f14454c.a(), str);
    }

    public W0 u() {
        return i(f14455d.a());
    }

    public W0 v() {
        return i(C.a());
    }

    public boolean w() {
        return a(s.a(), false);
    }

    public boolean x() {
        return a(F.a(), false);
    }

    public C1432b9 y() {
        return (C1432b9) b(s.a(), true);
    }

    public void z() {
        b(F.a(), true);
    }

    public C1432b9 a(Xh xh) {
        String a2 = G.a();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("libSslEnabled", xh.b()).put("STATUS", xh.c().a()).putOpt("ERROR_EXPLANATION", xh.a());
        } catch (Throwable unused) {
        }
        return (C1432b9) b(a2, jSONObject.toString());
    }

    public long b(long j2) {
        return a(t.a(), j2);
    }

    public C1432b9 c(boolean z2) {
        return (C1432b9) b(u.a(), z2);
    }

    public C1432b9 d(W0 w0) {
        return a(f14459h.a(), w0);
    }

    public C1432b9 e(long j2) {
        return (C1432b9) b(t.a(), j2);
    }

    public C1432b9 f(W0 w0) {
        return a(A.a(), w0);
    }

    @Deprecated
    public String g(String str) {
        return a(i.a(), (String) null);
    }

    public C1432b9 h(W0 w0) {
        return a(p.a(), w0);
    }

    @Deprecated
    public String j(String str) {
        return a(o.a(), (String) null);
    }

    public String k(String str) {
        return a(r.a(), (String) null);
    }

    @Deprecated
    public String l(String str) {
        return a(f14456e.a(), (String) null);
    }

    public C1829ra m() {
        C1829ra c1829ra = null;
        try {
            String a2 = a(x.a(), (String) null);
            if (a2 != null) {
                c1829ra = Tl.a(new JSONObject(a2));
            }
        } catch (Throwable unused) {
        }
        return c1829ra == null ? new C1829ra() : c1829ra;
    }

    @Deprecated
    public C1432b9 o(String str) {
        return (C1432b9) b(i.a(), str);
    }

    @Deprecated
    public C1432b9 p(String str) {
        return (C1432b9) b(k.a(), str);
    }

    public long q() {
        return a(y.a(), 0L);
    }

    public C1432b9 r(String str) {
        return (C1432b9) b(r.a(), str);
    }

    public C1450c2 s() {
        return Tl.f(e(E.a()));
    }

    public C1544fl t() {
        try {
            String a2 = a(w.a(), (String) null);
            if (a2 != null) {
                return Tl.c(new JSONObject(a2));
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public C1432b9 b(W0 w0) {
        return a(l.a(), w0);
    }

    public long c(long j2) {
        return a(z.a(), j2);
    }

    public C1432b9 d(boolean z2) {
        return (C1432b9) b(D.a(), z2);
    }

    public C1432b9 f(long j2) {
        return (C1432b9) b(z.a(), j2);
    }

    public C1432b9 g(W0 w0) {
        return a(B.a(), w0);
    }

    public C1432b9 h(long j2) {
        return (C1432b9) b(n.a(), j2);
    }

    public C1432b9 i(W0 w0) {
        return a(f14455d.a(), w0);
    }

    public C1432b9 j(W0 w0) {
        return a(C.a(), w0);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.W0 i(java.lang.String r6) {
        /*
            r5 = this;
            r0 = 0
            java.lang.String r6 = r5.a(r6, r0)     // Catch: java.lang.Throwable -> L28
            if (r6 == 0) goto L28
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L28
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L28
            com.yandex.metrica.impl.ob.W0 r6 = new com.yandex.metrica.impl.ob.W0     // Catch: java.lang.Throwable -> L28
            java.lang.String r2 = "ID"
            java.lang.String r2 = com.yandex.metrica.impl.ob.Tl.b(r1, r2)     // Catch: java.lang.Throwable -> L28
            java.lang.String r3 = "STATUS"
            java.lang.String r3 = com.yandex.metrica.impl.ob.Tl.b(r1, r3)     // Catch: java.lang.Throwable -> L28
            com.yandex.metrica.impl.ob.U0 r3 = com.yandex.metrica.impl.ob.U0.a(r3)     // Catch: java.lang.Throwable -> L28
            java.lang.String r4 = "ERROR_EXPLANATION"
            java.lang.String r1 = com.yandex.metrica.impl.ob.Tl.b(r1, r4)     // Catch: java.lang.Throwable -> L28
            r6.<init>(r2, r3, r1)     // Catch: java.lang.Throwable -> L28
            goto L29
        L28:
            r6 = r0
        L29:
            if (r6 != 0) goto L34
            com.yandex.metrica.impl.ob.W0 r6 = new com.yandex.metrica.impl.ob.W0
            com.yandex.metrica.impl.ob.U0 r1 = com.yandex.metrica.impl.ob.U0.UNKNOWN
            java.lang.String r2 = "no identifier in preferences"
            r6.<init>(r0, r1, r2)
        L34:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1432b9.i(java.lang.String):com.yandex.metrica.impl.ob.W0");
    }

    public C1432b9 b(List<String> list) {
        return (C1432b9) b(m.a(), Tl.c(list));
    }

    public C1432b9 g(long j2) {
        return (C1432b9) b(y.a(), j2);
    }

    public List<String> h() {
        LinkedList linkedList = new LinkedList();
        List<String> a2 = a(v.a(), linkedList);
        return a2 == null ? linkedList : a2;
    }

    @Deprecated
    public String n(String str) {
        return a(f14454c.a(), (String) null);
    }

    public boolean a(boolean z2) {
        return a(u.a(), z2);
    }

    public C1432b9 a(List<String> list) {
        return (C1432b9) b(v.a(), list);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.yandex.metrica.impl.ob.C1432b9 a(com.yandex.metrica.impl.ob.C1544fl r2) {
        /*
            r1 = this;
            if (r2 == 0) goto Lb
            org.json.JSONObject r2 = com.yandex.metrica.impl.ob.Tl.a(r2)     // Catch: java.lang.Throwable -> Lb
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> Lb
            goto Lc
        Lb:
            r2 = 0
        Lc:
            if (r2 == 0) goto L17
            com.yandex.metrica.impl.ob.Rd r0 = com.yandex.metrica.impl.ob.C1432b9.w
            java.lang.String r0 = r0.a()
            r1.b(r0, r2)
        L17:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1432b9.a(com.yandex.metrica.impl.ob.fl):com.yandex.metrica.impl.ob.b9");
    }

    public C1432b9 a(C1829ra c1829ra) {
        return (C1432b9) b(x.a(), Tl.a(c1829ra).toString());
    }

    public void a(C1450c2 c1450c2) {
        b(E.a(), Tl.a(c1450c2));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.C1432b9 a(java.lang.String r5, com.yandex.metrica.impl.ob.W0 r6) {
        /*
            r4 = this;
            if (r6 == 0) goto L27
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L27
            r0.<init>()     // Catch: java.lang.Throwable -> L27
            java.lang.String r1 = "ID"
            java.lang.String r2 = r6.f14173a     // Catch: java.lang.Throwable -> L22
            org.json.JSONObject r1 = r0.put(r1, r2)     // Catch: java.lang.Throwable -> L22
            java.lang.String r2 = "STATUS"
            com.yandex.metrica.impl.ob.U0 r3 = r6.f14174b     // Catch: java.lang.Throwable -> L22
            java.lang.String r3 = r3.a()     // Catch: java.lang.Throwable -> L22
            org.json.JSONObject r1 = r1.put(r2, r3)     // Catch: java.lang.Throwable -> L22
            java.lang.String r2 = "ERROR_EXPLANATION"
            java.lang.String r6 = r6.f14175c     // Catch: java.lang.Throwable -> L22
            r1.put(r2, r6)     // Catch: java.lang.Throwable -> L22
        L22:
            java.lang.String r6 = r0.toString()     // Catch: java.lang.Throwable -> L27
            goto L28
        L27:
            r6 = 0
        L28:
            if (r6 == 0) goto L2d
            r4.b(r5, r6)
        L2d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1432b9.a(java.lang.String, com.yandex.metrica.impl.ob.W0):com.yandex.metrica.impl.ob.b9");
    }
}
