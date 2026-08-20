package com.applovin.impl.mediation.a;

import com.applovin.impl.sdk.b;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d extends e implements b.a {

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f4696c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f4697d;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.impl.sdk.b f4698e;

    /* renamed from: f  reason: collision with root package name */
    private WeakReference<a> f4699f;

    /* loaded from: classes.dex */
    public interface a {
        void onAdExpired(d dVar);
    }

    private d(d dVar, com.applovin.impl.mediation.g gVar) {
        super(dVar.aa(), dVar.Q(), dVar.P(), gVar, dVar.f4701b);
        this.f4696c = new AtomicBoolean();
        this.f4697d = new AtomicBoolean();
        this.f4699f = new WeakReference<>(null);
    }

    public d(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, n nVar) {
        super(map, jSONObject, jSONObject2, null, nVar);
        this.f4696c = new AtomicBoolean();
        this.f4697d = new AtomicBoolean();
        this.f4699f = new WeakReference<>(null);
    }

    private void a(boolean z) {
        com.applovin.impl.sdk.b bVar = this.f4698e;
        if (bVar != null) {
            bVar.a();
            this.f4698e = null;
        }
        if (z) {
            this.f4699f.clear();
        }
    }

    public String A() {
        return BundleUtils.getString("template", "", ab());
    }

    public boolean B() {
        return b("inacc", (Boolean) this.f4701b.a(com.applovin.impl.sdk.c.a.W)).booleanValue();
    }

    public long C() {
        long b2 = b("ad_expiration_ms", -1L);
        return b2 >= 0 ? b2 : a("ad_expiration_ms", ((Long) this.f4701b.a(com.applovin.impl.sdk.c.a.D)).longValue());
    }

    public boolean D() {
        return this.f4685a == null;
    }

    public AtomicBoolean E() {
        return this.f4696c;
    }

    public AtomicBoolean F() {
        return this.f4697d;
    }

    public void G() {
        a(true);
    }

    @Override // com.applovin.impl.mediation.a.a
    public com.applovin.impl.mediation.a.a a(com.applovin.impl.mediation.g gVar) {
        return new d(this, gVar);
    }

    public void a(a aVar) {
        if (this.f4696c.get() || this.f4698e != null) {
            return;
        }
        com.applovin.impl.sdk.b bVar = new com.applovin.impl.sdk.b(this.f4701b, this);
        this.f4698e = bVar;
        bVar.a(this);
        this.f4699f = new WeakReference<>(aVar);
    }

    public void a(MaxNativeAdView maxNativeAdView) {
        this.f4685a.a(maxNativeAdView);
    }

    @Override // com.applovin.impl.sdk.b.a
    public void onAdExpired() {
        if (getNativeAd() != null) {
            getNativeAd().setExpired();
        }
        a(false);
        a aVar = this.f4699f.get();
        if (aVar != null) {
            aVar.onAdExpired(this);
            this.f4699f.clear();
        }
    }

    public MaxNativeAdView z() {
        return this.f4685a.c();
    }
}
