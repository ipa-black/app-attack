package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.os.SystemClock;
import android.view.ViewGroup;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class b extends a {
    private final com.applovin.impl.adview.activity.a.b u;
    private com.applovin.impl.sdk.utils.f v;
    private long w;
    private AtomicBoolean x;

    public b(com.applovin.impl.sdk.ad.e eVar, Activity activity, n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.u = new com.applovin.impl.adview.activity.a.b(this.f4299a, this.f4303e, this.f4300b);
        this.x = new AtomicBoolean();
    }

    private long c() {
        if (this.f4299a instanceof com.applovin.impl.sdk.ad.a) {
            float l = ((com.applovin.impl.sdk.ad.a) this.f4299a).l();
            if (l <= 0.0f) {
                l = (float) this.f4299a.t();
            }
            return (long) (Utils.secondsToMillisLong(l) * (this.f4299a.R() / 100.0d));
        }
        return 0L;
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void a() {
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void a(long j) {
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void a(ViewGroup viewGroup) {
        this.u.a(this.f4305g, this.f4304f, viewGroup);
        a(false);
        this.f4304f.renderAd(this.f4299a);
        a("javascript:al_onPoststitialShow();", this.f4299a.S());
        if (t()) {
            long c2 = c();
            this.w = c2;
            if (c2 > 0) {
                v vVar = this.f4301c;
                if (v.a()) {
                    this.f4301c.b("AppLovinFullscreenActivity", "Scheduling timer for ad fully watched in " + this.w + "ms...");
                }
                this.v = com.applovin.impl.sdk.utils.f.a(this.w, this.f4300b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.b.1
                    @Override // java.lang.Runnable
                    public void run() {
                        v vVar2 = b.this.f4301c;
                        if (v.a()) {
                            b.this.f4301c.b("AppLovinFullscreenActivity", "Marking ad as fully watched");
                        }
                        b.this.x.set(true);
                    }
                });
            }
        }
        if (this.f4305g != null) {
            if (this.f4299a.t() >= 0) {
                a(this.f4305g, this.f4299a.t(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.b.2
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.j = SystemClock.elapsedRealtime();
                    }
                });
            } else {
                this.f4305g.setVisibility(0);
            }
        }
        u();
        this.f4300b.V().a(new z(this.f4300b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.b.3
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.f4305g != null) {
                    b.this.f4299a.o().a(b.this.f4304f, Collections.singletonList(new com.applovin.impl.sdk.a.d(b.this.f4305g, FriendlyObstructionPurpose.CLOSE_AD, "close button")));
                } else {
                    b.this.f4299a.o().a(b.this.f4304f);
                }
            }
        }), o.a.MAIN, TimeUnit.SECONDS.toMillis(1L));
        v();
        super.b(Utils.isVideoMutedInitially(this.f4300b));
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void b() {
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void d() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void e() {
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void h() {
        m();
        com.applovin.impl.sdk.utils.f fVar = this.v;
        if (fVar != null) {
            fVar.a();
            this.v = null;
        }
        super.h();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void m() {
        com.applovin.impl.sdk.utils.f fVar;
        boolean r = r();
        int i = 100;
        if (t()) {
            if (!r && (fVar = this.v) != null) {
                i = (int) Math.min(100.0d, ((this.w - fVar.b()) / this.w) * 100.0d);
            }
            v vVar = this.f4301c;
            if (v.a()) {
                this.f4301c.b("AppLovinFullscreenActivity", "Ad engaged at " + i + "%");
            }
        }
        super.a(i, false, r, -2L);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected boolean r() {
        if (t()) {
            return this.x.get();
        }
        return true;
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected boolean s() {
        return false;
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void u() {
        long ae;
        int l;
        long j = 0;
        if (this.f4299a.ad() >= 0 || this.f4299a.ae() >= 0) {
            if (this.f4299a.ad() >= 0) {
                ae = this.f4299a.ad();
            } else {
                if (this.f4299a.af() && ((l = (int) ((com.applovin.impl.sdk.ad.a) this.f4299a).l()) > 0 || (l = (int) this.f4299a.t()) > 0)) {
                    j = TimeUnit.SECONDS.toMillis(l);
                }
                ae = (long) (j * (this.f4299a.ae() / 100.0d));
            }
            b(ae);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void w() {
        super.w();
        this.u.a(this.f4306h);
        this.j = SystemClock.elapsedRealtime();
        this.x.set(true);
    }
}
