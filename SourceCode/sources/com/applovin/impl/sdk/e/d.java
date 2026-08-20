package com.applovin.impl.sdk.e;

import android.net.Uri;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.sdk.AppLovinAdLoadListener;
/* loaded from: classes.dex */
public class d extends c {

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.a f5691e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f5692f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f5693g;

    public d(com.applovin.impl.sdk.ad.a aVar, com.applovin.impl.sdk.n nVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheAppLovinAd", aVar, nVar, appLovinAdLoadListener);
        this.f5691e = aVar;
    }

    private void j() {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Caching HTML resources...");
        }
        String a2 = a(this.f5691e.b(), this.f5691e.I(), this.f5691e);
        if (this.f5691e.q() && this.f5691e.isOpenMeasurementEnabled()) {
            a2 = this.f5674b.ao().a(a2);
        }
        this.f5691e.a(a2);
        this.f5691e.a(true);
        com.applovin.impl.sdk.v vVar2 = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.b(this.f5675c, "Finish caching non-video resources for ad #" + this.f5691e.getAdIdNumber());
        }
        this.f5676d.a(this.f5675c, "Ad updated with cachedHTML = " + this.f5691e.b());
    }

    private void k() {
        Uri a2;
        if (b() || (a2 = a(this.f5691e.i())) == null) {
            return;
        }
        if (this.f5691e.aK()) {
            this.f5691e.a(this.f5691e.b().replaceFirst(this.f5691e.e(), a2.toString()));
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Replaced video URL with cached video URI in HTML for web video ad");
            }
        }
        this.f5691e.g();
        this.f5691e.a(a2);
    }

    public void a(boolean z) {
        this.f5692f = z;
    }

    public void b(boolean z) {
        this.f5693g = z;
    }

    @Override // com.applovin.impl.sdk.e.c, java.lang.Runnable
    public void run() {
        super.run();
        boolean f2 = this.f5691e.f();
        boolean z = this.f5693g;
        if (f2 || z) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Begin caching for streaming ad #" + this.f5691e.getAdIdNumber() + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            c();
            if (f2) {
                if (this.f5692f) {
                    i();
                }
                j();
                if (!this.f5692f) {
                    i();
                }
                k();
            } else {
                i();
                j();
            }
        } else {
            com.applovin.impl.sdk.v vVar2 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Begin processing for non-streaming ad #" + this.f5691e.getAdIdNumber() + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            c();
            j();
            k();
            i();
        }
        long currentTimeMillis = System.currentTimeMillis() - this.f5691e.getCreatedAtMillis();
        com.applovin.impl.sdk.d.d.a(this.f5691e, this.f5674b);
        com.applovin.impl.sdk.d.d.a(currentTimeMillis, this.f5691e, this.f5674b);
        a(this.f5691e);
        a();
    }
}
