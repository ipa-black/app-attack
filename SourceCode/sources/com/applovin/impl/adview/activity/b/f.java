package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.adview.AppLovinVideoView;
import com.applovin.impl.adview.j;
import com.applovin.impl.adview.m;
import com.applovin.impl.adview.s;
import com.applovin.impl.adview.t;
import com.applovin.impl.adview.u;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
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
import com.google.android.exoplayer2.ExoPlayer;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class f extends com.applovin.impl.adview.activity.b.a implements AppLovinCommunicatorSubscriber {
    protected ImageView A;
    protected final j B;
    protected boolean C;
    protected long D;
    protected boolean E;
    private final com.applovin.impl.adview.activity.a.c F;
    private MediaPlayer G;
    private final b H;
    private final a I;
    private final Handler J;
    private final boolean K;
    private int L;
    private int M;
    private boolean N;
    private final AtomicBoolean O;
    private final AtomicBoolean P;
    private long Q;
    private long R;
    protected final AppLovinVideoView u;
    protected final com.applovin.impl.adview.a v;
    protected final m w;
    protected final ImageView x;
    protected final t y;
    protected final ProgressBar z;

    /* loaded from: classes.dex */
    private class a implements u.a {
        private a() {
        }

        @Override // com.applovin.impl.adview.u.a
        public void a(t tVar) {
            v vVar = f.this.f4301c;
            if (v.a()) {
                f.this.f4301c.b("AppLovinFullscreenActivity", "Clicking through from video button...");
            }
            f.this.a(tVar.getAndClearLastClickLocation());
        }

        @Override // com.applovin.impl.adview.u.a
        public void b(t tVar) {
            v vVar = f.this.f4301c;
            if (v.a()) {
                f.this.f4301c.b("AppLovinFullscreenActivity", "Closing ad from video button...");
            }
            f.this.h();
        }

        @Override // com.applovin.impl.adview.u.a
        public void c(t tVar) {
            v vVar = f.this.f4301c;
            if (v.a()) {
                f.this.f4301c.b("AppLovinFullscreenActivity", "Skipping video from video button...");
            }
            f.this.c();
        }
    }

    /* loaded from: classes.dex */
    private class b implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, AppLovinTouchToClickListener.OnClickListener {
        private b() {
        }

        @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
        public void onClick(View view, PointF pointF) {
            f.this.a(pointF);
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            v vVar = f.this.f4301c;
            if (v.a()) {
                f.this.f4301c.b("AppLovinFullscreenActivity", "Video completed");
            }
            f.this.N = true;
            if (!f.this.k) {
                f.this.A();
            } else if (f.this.t()) {
                f.this.F();
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            f.this.c("Video view error (" + i + "," + i2 + ")");
            f.this.u.start();
            return true;
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            v vVar = f.this.f4301c;
            if (v.a()) {
                f.this.f4301c.b("AppLovinFullscreenActivity", "MediaPlayer Info: (" + i + ", " + i2 + ")");
            }
            if (i == 701) {
                f.this.x();
                f.this.f4302d.g();
                return false;
            } else if (i != 3) {
                if (i == 702) {
                    f.this.y();
                    return false;
                }
                return false;
            } else {
                f.this.B.a();
                if (f.this.w != null) {
                    f.this.C();
                }
                f.this.y();
                if (f.this.s.c()) {
                    f.this.e();
                    return false;
                }
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            f.this.G = mediaPlayer;
            mediaPlayer.setOnInfoListener(f.this.H);
            mediaPlayer.setOnErrorListener(f.this.H);
            float f2 = !f.this.C ? 1 : 0;
            mediaPlayer.setVolume(f2, f2);
            f.this.c(mediaPlayer.getDuration());
            f.this.u();
            v vVar = f.this.f4301c;
            if (v.a()) {
                f.this.f4301c.b("AppLovinFullscreenActivity", "MediaPlayer prepared: " + f.this.G);
            }
        }
    }

    /* loaded from: classes.dex */
    private class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view == f.this.w) {
                if (!f.this.s()) {
                    f.this.c();
                    return;
                }
                f.this.e();
                f.this.p();
                f.this.s.b();
            } else if (view == f.this.x) {
                f.this.z();
            } else {
                v vVar = f.this.f4301c;
                if (v.a()) {
                    f.this.f4301c.e("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
                }
            }
        }
    }

    public f(com.applovin.impl.sdk.ad.e eVar, Activity activity, n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.F = new com.applovin.impl.adview.activity.a.c(this.f4299a, this.f4303e, this.f4300b);
        this.A = null;
        b bVar = new b();
        this.H = bVar;
        a aVar = new a();
        this.I = aVar;
        Handler handler = new Handler(Looper.getMainLooper());
        this.J = handler;
        j jVar = new j(handler, this.f4300b);
        this.B = jVar;
        boolean f2 = this.f4299a.f();
        this.K = f2;
        this.C = Utils.isVideoMutedInitially(this.f4300b);
        this.M = -1;
        this.O = new AtomicBoolean();
        this.P = new AtomicBoolean();
        this.Q = -2L;
        this.R = 0L;
        if (!eVar.hasVideoUrl()) {
            throw new IllegalStateException("Attempting to use fullscreen video ad presenter for non-video ad");
        }
        AppLovinVideoView appLovinVideoView = new AppLovinVideoView(activity);
        this.u = appLovinVideoView;
        appLovinVideoView.setOnPreparedListener(bVar);
        appLovinVideoView.setOnCompletionListener(bVar);
        appLovinVideoView.setOnErrorListener(bVar);
        appLovinVideoView.setOnTouchListener(new AppLovinTouchToClickListener(nVar, com.applovin.impl.sdk.c.b.aV, activity, bVar));
        c cVar = new c();
        if (eVar.r() >= 0) {
            m mVar = new m(eVar.x(), activity);
            this.w = mVar;
            mVar.setVisibility(8);
            mVar.setOnClickListener(cVar);
        } else {
            this.w = null;
        }
        if (a(this.C, nVar)) {
            ImageView imageView = new ImageView(activity);
            this.x = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setClickable(true);
            imageView.setOnClickListener(cVar);
            e(this.C);
        } else {
            this.x = null;
        }
        String C = eVar.C();
        if (StringUtils.isValidString(C)) {
            u uVar = new u(nVar);
            uVar.a(new WeakReference<>(aVar));
            t tVar = new t(uVar, activity);
            this.y = tVar;
            tVar.a(C);
        } else {
            this.y = null;
        }
        if (f2) {
            com.applovin.impl.adview.a aVar2 = new com.applovin.impl.adview.a(activity, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cJ)).intValue(), 16842874);
            this.v = aVar2;
            aVar2.setColor(Color.parseColor("#75FFFFFF"));
            aVar2.setBackgroundColor(Color.parseColor("#00000000"));
            aVar2.setVisibility(8);
            AppLovinCommunicator.getInstance(activity).subscribe(this, "video_caching_failed");
        } else {
            this.v = null;
        }
        if (!eVar.O()) {
            this.z = null;
            return;
        }
        ProgressBar progressBar = new ProgressBar(activity, null, 16842872);
        this.z = progressBar;
        progressBar.setMax(10000);
        progressBar.setPadding(0, 0, 0, 0);
        if (h.d()) {
            progressBar.setProgressTintList(ColorStateList.valueOf(eVar.P()));
        }
        jVar.a("PROGRESS_BAR", ((Long) nVar.a(com.applovin.impl.sdk.c.b.cG)).longValue(), new j.a() { // from class: com.applovin.impl.adview.activity.b.f.1
            @Override // com.applovin.impl.adview.j.a
            public void a() {
                if (f.this.E) {
                    f.this.z.setVisibility(8);
                    return;
                }
                f.this.z.setProgress((int) ((f.this.u.getCurrentPosition() / ((float) f.this.D)) * 10000.0f));
            }

            @Override // com.applovin.impl.adview.j.a
            public boolean b() {
                return !f.this.E;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        if (this.P.compareAndSet(false, true)) {
            a(this.w, this.f4299a.r(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.5
                @Override // java.lang.Runnable
                public void run() {
                    f.this.Q = -1L;
                    f.this.R = SystemClock.elapsedRealtime();
                }
            });
        }
    }

    private void D() {
        t tVar;
        s D = this.f4299a.D();
        if (D == null || !D.e() || this.E || (tVar = this.y) == null) {
            return;
        }
        final boolean z = tVar.getVisibility() == 4;
        final long f2 = D.f();
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.6
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    r.a(f.this.y, f2, (Runnable) null);
                } else {
                    r.b(f.this.y, f2, null);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        if (this.E) {
            v vVar = this.f4301c;
            if (v.a()) {
                this.f4301c.d("AppLovinFullscreenActivity", "Skip video resume - postitial shown");
            }
        } else if (this.f4300b.ag().isApplicationPaused()) {
            v vVar2 = this.f4301c;
            if (v.a()) {
                this.f4301c.d("AppLovinFullscreenActivity", "Skip video resume - app paused");
            }
        } else if (this.M < 0) {
            v vVar3 = this.f4301c;
            if (v.a()) {
                this.f4301c.b("AppLovinFullscreenActivity", "Invalid last video position");
            }
        } else {
            v vVar4 = this.f4301c;
            if (v.a()) {
                this.f4301c.b("AppLovinFullscreenActivity", "Resuming video at position " + this.M + "ms for MediaPlayer: " + this.G);
            }
            this.u.seekTo(this.M);
            this.u.start();
            this.B.a();
            this.M = -1;
            a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.8
                @Override // java.lang.Runnable
                public void run() {
                    if (f.this.v != null) {
                        f.this.v.a();
                        f.this.a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.8.1
                            @Override // java.lang.Runnable
                            public void run() {
                                f.this.v.b();
                            }
                        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
                    }
                }
            }, 250L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        this.F.a(this.f4306h);
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

    private void d(boolean z) {
        this.L = B();
        if (z) {
            this.u.pause();
        } else {
            this.u.stopPlayback();
        }
    }

    private void e(boolean z) {
        if (h.d()) {
            AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) this.f4303e.getDrawable(z ? R.drawable.applovin_ic_unmute_to_mute : R.drawable.applovin_ic_mute_to_unmute);
            if (animatedVectorDrawable != null) {
                this.x.setScaleType(ImageView.ScaleType.FIT_XY);
                this.x.setImageDrawable(animatedVectorDrawable);
                animatedVectorDrawable.start();
                return;
            }
        }
        Uri aC = z ? this.f4299a.aC() : this.f4299a.aD();
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        this.x.setImageURI(aC);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
    }

    public void A() {
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Showing postitial...");
        }
        d(this.f4299a.aJ());
        this.F.a(this.f4305g, this.f4304f);
        a("javascript:al_onPoststitialShow(" + this.l + "," + this.m + ");", this.f4299a.S());
        if (this.f4305g != null) {
            if (this.f4299a.t() >= 0) {
                a(this.f4305g, this.f4299a.t(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.2
                    @Override // java.lang.Runnable
                    public void run() {
                        f.this.j = SystemClock.elapsedRealtime();
                    }
                });
            } else {
                this.f4305g.setVisibility(0);
            }
        }
        v();
        this.E = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int B() {
        long currentPosition = this.u.getCurrentPosition();
        if (this.N) {
            return 100;
        }
        return currentPosition > 0 ? (int) ((((float) currentPosition) / ((float) this.D)) * 100.0f) : this.L;
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
        a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.7
            @Override // java.lang.Runnable
            public void run() {
                f.this.E();
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(PointF pointF) {
        if (!this.f4299a.E()) {
            D();
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
        String str;
        this.F.a(this.x, this.w, this.y, this.v, this.z, this.u, this.f4304f, this.A, viewGroup);
        if (h.g() && (str = this.f4300b.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.AUDIO_FOCUS_REQUEST)) != null) {
            this.u.setAudioFocusRequest(Integer.parseInt(str));
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        a(!this.K);
        this.u.setVideoURI(this.f4299a.h());
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        if (this.f4299a.am()) {
            this.s.a(this.f4299a, new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.3
                @Override // java.lang.Runnable
                public void run() {
                    f.this.a(250L);
                }
            });
        }
        this.u.start();
        if (this.K) {
            x();
        }
        this.f4304f.renderAd(this.f4299a);
        this.f4302d.b(this.K ? 1L : 0L);
        if (this.w != null) {
            this.f4300b.V().a(new z(this.f4300b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.4
                @Override // java.lang.Runnable
                public void run() {
                    f.this.C();
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
        this.Q = SystemClock.elapsedRealtime() - this.R;
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Skipping video with skip time: " + this.Q + "ms");
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
        if (this.O.compareAndSet(false, true)) {
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
        } else if (this.E) {
        } else {
            e();
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void d() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void e() {
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Pausing video");
        }
        this.M = this.u.getCurrentPosition();
        this.u.pause();
        this.B.c();
        v vVar2 = this.f4301c;
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Paused video at position " + this.M + "ms");
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "FullscreenVideoAdPresenter";
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
        v vVar = this.f4301c;
        if (v.a()) {
            this.f4301c.c("AppLovinFullscreenActivity", "Destroying video components");
        }
        try {
            if (this.K) {
                AppLovinCommunicator.getInstance(this.f4303e).unsubscribe(this, "video_caching_failed");
            }
            AppLovinVideoView appLovinVideoView = this.u;
            if (appLovinVideoView != null) {
                appLovinVideoView.pause();
                this.u.stopPlayback();
            }
            MediaPlayer mediaPlayer = this.G;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
        } catch (Throwable th) {
            Log.e("AppLovinFullscreenActivity", "Unable to destroy presenter", th);
        }
        super.k();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void m() {
        super.a(B(), this.K, r(), this.Q);
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("video_caching_failed".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle messageData = appLovinCommunicatorMessage.getMessageData();
            long j = messageData.getLong("ad_id");
            if (((Boolean) this.f4300b.a(com.applovin.impl.sdk.c.b.eX)).booleanValue() && j == this.f4299a.getAdIdNumber() && this.K) {
                int i = messageData.getInt("load_response_code");
                String string = messageData.getString("load_exception_message");
                if ((string == null && i >= 200 && i < 300) || this.N || this.u.isPlaying()) {
                    return;
                }
                c("Video cache error during stream. ResponseCode=" + i + ", exception=" + string);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.applovin.impl.adview.activity.b.a
    public boolean r() {
        return B() >= this.f4299a.Q();
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
        this.F.a(this.y);
        this.F.a((View) this.w);
        if (!t() || this.E) {
            F();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.9
            @Override // java.lang.Runnable
            public void run() {
                if (f.this.v != null) {
                    f.this.v.a();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void y() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.f.10
            @Override // java.lang.Runnable
            public void run() {
                if (f.this.v != null) {
                    f.this.v.b();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z() {
        MediaPlayer mediaPlayer = this.G;
        if (mediaPlayer == null) {
            return;
        }
        try {
            float f2 = this.C ? 1.0f : 0.0f;
            mediaPlayer.setVolume(f2, f2);
            boolean z = !this.C;
            this.C = z;
            e(z);
            a(this.C, 0L);
        } catch (Throwable unused) {
        }
    }
}
