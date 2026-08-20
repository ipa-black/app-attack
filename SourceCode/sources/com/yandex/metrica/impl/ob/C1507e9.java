package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.e9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1507e9 extends AbstractC1482d9 implements InterfaceC1789ph, InterfaceC1531f8 {

    /* renamed from: c  reason: collision with root package name */
    static final Rd f14656c = new Rd("LOCATION_TRACKING_ENABLED", null);

    /* renamed from: d  reason: collision with root package name */
    static final Rd f14657d = new Rd("PREF_KEY_OFFSET", null);

    /* renamed from: e  reason: collision with root package name */
    static final Rd f14658e = new Rd("UNCHECKED_TIME", null);

    /* renamed from: f  reason: collision with root package name */
    static final Rd f14659f = new Rd("STATISTICS_RESTRICTED_IN_MAIN", null);

    /* renamed from: g  reason: collision with root package name */
    static final Rd f14660g;

    /* renamed from: h  reason: collision with root package name */
    static final Rd f14661h;
    static final Rd i;
    static final Rd j;
    static final Rd k;
    static final Rd l;
    static final Rd m;
    private static final Rd n;
    static final Rd o;
    static final Rd p;
    static final Rd q;
    static final Rd r;
    static final Rd s;
    static final Rd t;
    static final Rd u;
    static final Rd v;
    static final Rd w;

    static {
        new Rd("SDKFCE", null);
        new Rd("FST", null);
        new Rd("LSST", null);
        new Rd("FSDKFCO", null);
        new Rd("SRSDKFC", null);
        new Rd("LSDKFCAT", null);
        f14660g = new Rd("LAST_IDENTITY_LIGHT_SEND_TIME", null);
        f14661h = new Rd("NEXT_REPORT_SEND_ATTEMPT_NUMBER", null);
        i = new Rd("NEXT_LOCATION_SEND_ATTEMPT_NUMBER", null);
        j = new Rd("NEXT_STARTUP_SEND_ATTEMPT_NUMBER", null);
        k = new Rd("LAST_REPORT_SEND_ATTEMPT_TIME", null);
        l = new Rd("LAST_LOCATION_SEND_ATTEMPT_TIME", null);
        m = new Rd("LAST_STARTUP_SEND_ATTEMPT_TIME", null);
        n = new Rd("LAST_MIGRATION_VERSION", null);
        o = new Rd("LAST_WIFI_SCANNING_ATTEMPT_TIME", null);
        p = new Rd("LAST_LBS_SCANNING_ATTEMPT_TIME", null);
        q = new Rd("LAST_GPS_SCANNING_ATTEMPT_TIME", null);
        r = new Rd("LAST_FUSED_SCANNING_ATTEMPT_TIME", null);
        s = new Rd("SATELLITE_PRELOAD_INFO_CHECKED", null);
        t = new Rd("SATELLITE_CLIDS_CHECKED", null);
        u = new Rd("CERTIFICATE_REQUEST_ETAG", null);
        v = new Rd("CERTIFICATE_REQUEST_NEXT_ATTEMPT_TIME", null);
        w = new Rd("VITAL_DATA", null);
    }

    public C1507e9(S7 s7) {
        super(s7);
    }

    @Deprecated
    public int a(int i2) {
        return a(n.a(), i2);
    }

    public long b(int i2) {
        return a(f14657d.a(), i2);
    }

    public C1507e9 c(boolean z) {
        return (C1507e9) b(f14658e.a(), z);
    }

    public void d(boolean z) {
        b(f14656c.a(), z).d();
    }

    public long e(long j2) {
        return a(p.a(), j2);
    }

    public Boolean f() {
        Rd rd = f14659f;
        if (c(rd.a())) {
            return Boolean.valueOf(a(rd.a(), true));
        }
        return null;
    }

    public boolean g() {
        return a(f14656c.a(), false);
    }

    public C1507e9 h(long j2) {
        return (C1507e9) b(q.a(), j2);
    }

    public C1507e9 i(long j2) {
        return (C1507e9) b(f14660g.a(), j2);
    }

    public C1507e9 j(long j2) {
        return (C1507e9) b(p.a(), j2);
    }

    public C1507e9 k(long j2) {
        return (C1507e9) b(o.a(), j2);
    }

    public C1507e9 l(long j2) {
        return (C1507e9) b(f14657d.a(), j2);
    }

    public boolean a(boolean z) {
        return a(f14658e.a(), z);
    }

    public C1507e9 b(boolean z) {
        return (C1507e9) b(f14659f.a(), z);
    }

    public long c(long j2) {
        return a(q.a(), j2);
    }

    public long d(long j2) {
        return a(f14660g.a(), j2);
    }

    public C1507e9 g(long j2) {
        return (C1507e9) b(r.a(), j2);
    }

    public C1507e9 h() {
        return (C1507e9) b(t.a(), true);
    }

    public C1507e9 i() {
        return (C1507e9) b(s.a(), true);
    }

    @Deprecated
    public C1507e9 j() {
        return (C1507e9) f(n.a());
    }

    public boolean k() {
        return a(s.a(), false);
    }

    public boolean l() {
        return a(t.a(), false);
    }

    public int a(EnumC1809qd enumC1809qd, int i2) {
        Rd b2 = b(enumC1809qd);
        return b2 == null ? i2 : a(b2.a(), i2);
    }

    public C1507e9 b(EnumC1809qd enumC1809qd, int i2) {
        Rd b2 = b(enumC1809qd);
        return b2 != null ? (C1507e9) b(b2.a(), i2) : this;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1531f8
    public String c() {
        return a(w.a(), (String) null);
    }

    public long f(long j2) {
        return a(o.a(), j2);
    }

    public long a(EnumC1809qd enumC1809qd, long j2) {
        Rd a2 = a(enumC1809qd);
        return a2 == null ? j2 : a(a2.a(), j2);
    }

    public C1507e9 b(EnumC1809qd enumC1809qd, long j2) {
        Rd a2 = a(enumC1809qd);
        return a2 != null ? (C1507e9) b(a2.a(), j2) : this;
    }

    public C1507e9 a(String str, String str2, String str3) {
        return (C1507e9) b(new Rd("LAST_SOCKET_REPORT_TIMES_" + str + "_" + str2, null).a(), str3);
    }

    public long b(long j2) {
        return a(r.a(), j2);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1789ph
    public String b() {
        return a(u.a(), (String) null);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1789ph
    public long a() {
        return a(v.a(), 0L);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1789ph
    public InterfaceC1789ph b(String str) {
        return (InterfaceC1789ph) b(u.a(), str);
    }

    private Rd b(EnumC1809qd enumC1809qd) {
        int ordinal = enumC1809qd.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    return null;
                }
                return j;
            }
            return i;
        }
        return f14661h;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1789ph
    public InterfaceC1789ph a(long j2) {
        return (InterfaceC1789ph) b(v.a(), j2);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1531f8
    public void a(String str) {
        b(w.a(), str);
    }

    private Rd a(EnumC1809qd enumC1809qd) {
        int ordinal = enumC1809qd.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    return null;
                }
                return m;
            }
            return l;
        }
        return k;
    }
}
