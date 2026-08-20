package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.net.Uri;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.applovin.impl.adview.m;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.h;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.R;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class g extends com.applovin.impl.adview.activity.b.a implements com.applovin.impl.adview.g {
    private double A;
    private AtomicBoolean B;
    private AtomicBoolean C;
    private boolean D;
    private long E;
    private long F;
    private final com.applovin.impl.adview.activity.a.d u;
    private final m v;
    private final ImageView w;
    private final com.applovin.impl.adview.a x;
    private final boolean y;
    private double z;

    /* loaded from: classes.dex */
    private class a implements View.OnClickListener {
        private a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == g.this.v) {
                if (!g.this.s()) {
                    g.this.x();
                    return;
                }
                g.this.p();
                g.this.s.b();
            } else if (view == g.this.w) {
                g.this.z();
            } else {
                v vVar = g.this.f4301c;
                if (v.a()) {
                    g.this.f4301c.e("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
                }
            }
        }
    }

    public g(com.applovin.impl.sdk.ad.e eVar, Activity activity, n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.u = new com.applovin.impl.adview.activity.a.d(this.f4299a, this.f4303e, this.f4300b);
        boolean f2 = this.f4299a.f();
        this.y = f2;
        this.B = new AtomicBoolean();
        this.C = new AtomicBoolean();
        this.D = Utils.isVideoMutedInitially(this.f4300b);
        this.E = -2L;
        this.F = 0L;
        a aVar = new a();
        if (eVar.r() >= 0) {
            m mVar = new m(eVar.x(), activity);
            this.v = mVar;
            mVar.setVisibility(8);
            mVar.setOnClickListener(aVar);
        } else {
            this.v = null;
        }
        if (a(this.D, nVar)) {
            ImageView imageView = new ImageView(activity);
            this.w = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setClickable(true);
            imageView.setOnClickListener(aVar);
            d(this.D);
        } else {
            this.w = null;
        }
        if (!f2) {
            this.x = null;
            return;
        }
        com.applovin.impl.adview.a aVar2 = new com.applovin.impl.adview.a(activity, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cJ)).intValue(), 16842874);
        this.x = aVar2;
        aVar2.setColor(Color.parseColor("#75FFFFFF"));
        aVar2.setBackgroundColor(Color.parseColor("#00000000"));
        aVar2.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        if (this.C.compareAndSet(false, true)) {
            a(this.v, this.f4299a.r(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.g.3
                @Override // java.lang.Runnable
                public void run() {
                    g.this.E = -1L;
                    g.this.F = SystemClock.elapsedRealtime();
                }
            });
        }
    }

    private static boolean a(boolean z, n nVar) {
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.cy)).booleanValue()) {
            if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.cz)).booleanValue() || z) {
                return true;
            }
            return ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.cB)).booleanValue();
        }
        return false;
    }

    private void d(boolean z) {
        if (h.d()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.f4303e.getDrawable(z ? R.drawable.applovin_ic_unmute_to_mute : R.drawable.applovin_ic_mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.w.setScaleType(ImageView.ScaleType.FIT_XY);
                this.w.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        Uri aC = z ? this.f4299a.aC() : this.f4299a.aD();
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        this.w.setImageURI(aC);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void a() {
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
        }
    }

    @Override // com.applovin.impl.adview.g
    public void a(double d2) {
        b("javascript:al_setVideoMuted(" + this.D + ");");
        com.applovin.impl.adview.a aVar = this.x;
        if (aVar != null) {
            aVar.b();
        }
        if (this.v != null) {
            A();
        }
        this.f4304f.getController().m();
        this.A = d2;
        u();
        if (this.f4299a.am()) {
            this.s.a(this.f4299a, (Runnable) null);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void a(long j) {
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void a(ViewGroup viewGroup) {
        this.u.a(this.w, this.v, this.f4305g, this.x, this.f4304f, viewGroup);
        this.f4304f.getController().a(this);
        a(false);
        com.applovin.impl.adview.a aVar = this.x;
        if (aVar != null) {
            aVar.a();
        }
        this.f4304f.renderAd(this.f4299a);
        if (this.v != null) {
            this.f4300b.V().a(new z(this.f4300b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.g.1
                @Override // java.lang.Runnable
                public void run() {
                    g.this.A();
                }
            }), o.a.MAIN, this.f4299a.s(), true);
        }
        this.f4300b.V().a(new z(this.f4300b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.g.2
            @Override // java.lang.Runnable
            public void run() {
                if (g.this.f4305g != null) {
                    g.this.f4299a.o().a(g.this.f4304f, Collections.singletonList(new com.applovin.impl.sdk.a.d(g.this.f4305g, FriendlyObstructionPurpose.CLOSE_AD, "close button")));
                } else {
                    g.this.f4299a.o().a(g.this.f4304f);
                }
            }
        }), o.a.MAIN, 500L);
        super.b(this.D);
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void b() {
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Skipping video from prompt");
        }
        x();
    }

    @Override // com.applovin.impl.adview.g
    public void b(double d2) {
        this.z = d2;
    }

    @Override // com.applovin.impl.adview.g
    public void c() {
        com.applovin.impl.adview.a aVar = this.x;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void d() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void e() {
    }

    @Override // com.applovin.impl.adview.g
    public void g_() {
        y();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void h() {
        m();
        super.h();
    }

    @Override // com.applovin.impl.adview.g
    public void h_() {
        com.applovin.impl.adview.a aVar = this.x;
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void m() {
        super.a((int) this.z, this.y, r(), this.E);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected boolean r() {
        return this.z >= ((double) this.f4299a.Q());
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected boolean s() {
        return t() && !r();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void u() {
        long ae;
        long millis;
        if (this.f4299a.ad() >= 0 || this.f4299a.ae() >= 0) {
            if (this.f4299a.ad() >= 0) {
                ae = this.f4299a.ad();
            } else {
                com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) this.f4299a;
                long millis2 = this.A > 0.0d ? TimeUnit.SECONDS.toMillis((long) this.A) : 0L;
                if (aVar.af()) {
                    int l = (int) ((com.applovin.impl.sdk.ad.a) this.f4299a).l();
                    if (l > 0) {
                        millis = TimeUnit.SECONDS.toMillis(l);
                    } else {
                        int t = (int) aVar.t();
                        if (t > 0) {
                            millis = TimeUnit.SECONDS.toMillis(t);
                        }
                    }
                    millis2 += millis;
                }
                ae = (long) (millis2 * (this.f4299a.ae() / 100.0d));
            }
            b(ae);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void w() {
        super.w();
        this.u.a(this.f4306h);
        this.j = SystemClock.elapsedRealtime();
        this.z = 100.0d;
    }

    public void x() {
        this.E = SystemClock.elapsedRealtime() - this.F;
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Skipping video with skip time: " + this.E + "ms");
        }
        this.f4302d.f();
        this.l++;
        if (this.f4299a.y()) {
            h();
        } else {
            y();
        }
    }

    public void y() {
        if (this.B.compareAndSet(false, true)) {
            v vVar = this.f4301c;
            if (v.a()) {
                this.f4301c.b("AppLovinFullscreenActivity", "Showing postitial...");
            }
            b("javascript:al_showPostitial();");
            m mVar = this.v;
            if (mVar != null) {
                mVar.setVisibility(8);
            }
            ImageView imageView = this.w;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            com.applovin.impl.adview.a aVar = this.x;
            if (aVar != null) {
                aVar.b();
            }
            if (this.f4305g != null) {
                if (this.f4299a.t() >= 0) {
                    a(this.f4305g, this.f4299a.t(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.g.4
                        @Override // java.lang.Runnable
                        public void run() {
                            g.this.j = SystemClock.elapsedRealtime();
                        }
                    });
                } else {
                    this.f4305g.setVisibility(0);
                }
            }
            this.f4304f.getController().n();
            v();
        }
    }

    protected void z() {
        this.D = !this.D;
        b("javascript:al_setVideoMuted(" + this.D + ");");
        d(this.D);
        a(this.D, 0L);
    }
}
