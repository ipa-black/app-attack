package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Map;
@Deprecated
/* loaded from: classes5.dex */
public class Ld extends Kd {
    private static final Rd l = new Rd(IronSourceConstants.TYPE_UUID, null);
    private static final Rd m = new Rd("DEVICEID_3", null);
    private static final Rd n = new Rd("AD_URL_GET", null);
    private static final Rd o = new Rd("AD_URL_REPORT", null);
    private static final Rd p = new Rd("HOST_URL", null);
    private static final Rd q = new Rd("SERVER_TIME_OFFSET", null);
    private static final Rd r = new Rd("CLIDS", null);

    /* renamed from: f  reason: collision with root package name */
    private Rd f13420f;

    /* renamed from: g  reason: collision with root package name */
    private Rd f13421g;

    /* renamed from: h  reason: collision with root package name */
    private Rd f13422h;
    private Rd i;
    private Rd j;
    private Rd k;

    public Ld(Context context) {
        super(context, null);
        this.f13420f = new Rd(l.b());
        this.f13421g = new Rd(m.b());
        this.f13422h = new Rd(n.b());
        this.i = new Rd(o.b());
        new Rd(p.b());
        this.j = new Rd(q.b());
        this.k = new Rd(r.b());
    }

    public long a(long j) {
        return this.f13367b.getLong(this.j.b(), j);
    }

    public String b(String str) {
        return this.f13367b.getString(this.f13422h.a(), null);
    }

    public String c(String str) {
        return this.f13367b.getString(this.i.a(), null);
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_startupinfopreferences";
    }

    public String d(String str) {
        return this.f13367b.getString(this.k.a(), null);
    }

    public String e(String str) {
        return this.f13367b.getString(this.f13421g.a(), null);
    }

    public String f(String str) {
        return this.f13367b.getString(this.f13420f.a(), null);
    }

    public Map<String, ?> g() {
        return this.f13367b.getAll();
    }

    public Ld f() {
        return (Ld) e();
    }
}
