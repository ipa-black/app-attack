package com.appodeal.ads;

import com.appodeal.ads.api.Stats;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class d0 implements f5 {

    /* renamed from: a  reason: collision with root package name */
    public JSONObject f6613a;

    /* renamed from: b  reason: collision with root package name */
    public String f6614b;

    /* renamed from: c  reason: collision with root package name */
    public String f6615c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f6616d;

    /* renamed from: e  reason: collision with root package name */
    public double f6617e;

    /* renamed from: f  reason: collision with root package name */
    public long f6618f;

    /* renamed from: g  reason: collision with root package name */
    public int f6619g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f6620h;
    public String i;
    public String j;
    public int k;
    public long m;
    public long n;
    public e0 q;
    public Boolean l = null;
    public boolean o = false;
    public boolean p = false;

    public static d0 a(JSONObject jSONObject, boolean z) {
        d0 d0Var = new d0();
        d0Var.f6613a = jSONObject;
        d0Var.f6614b = jSONObject.optString("id");
        d0Var.f6616d = z;
        d0Var.f6615c = jSONObject.optString("status");
        d0Var.f6617e = jSONObject.optDouble("ecpm", 0.0d);
        d0Var.f6618f = jSONObject.optLong("exptime", 0L);
        d0Var.f6619g = jSONObject.optInt("tmax", 0);
        d0Var.f6620h = jSONObject.optBoolean("async");
        d0Var.i = n5.a(jSONObject, "mediator", (String) null);
        d0Var.j = n5.a(jSONObject, "unit_name", (String) null);
        d0Var.k = jSONObject.optInt("impression_interval", -1);
        if (jSONObject.has("mute")) {
            d0Var.l = Boolean.valueOf(jSONObject.optBoolean("mute", false));
        }
        return d0Var;
    }

    @Override // com.appodeal.ads.c0
    public final void a(double d2) {
        this.f6617e = d2;
    }

    @Override // com.appodeal.ads.g5
    public final void a(long j) {
        if (this.p) {
            return;
        }
        this.p = true;
        this.n = j;
    }

    @Override // com.appodeal.ads.c0
    public final void a(e0 e0Var) {
        this.q = e0Var;
    }

    @Override // com.appodeal.ads.c0
    public final void a(String str) {
        this.f6614b = str;
    }

    @Override // com.appodeal.ads.c0
    public final void b() {
        this.f6616d = false;
    }

    @Override // com.appodeal.ads.g5
    public final void b(long j) {
        if (this.o) {
            return;
        }
        this.o = true;
        this.m = j;
    }

    @Override // com.appodeal.ads.g5
    public final long c() {
        return this.n;
    }

    @Override // com.appodeal.ads.AdUnit
    public final String getAdUnitName() {
        return this.j;
    }

    @Override // com.appodeal.ads.AdUnit
    public final double getEcpm() {
        return this.f6617e;
    }

    @Override // com.appodeal.ads.AdUnit
    public final long getExpTime() {
        return this.f6618f;
    }

    @Override // com.appodeal.ads.AdUnit
    public final String getId() {
        return this.f6614b;
    }

    @Override // com.appodeal.ads.AdUnit
    public final int getImpressionInterval() {
        return this.k;
    }

    @Override // com.appodeal.ads.AdUnit
    public final JSONObject getJsonData() {
        return this.f6613a;
    }

    @Override // com.appodeal.ads.AdUnit
    public final int getLoadingTimeout() {
        return this.f6619g;
    }

    @Override // com.appodeal.ads.AdUnit
    public final String getMediatorName() {
        return this.i;
    }

    @Override // com.appodeal.ads.AdUnit
    public final e0 getRequestResult() {
        return this.q;
    }

    @Override // com.appodeal.ads.AdUnit
    public final String getStatus() {
        return this.f6615c;
    }

    @Override // com.appodeal.ads.AdUnit
    public final boolean isAsync() {
        return this.f6620h;
    }

    @Override // com.appodeal.ads.AdUnit
    public final Boolean isMuted() {
        return this.l;
    }

    @Override // com.appodeal.ads.AdUnit
    public final boolean isPrecache() {
        return this.f6616d;
    }

    @Override // com.appodeal.ads.f5
    public final Stats.AdUnit a() {
        return Stats.AdUnit.newBuilder().setId(this.f6614b).setEcpm(this.f6617e).setPrecache(this.f6616d).setStart(this.m).setFinish(this.n).setResult(this.q.a()).build();
    }
}
