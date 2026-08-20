package com.yandex.metrica.impl.ob;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.yandex.metrica.impl.ob.C1842s;
import java.util.Collections;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.c9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1457c9 extends AbstractC1482d9 implements InterfaceC1531f8 {

    /* renamed from: c  reason: collision with root package name */
    private static final Rd f14537c = new Rd("IDENTITY_SEND_TIME", null);

    /* renamed from: d  reason: collision with root package name */
    private static final Rd f14538d = new Rd("PERMISSIONS_CHECK_TIME", null);

    /* renamed from: e  reason: collision with root package name */
    private static final Rd f14539e = new Rd("USER_INFO", null);

    /* renamed from: f  reason: collision with root package name */
    private static final Rd f14540f = new Rd("PROFILE_ID", null);

    /* renamed from: g  reason: collision with root package name */
    private static final Rd f14541g = new Rd("APP_ENVIRONMENT", null);

    /* renamed from: h  reason: collision with root package name */
    private static final Rd f14542h = new Rd("APP_ENVIRONMENT_REVISION", null);
    private static final Rd i = new Rd("LAST_MIGRATION_VERSION", null);
    private static final Rd j = new Rd("LAST_APP_VERSION_WITH_FEATURES", null);
    private static final Rd k = new Rd("APPLICATION_FEATURES", null);
    private static final Rd l = new Rd("LAST_STAT_SENDING_DISABLED_REPORTING_TIMESTAMP", null);
    private static final Rd m = new Rd("CERTIFICATES_SHA1_FINGERPRINTS", null);
    static final Rd n = new Rd("DEPRECATED_NATIVE_CRASHES_CHECKED", null);
    private static final Rd o = new Rd("REFERRER_HANDLED", null);
    private static final Rd p = new Rd("VITAL_DATA", null);

    public C1457c9(S7 s7) {
        super(s7);
    }

    public C1457c9 a(C1842s.a aVar) {
        synchronized (this) {
            b(f14541g.a(), aVar.f15699a);
            b(f14542h.a(), aVar.f15700b);
        }
        return this;
    }

    public long b(long j2) {
        return a(f14537c.a(), j2);
    }

    public C1457c9 c(long j2) {
        return (C1457c9) b(f14537c.a(), j2);
    }

    public C1457c9 d(long j2) {
        return (C1457c9) b(l.a(), j2);
    }

    public C1457c9 e(long j2) {
        return (C1457c9) b(f14538d.a(), j2);
    }

    public C1842s.a f() {
        C1842s.a aVar;
        synchronized (this) {
            aVar = new C1842s.a(a(f14541g.a(), JsonUtils.EMPTY_JSON), a(f14542h.a(), 0L));
        }
        return aVar;
    }

    public String g() {
        return a(k.a(), "");
    }

    public C1457c9 h(String str) {
        return (C1457c9) b(k.a(), str);
    }

    public int i() {
        return a(j.a(), -1);
    }

    public C1457c9 j(String str) {
        return (C1457c9) b(f14539e.a(), str);
    }

    public long k() {
        return a(l.a(), 0L);
    }

    public long l() {
        return a(f14538d.a(), 0L);
    }

    public String m() {
        return e(f14540f.a());
    }

    public String n() {
        return a(f14539e.a(), (String) null);
    }

    public boolean o() {
        return a(n.a(), false);
    }

    public C1457c9 p() {
        return (C1457c9) b(n.a(), true);
    }

    @Deprecated
    public C1457c9 q() {
        return (C1457c9) b(o.a(), true);
    }

    @Deprecated
    public C1457c9 r() {
        return (C1457c9) f(i.a());
    }

    @Deprecated
    public C1457c9 s() {
        return (C1457c9) f(o.a());
    }

    @Deprecated
    public Boolean t() {
        Rd rd = o;
        if (c(rd.a())) {
            return Boolean.valueOf(a(rd.a(), false));
        }
        return null;
    }

    public C1457c9 c(String str, String str2) {
        return (C1457c9) b(new Rd("SESSION_", str).a(), str2);
    }

    public String g(String str) {
        return a(new Rd("SESSION_", str).a(), "");
    }

    public List<String> h() {
        return a(m.a(), Collections.emptyList());
    }

    public C1457c9 i(String str) {
        return (C1457c9) b(f14540f.a(), str);
    }

    @Deprecated
    public Integer j() {
        Rd rd = i;
        if (c(rd.a())) {
            return Integer.valueOf((int) a(rd.a(), 0L));
        }
        return null;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1531f8
    public String c() {
        return a(p.a(), (String) null);
    }

    public C1457c9 a(int i2) {
        return (C1457c9) b(j.a(), i2);
    }

    public C1457c9 a(List<String> list) {
        return (C1457c9) b(m.a(), list);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1531f8
    public void a(String str) {
        b(p.a(), str);
    }
}
