package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ak;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.aw;
import com.applovin.exoplayer2.h.u;
import com.applovin.exoplayer2.k.p;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.f;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.j;
import com.applovin.impl.adview.m;
import com.applovin.impl.adview.s;
import com.applovin.impl.adview.t;
import com.applovin.impl.adview.u;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.h;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.utils.r;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class e extends com.applovin.impl.adview.activity.b.a implements AppLovinCommunicatorSubscriber {
    protected final ProgressBar A;
    protected final j B;
    protected boolean C;
    protected long D;
    protected int E;
    protected boolean F;
    protected boolean G;
    private final com.applovin.impl.adview.activity.a.c H;
    private final a I;
    private final Handler J;
    private final boolean K;
    private long L;
    private final AtomicBoolean M;
    private final AtomicBoolean N;
    private long O;
    private long P;
    protected final com.applovin.exoplayer2.ui.g u;
    protected final aw v;
    protected final com.applovin.impl.adview.a w;
    protected final m x;
    protected final ImageView y;
    protected final t z;

    /* loaded from: classes.dex */
    private class a implements u.a {
        private a() {
        }

        @Override // com.applovin.impl.adview.u.a
        public void a(t tVar) {
            v vVar = e.this.f4301c;
            if (v.a()) {
                e.this.f4301c.b("AppLovinFullscreenActivity", "Clicking through from video button...");
            }
            e.this.a(tVar.getAndClearLastClickLocation());
        }

        @Override // com.applovin.impl.adview.u.a
        public void b(t tVar) {
            v vVar = e.this.f4301c;
            if (v.a()) {
                e.this.f4301c.b("AppLovinFullscreenActivity", "Closing ad from video button...");
            }
            e.this.h();
        }

        @Override // com.applovin.impl.adview.u.a
        public void c(t tVar) {
            v vVar = e.this.f4301c;
            if (v.a()) {
                e.this.f4301c.b("AppLovinFullscreenActivity", "Skipping video from video button...");
            }
            e.this.c();
        }
    }

    /* loaded from: classes.dex */
    private class b implements an.b, f.d, AppLovinTouchToClickListener.OnClickListener {
        private b() {
        }

        @Override // com.applovin.exoplayer2.ui.f.d
        public void a(int i) {
            if (i == 0) {
                e.this.u.b();
            }
        }

        @Override // com.applovin.exoplayer2.an.b
        public void a(ak akVar) {
            e.this.c("Video view error (" + akVar + ")");
            e.this.h();
        }

        @Override // com.applovin.exoplayer2.an.b
        public void b(int i) {
            v vVar = e.this.f4301c;
            if (v.a()) {
                e.this.f4301c.b("AppLovinFullscreenActivity", "Player state changed to state " + i + " and will play when ready: " + e.this.v.x());
            }
            if (i == 2) {
                e.this.x();
                e.this.f4302d.g();
            } else if (i != 3) {
                if (i == 4) {
                    v vVar2 = e.this.f4301c;
                    if (v.a()) {
                        e.this.f4301c.b("AppLovinFullscreenActivity", "Video completed");
                    }
                    e.this.G = true;
                    if (!e.this.k) {
                        e.this.A();
                    } else if (e.this.t()) {
                        e.this.H();
                    }
                }
            } else {
                e.this.v.a(!e.this.C ? 1 : 0);
                e eVar = e.this;
                eVar.c(eVar.v.H());
                e.this.u();
                v vVar3 = e.this.f4301c;
                if (v.a()) {
                    e.this.f4301c.b("AppLovinFullscreenActivity", "MediaPlayer prepared: " + e.this.v);
                }
                e.this.B.a();
                if (e.this.x != null) {
                    e.this.C();
                }
                e.this.y();
                if (e.this.s.c()) {
                    e.this.e();
                }
            }
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, PointF pointF) {
            e.this.a(pointF);
        }
    }

    /* loaded from: classes.dex */
    private class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == e.this.x) {
                if (!e.this.s()) {
                    e.this.c();
                    return;
                }
                e.this.e();
                e.this.p();
                e.this.s.b();
            } else if (view == e.this.y) {
                e.this.z();
            } else {
                v vVar = e.this.f4301c;
                if (v.a()) {
                    e.this.f4301c.e("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
                }
            }
        }
    }

    public e(com.applovin.impl.sdk.ad.e eVar, Activity activity, n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.H = new com.applovin.impl.adview.activity.a.c(this.f4299a, this.f4303e, this.f4300b);
        a aVar = new a();
        this.I = aVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.J = handler;
        j jVar = new j(handler, this.f4300b);
        this.B = jVar;
        boolean f2 = this.f4299a.f();
        this.K = f2;
        this.C = Utils.isVideoMutedInitially(this.f4300b);
        this.L = -1L;
        this.M = new AtomicBoolean();
        this.N = new AtomicBoolean();
        this.O = -2L;
        this.P = 0L;
        if (!eVar.hasVideoUrl()) {
            throw new IllegalStateException("Attempting to use fullscreen video ad presenter for non-video ad");
        }
        c cVar = new c();
        if (eVar.r() >= 0) {
            m mVar = new m(eVar.x(), activity);
            this.x = mVar;
            mVar.setVisibility(8);
            mVar.setOnClickListener(cVar);
        } else {
            this.x = null;
        }
        if (a(this.C, nVar)) {
            ImageView imageView = new ImageView(activity);
            this.y = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setClickable(true);
            imageView.setOnClickListener(cVar);
            d(this.C);
        } else {
            this.y = null;
        }
        String C = eVar.C();
        if (StringUtils.isValidString(C)) {
            u uVar = new u(nVar);
            uVar.a(new WeakReference<>(aVar));
            t tVar = new t(uVar, activity);
            this.z = tVar;
            tVar.a(C);
        } else {
            this.z = null;
        }
        if (f2) {
            com.applovin.impl.adview.a aVar2 = new com.applovin.impl.adview.a(activity, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cJ)).intValue(), 16842874);
            this.w = aVar2;
            aVar2.setColor(Color.parseColor("#75FFFFFF"));
            aVar2.setBackgroundColor(Color.parseColor("#00000000"));
            aVar2.setVisibility(8);
            AppLovinCommunicator.getInstance(activity).subscribe(this, "video_caching_failed");
        } else {
            this.w = null;
        }
        if (eVar.O()) {
            ProgressBar progressBar = new ProgressBar(activity, null, 16842872);
            this.A = progressBar;
            progressBar.setMax(10000);
            progressBar.setPadding(0, 0, 0, 0);
            if (h.d()) {
                progressBar.setProgressTintList(ColorStateList.valueOf(eVar.P()));
            }
            jVar.a("PROGRESS_BAR", ((Long) nVar.a(com.applovin.impl.sdk.c.b.cG)).longValue(), new j.a() { // from class: com.applovin.impl.adview.activity.b.e.1
                @Override // com.applovin.impl.adview.j.a
                public void a() {
                    if (e.this.F) {
                        e.this.A.setVisibility(8);
                        return;
                    }
                    e.this.A.setProgress((int) ((((float) e.this.v.I()) / ((float) e.this.D)) * 10000.0f));
                }

                @Override // com.applovin.impl.adview.j.a
                public boolean b() {
                    return !e.this.F;
                }
            });
        } else {
            this.A = null;
        }
        aw a2 = new aw.a(activity).a();
        this.v = a2;
        b bVar = new b();
        a2.a((an.b) bVar);
        a2.c(0);
        com.applovin.exoplayer2.ui.g gVar = new com.applovin.exoplayer2.ui.g(activity);
        this.u = gVar;
        gVar.b();
        gVar.setControllerVisibilityListener(bVar);
        gVar.setPlayer(a2);
        gVar.setOnTouchListener(new AppLovinTouchToClickListener(nVar, com.applovin.impl.sdk.c.b.aV, activity, bVar));
        B();
    }

    private void G() {
        t tVar;
        s D = this.f4299a.D();
        if (D == null || !D.e() || this.F || (tVar = this.z) == null) {
            return;
        }
        final boolean z = tVar.getVisibility() == 4;
        final long f2 = D.f();
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.5
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    r.a(e.this.z, f2, (Runnable) null);
                } else {
                    r.b(e.this.z, f2, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.H.a(this.f4306h);
        this.j = SystemClock.elapsedRealtime();
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

    public void A() {
        D();
        this.H.a(this.f4305g, this.f4304f);
        a("javascript:al_onPoststitialShow(" + this.l + "," + this.m + ");", this.f4299a.S());
        if (this.f4305g != null) {
            if (this.f4299a.t() >= 0) {
                a(this.f4305g, this.f4299a.t(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.9
                    @Override // java.lang.Runnable
                    public void run() {
                        e.this.j = SystemClock.elapsedRealtime();
                    }
                });
            } else {
                this.f4305g.setVisibility(0);
            }
        }
        v();
        this.F = true;
    }

    protected void B() {
        a(!this.K);
        com.applovin.exoplayer2.h.u a2 = new u.a(new p(this.f4303e, ai.a((Context) this.f4303e, "com.applovin.sdk"))).a(ab.a(this.f4299a.h()));
        this.v.a(!this.C ? 1 : 0);
        this.v.a((com.applovin.exoplayer2.h.p) a2);
        this.v.w();
        this.v.a(false);
    }

    protected void C() {
        if (this.N.compareAndSet(false, true)) {
            a(this.x, this.f4299a.r(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.4
                @Override // java.lang.Runnable
                public void run() {
                    e.this.O = -1L;
                    e.this.P = SystemClock.elapsedRealtime();
                }
            });
        }
    }

    protected void D() {
        this.E = F();
        this.v.a(false);
    }

    protected void E() {
        if (this.F) {
            v vVar = this.f4301c;
            if (v.a()) {
                this.f4301c.d("AppLovinFullscreenActivity", "Skip video resume - postitial shown");
            }
        } else if (this.f4300b.ag().isApplicationPaused()) {
            v vVar2 = this.f4301c;
            if (v.a()) {
                this.f4301c.d("AppLovinFullscreenActivity", "Skip video resume - app paused");
            }
        } else {
            long j = this.L;
            if (j < 0) {
                v vVar3 = this.f4301c;
                if (v.a()) {
                    this.f4301c.b("AppLovinFullscreenActivity", "Invalid last video position, isVideoPlaying=" + this.v.a());
                    return;
                }
                return;
            }
            v vVar4 = this.f4301c;
            if (v.a()) {
                this.f4301c.b("AppLovinFullscreenActivity", "Resuming video at position " + j + "ms for MediaPlayer: " + this.v);
            }
            this.v.a(true);
            this.B.a();
            this.L = -1L;
            if (this.v.a()) {
                return;
            }
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int F() {
        aw awVar = this.v;
        if (awVar == null) {
            return 0;
        }
        long I = awVar.I();
        if (this.G) {
            return 100;
        }
        return I > 0 ? (int) ((((float) I) / ((float) this.D)) * 100.0f) : this.E;
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void a() {
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Continue video from prompt - will resume in onWindowFocusChanged(true) when alert dismisses");
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void a(long j) {
        a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.6
            @Override // java.lang.Runnable
            public void run() {
                e.this.E();
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(PointF pointF) {
        if (!this.f4299a.E()) {
            G();
            return;
        }
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Clicking through video");
        }
        Uri k = this.f4299a.k();
        if (k != null) {
            this.f4300b.v().trackAndLaunchVideoClick(this.f4299a, k, pointF, this, this.f4304f != null ? this.f4304f.getContext() : this.f4300b.P());
            k.a(this.p, this.f4299a);
            this.f4302d.b();
            this.m++;
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void a(ViewGroup viewGroup) {
        this.H.a(this.y, this.x, this.z, this.w, this.A, this.u, this.f4304f, null, viewGroup);
        this.v.a(true);
        if (this.f4299a.am()) {
            this.s.a(this.f4299a, new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.2
                @Override // java.lang.Runnable
                public void run() {
                    e.this.a(250L);
                }
            });
        }
        if (this.K) {
            x();
        }
        this.f4304f.renderAd(this.f4299a);
        this.f4302d.b(this.K ? 1L : 0L);
        if (this.x != null) {
            this.f4300b.V().a(new z(this.f4300b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.3
                @Override // java.lang.Runnable
                public void run() {
                    e.this.C();
                }
            }), o.a.MAIN, this.f4299a.s(), true);
        }
        super.b(this.C);
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void b() {
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Skipping video from prompt");
        }
        c();
    }

    public void c() {
        this.O = SystemClock.elapsedRealtime() - this.P;
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Skipping video with skip time: " + this.O + "ms");
        }
        this.f4302d.f();
        this.l++;
        if (this.f4299a.y()) {
            h();
        } else {
            A();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(long j) {
        this.D = j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(String str) {
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.e("AppLovinFullscreenActivity", "Encountered media error: " + str + " for ad: " + this.f4299a);
        }
        if (this.M.compareAndSet(false, true)) {
            if (this.q instanceof com.applovin.impl.sdk.ad.g) {
                ((com.applovin.impl.sdk.ad.g) this.q).onAdDisplayFailed(str);
            }
            h();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void c(boolean z) {
        super.c(z);
        if (z) {
            a(0L);
        } else if (this.F) {
        } else {
            e();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void d() {
        a((ViewGroup) null);
    }

    protected void d(boolean z) {
        if (h.d()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.f4303e.getDrawable(z ? R.drawable.applovin_ic_unmute_to_mute : R.drawable.applovin_ic_mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.y.setScaleType(ImageView.ScaleType.FIT_XY);
                this.y.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        Uri aC = z ? this.f4299a.aC() : this.f4299a.aD();
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        this.y.setImageURI(aC);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void e() {
        v vVar;
        String str;
        v vVar2 = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Pausing video");
        }
        if (this.v.a()) {
            this.L = this.v.I();
            this.v.a(false);
            this.B.c();
            v vVar3 = this.f4301c;
            if (!v.a()) {
                return;
            }
            vVar = this.f4301c;
            str = "Paused video at position " + this.L + "ms";
        } else {
            v vVar4 = this.f4301c;
            if (!v.a()) {
                return;
            }
            vVar = this.f4301c;
            str = "Nothing to pause";
        }
        vVar.b("AppLovinFullscreenActivity", str);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "FullscreenVideoAdExoPlayerPresenter";
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void h() {
        this.B.b();
        this.J.removeCallbacksAndMessages(null);
        m();
        super.h();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void k() {
        this.v.E();
        if (this.K) {
            AppLovinCommunicator.getInstance(this.f4303e).unsubscribe(this, "video_caching_failed");
        }
        super.k();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void m() {
        super.a(F(), this.K, r(), this.O);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            long j = messageData.getLong("ad_id");
            if (((Boolean) this.f4300b.a(com.applovin.impl.sdk.c.b.eX)).booleanValue() && j == this.f4299a.getAdIdNumber() && this.K) {
                int i = messageData.getInt("load_response_code");
                String string = messageData.getString("load_exception_message");
                if ((string == null && i >= 200 && i < 300) || this.G || this.v.a()) {
                    return;
                }
                c("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.adview.activity.b.a
    public boolean r() {
        return this.f4299a != null && F() >= this.f4299a.Q();
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
                long j = this.D;
                long j2 = j > 0 ? j : 0L;
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
                    j2 += millis;
                }
                ae = (long) (j2 * (this.f4299a.ae() / 100.0d));
            }
            b(ae);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void w() {
        super.w();
        this.H.a(this.z);
        this.H.a((View) this.x);
        if (!t() || this.F) {
            H();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.7
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.w != null) {
                    e.this.w.a();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.e.8
            @Override // java.lang.Runnable
            public void run() {
                if (e.this.w != null) {
                    e.this.w.b();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z() {
        boolean z = this.C;
        this.C = !z ? 1 : 0;
        this.v.a(z ? 1.0f : 0.0f);
        d(this.C);
        a(this.C, 0L);
    }
}
