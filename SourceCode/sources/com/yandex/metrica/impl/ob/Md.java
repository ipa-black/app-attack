package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.yandex.metrica.impl.ob.C1842s;
@Deprecated
/* loaded from: classes5.dex */
public class Md extends Kd {

    /* renamed from: f  reason: collision with root package name */
    private Rd f13484f;

    /* renamed from: g  reason: collision with root package name */
    private Rd f13485g;

    /* renamed from: h  reason: collision with root package name */
    private Rd f13486h;
    private Rd i;
    private Rd j;
    private Rd k;
    private Rd l;
    private Rd m;
    private Rd n;
    private Rd o;
    private Rd p;
    private Rd q;
    private Rd r;
    private Rd s;
    private Rd t;
    private static final Rd u = new Rd("SESSION_SLEEP_START_", null);
    private static final Rd v = new Rd("SESSION_ID_", null);
    private static final Rd w = new Rd("SESSION_COUNTER_ID_", null);
    private static final Rd x = new Rd("SESSION_INIT_TIME_", null);
    private static final Rd y = new Rd("SESSION_ALIVE_TIME_", null);
    private static final Rd z = new Rd("SESSION_IS_ALIVE_REPORT_NEEDED_", null);
    private static final Rd A = new Rd("BG_SESSION_ID_", null);
    private static final Rd B = new Rd("BG_SESSION_SLEEP_START_", null);
    private static final Rd C = new Rd("BG_SESSION_COUNTER_ID_", null);
    private static final Rd D = new Rd("BG_SESSION_INIT_TIME_", null);
    private static final Rd E = new Rd("IDENTITY_SEND_TIME_", null);
    private static final Rd F = new Rd("USER_INFO_", null);
    private static final Rd G = new Rd("REFERRER_", null);
    @Deprecated
    public static final Rd H = new Rd("APP_ENVIRONMENT", null);
    @Deprecated
    public static final Rd I = new Rd("APP_ENVIRONMENT_REVISION", null);
    private static final Rd J = new Rd("APP_ENVIRONMENT_", null);
    private static final Rd K = new Rd("APP_ENVIRONMENT_REVISION_", null);

    public Md(Context context, String str) {
        super(context, str);
        this.f13484f = new Rd(u.b(), c());
        this.f13485g = new Rd(v.b(), c());
        this.f13486h = new Rd(w.b(), c());
        this.i = new Rd(x.b(), c());
        this.j = new Rd(y.b(), c());
        this.k = new Rd(z.b(), c());
        this.l = new Rd(A.b(), c());
        this.m = new Rd(B.b(), c());
        this.n = new Rd(C.b(), c());
        this.o = new Rd(D.b(), c());
        this.p = new Rd(E.b(), c());
        this.q = new Rd(F.b(), c());
        this.r = new Rd(G.b(), c());
        this.s = new Rd(J.b(), c());
        this.t = new Rd(K.b(), c());
        a(-1);
        c(0);
        b(0);
    }

    public long a(long j) {
        return this.f13367b.getLong(this.o.a(), j);
    }

    public long b(long j) {
        return this.f13367b.getLong(this.n.a(), j);
    }

    public long c(long j) {
        return this.f13367b.getLong(this.l.a(), j);
    }

    public long d(long j) {
        return this.f13367b.getLong(this.m.a(), j);
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_boundentrypreferences";
    }

    public long e(long j) {
        return this.f13367b.getLong(this.i.a(), j);
    }

    public long f(long j) {
        return this.f13367b.getLong(this.f13486h.a(), j);
    }

    public long g(long j) {
        return this.f13367b.getLong(this.f13485g.a(), j);
    }

    public long h(long j) {
        return this.f13367b.getLong(this.f13484f.a(), j);
    }

    public long i(long j) {
        return this.f13367b.getLong(this.p.a(), j);
    }

    private void c(int i) {
        C1422b.a(this.f13367b, this.f13484f.a(), i);
    }

    public Boolean a(boolean z2) {
        return Boolean.valueOf(this.f13367b.getBoolean(this.k.a(), z2));
    }

    public String b(String str) {
        return this.f13367b.getString(this.q.a(), null);
    }

    public C1842s.a f() {
        synchronized (this) {
            if (this.f13367b.contains(this.s.a()) && this.f13367b.contains(this.t.a())) {
                return new C1842s.a(this.f13367b.getString(this.s.a(), JsonUtils.EMPTY_JSON), this.f13367b.getLong(this.t.a(), 0L));
            }
            return null;
        }
    }

    public boolean g() {
        return this.f13367b.contains(this.i.a()) || this.f13367b.contains(this.j.a()) || this.f13367b.contains(this.k.a()) || this.f13367b.contains(this.f13484f.a()) || this.f13367b.contains(this.f13485g.a()) || this.f13367b.contains(this.f13486h.a()) || this.f13367b.contains(this.o.a()) || this.f13367b.contains(this.m.a()) || this.f13367b.contains(this.l.a()) || this.f13367b.contains(this.n.a()) || this.f13367b.contains(this.s.a()) || this.f13367b.contains(this.q.a()) || this.f13367b.contains(this.r.a()) || this.f13367b.contains(this.p.a());
    }

    public void h() {
        this.f13367b.edit().remove(this.o.a()).remove(this.n.a()).remove(this.l.a()).remove(this.m.a()).remove(this.i.a()).remove(this.f13486h.a()).remove(this.f13485g.a()).remove(this.f13484f.a()).remove(this.k.a()).remove(this.j.a()).remove(this.q.a()).remove(this.s.a()).remove(this.t.a()).remove(this.r.a()).remove(this.p.a()).apply();
    }

    public Md i() {
        return (Md) a(this.r.a());
    }

    private void b(int i) {
        C1422b.a(this.f13367b, this.f13486h.a(), i);
    }

    public Md a(C1842s.a aVar) {
        synchronized (this) {
            a(this.s.a(), aVar.f15699a);
            a(this.t.a(), Long.valueOf(aVar.f15700b));
        }
        return this;
    }

    private void a(int i) {
        C1422b.a(this.f13367b, this.j.a(), i);
    }
}
