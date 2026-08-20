package com.applovin.impl.mediation.a;

import android.os.SystemClock;
import com.applovin.impl.sdk.n;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c extends a {

    /* renamed from: c  reason: collision with root package name */
    private final AtomicReference<com.applovin.impl.sdk.b.c> f4692c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f4693d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f4694e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f4695f;

    private c(c cVar, com.applovin.impl.mediation.g gVar) {
        super(cVar.aa(), cVar.Q(), cVar.P(), gVar, cVar.f4701b);
        this.f4694e = new AtomicBoolean();
        this.f4692c = cVar.f4692c;
        this.f4693d = cVar.f4693d;
    }

    public c(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, n nVar) {
        super(map, jSONObject, jSONObject2, null, nVar);
        this.f4694e = new AtomicBoolean();
        this.f4692c = new AtomicReference<>();
        this.f4693d = new AtomicBoolean();
    }

    public long A() {
        long b2 = b("ad_hidden_timeout_ms", -1L);
        return b2 >= 0 ? b2 : a("ad_hidden_timeout_ms", ((Long) this.f4701b.a(com.applovin.impl.sdk.c.a.H)).longValue());
    }

    public boolean B() {
        if (b("schedule_ad_hidden_on_ad_dismiss", (Boolean) false).booleanValue()) {
            return true;
        }
        return a("schedule_ad_hidden_on_ad_dismiss", (Boolean) this.f4701b.a(com.applovin.impl.sdk.c.a.I)).booleanValue();
    }

    public long C() {
        long b2 = b("ad_hidden_on_ad_dismiss_callback_delay_ms", -1L);
        return b2 >= 0 ? b2 : a("ad_hidden_on_ad_dismiss_callback_delay_ms", ((Long) this.f4701b.a(com.applovin.impl.sdk.c.a.J)).longValue());
    }

    public long D() {
        if (u() > 0) {
            return SystemClock.elapsedRealtime() - u();
        }
        return -1L;
    }

    public long E() {
        long b2 = b("fullscreen_display_delay_ms", -1L);
        return b2 >= 0 ? b2 : ((Long) this.f4701b.a(com.applovin.impl.sdk.c.a.u)).longValue();
    }

    public long F() {
        return b("ahdm", ((Long) this.f4701b.a(com.applovin.impl.sdk.c.a.w)).longValue());
    }

    public boolean G() {
        return b("susaode", (Boolean) this.f4701b.a(com.applovin.impl.sdk.c.a.v)).booleanValue();
    }

    public String H() {
        return b("bcode", "");
    }

    public String I() {
        return a("mcode", "");
    }

    public boolean J() {
        return this.f4693d.get();
    }

    public void K() {
        this.f4693d.set(true);
    }

    public com.applovin.impl.sdk.b.c L() {
        return this.f4692c.getAndSet(null);
    }

    public AtomicBoolean M() {
        return this.f4694e;
    }

    public boolean N() {
        return this.f4695f;
    }

    @Override // com.applovin.impl.mediation.a.a
    public a a(com.applovin.impl.mediation.g gVar) {
        return new c(this, gVar);
    }

    public void a(com.applovin.impl.sdk.b.c cVar) {
        this.f4692c.set(cVar);
    }

    public void a(boolean z) {
        this.f4695f = z;
    }

    public long z() {
        long b2 = b("ad_expiration_ms", -1L);
        return b2 >= 0 ? b2 : a("ad_expiration_ms", ((Long) this.f4701b.a(com.applovin.impl.sdk.c.a.C)).longValue());
    }
}
