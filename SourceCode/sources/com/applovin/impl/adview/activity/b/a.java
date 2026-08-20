package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.i;
import com.applovin.impl.adview.m;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.b.b;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.h;
import com.applovin.impl.sdk.i;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppKilledService;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.utils.p;
import com.applovin.impl.sdk.utils.r;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public abstract class a implements AppLovinBroadcastManager.Receiver, b.a {
    private long A;
    private boolean B;
    private final i E;

    /* renamed from: a  reason: collision with root package name */
    protected final com.applovin.impl.sdk.ad.e f4299a;

    /* renamed from: b  reason: collision with root package name */
    protected final n f4300b;

    /* renamed from: c  reason: collision with root package name */
    protected final v f4301c;

    /* renamed from: d  reason: collision with root package name */
    protected final com.applovin.impl.sdk.d.d f4302d;

    /* renamed from: e  reason: collision with root package name */
    protected Activity f4303e;

    /* renamed from: f  reason: collision with root package name */
    protected AppLovinAdView f4304f;

    /* renamed from: g  reason: collision with root package name */
    protected final m f4305g;

    /* renamed from: h  reason: collision with root package name */
    protected final m f4306h;
    protected boolean k;
    protected boolean o;
    protected AppLovinAdClickListener p;
    protected AppLovinAdDisplayListener q;
    protected AppLovinAdVideoPlaybackListener r;
    protected final com.applovin.impl.sdk.b.b s;
    protected p t;
    private final com.applovin.impl.sdk.utils.a v;
    private final AppLovinBroadcastManager.Receiver w;
    private final h.a x;
    private final Handler u = new Handler(Looper.getMainLooper());
    protected final long i = SystemClock.elapsedRealtime();
    private final AtomicBoolean y = new AtomicBoolean();
    private final AtomicBoolean z = new AtomicBoolean();
    protected long j = -1;
    private int C = 0;
    private final ArrayList<Long> D = new ArrayList<>();
    protected int l = 0;
    protected int m = 0;
    protected int n = h.f5791a;
    private boolean F = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.applovin.impl.adview.activity.b.a$9  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass9 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m f4320a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f4321b;

        AnonymousClass9(m mVar, Runnable runnable) {
            this.f4320a = mVar;
            this.f4321b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.9.1
                @Override // java.lang.Runnable
                public void run() {
                    r.a(AnonymousClass9.this.f4320a, 400L, new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.9.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass9.this.f4320a.bringToFront();
                            AnonymousClass9.this.f4321b.run();
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.applovin.impl.adview.activity.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0060a {
        void a(a aVar);

        void a(String str, Throwable th);
    }

    /* loaded from: classes.dex */
    private class b implements View.OnClickListener, AppLovinAdClickListener {
        private b() {
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            v vVar = a.this.f4301c;
            if (v.a()) {
                a.this.f4301c.b("AppLovinFullscreenActivity", "Clicking through graphic");
            }
            k.a(a.this.p, appLovinAd);
            a.this.f4302d.b();
            a.this.m++;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view != a.this.f4305g || !((Boolean) a.this.f4300b.a(com.applovin.impl.sdk.c.b.cv)).booleanValue()) {
                v vVar = a.this.f4301c;
                if (v.a()) {
                    a.this.f4301c.e("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
                    return;
                }
                return;
            }
            a.d(a.this);
            if (a.this.f4299a.V()) {
                a.this.b("javascript:al_onCloseButtonTapped(" + a.this.C + "," + a.this.l + "," + a.this.m + ");");
            }
            List<Integer> u = a.this.f4299a.u();
            v vVar2 = a.this.f4301c;
            if (v.a()) {
                a.this.f4301c.b("AppLovinFullscreenActivity", "Handling close button tap " + a.this.C + " with multi close delay: " + u);
            }
            if (u == null || u.size() <= a.this.C) {
                a.this.h();
                return;
            }
            a.this.D.add(Long.valueOf(SystemClock.elapsedRealtime() - a.this.j));
            List<i.a> w = a.this.f4299a.w();
            if (w != null && w.size() > a.this.C) {
                a.this.f4305g.a(w.get(a.this.C));
            }
            v vVar3 = a.this.f4301c;
            if (v.a()) {
                a.this.f4301c.b("AppLovinFullscreenActivity", "Scheduling next close button with delay: " + u.get(a.this.C));
            }
            a.this.f4305g.setVisibility(8);
            a aVar = a.this;
            aVar.a(aVar.f4305g, u.get(a.this.C).intValue(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.b.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.j = SystemClock.elapsedRealtime();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(final com.applovin.impl.sdk.ad.e eVar, Activity activity, final n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f4299a = eVar;
        this.f4300b = nVar;
        this.f4301c = nVar.D();
        this.f4303e = activity;
        this.p = appLovinAdClickListener;
        this.q = appLovinAdDisplayListener;
        this.r = appLovinAdVideoPlaybackListener;
        com.applovin.impl.sdk.b.b bVar = new com.applovin.impl.sdk.b.b(activity, nVar);
        this.s = bVar;
        bVar.a(this);
        com.applovin.impl.sdk.d.d dVar = new com.applovin.impl.sdk.d.d(eVar, nVar);
        this.f4302d = dVar;
        this.E = new com.applovin.impl.sdk.i(nVar);
        b bVar2 = new b();
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.cN)).booleanValue()) {
            nVar.am().registerReceiver(this, new IntentFilter("com.applovin.render_process_gone"));
        }
        com.applovin.impl.adview.n nVar2 = new com.applovin.impl.adview.n(nVar.ab(), AppLovinAdSize.INTERSTITIAL, activity);
        this.f4304f = nVar2;
        nVar2.setAdClickListener(bVar2);
        this.f4304f.setAdDisplayListener(new AppLovinAdDisplayListener() { // from class: com.applovin.impl.adview.activity.b.a.1
            @Override // com.applovin.sdk.AppLovinAdDisplayListener
            public void adDisplayed(AppLovinAd appLovinAd) {
                v vVar = a.this.f4301c;
                if (v.a()) {
                    a.this.f4301c.b("AppLovinFullscreenActivity", "Web content rendered");
                }
            }

            @Override // com.applovin.sdk.AppLovinAdDisplayListener
            public void adHidden(AppLovinAd appLovinAd) {
                v vVar = a.this.f4301c;
                if (v.a()) {
                    a.this.f4301c.b("AppLovinFullscreenActivity", "Closing from WebView");
                }
                a.this.h();
            }
        });
        this.f4304f.getController().a(dVar);
        nVar.v().trackImpression(eVar);
        List<Integer> u = eVar.u();
        if (eVar.t() >= 0 || u != null) {
            m mVar = new m(eVar.v(), activity);
            this.f4305g = mVar;
            mVar.setVisibility(8);
            mVar.setOnClickListener(bVar2);
        } else {
            this.f4305g = null;
        }
        m mVar2 = new m(i.a.WHITE_ON_TRANSPARENT, activity);
        this.f4306h = mVar2;
        mVar2.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.adview.activity.b.a.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.h();
            }
        });
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.cx)).booleanValue()) {
            this.w = new AppLovinBroadcastManager.Receiver() { // from class: com.applovin.impl.adview.activity.b.a.4
                @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
                public void onReceive(Context context, Intent intent, Map<String, Object> map) {
                    nVar.v().trackAppKilled(eVar);
                    nVar.am().unregisterReceiver(this);
                }
            };
        } else {
            this.w = null;
        }
        if (eVar.al()) {
            this.x = new h.a() { // from class: com.applovin.impl.adview.activity.b.a.5
                @Override // com.applovin.impl.sdk.h.a
                public void a(int i) {
                    String str;
                    if (a.this.n != h.f5791a) {
                        a.this.o = true;
                    }
                    com.applovin.impl.adview.d s = a.this.f4304f.getController().s();
                    if (!h.a(i) || h.a(a.this.n)) {
                        str = i == 2 ? "javascript:al_muteSwitchOff();" : "javascript:al_muteSwitchOff();";
                        a.this.n = i;
                    }
                    str = "javascript:al_muteSwitchOn();";
                    s.a(str);
                    a.this.n = i;
                }
            };
        } else {
            this.x = null;
        }
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.eN)).booleanValue()) {
            this.v = new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.adview.activity.b.a.6
                @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity2, Bundle bundle) {
                    if (a.this.z.get()) {
                        return;
                    }
                    if (activity2.getClass().getName().equals(Utils.retrieveLauncherActivityFullyQualifiedName(activity2.getApplicationContext()))) {
                        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.6.1
                            @Override // java.lang.Runnable
                            public void run() {
                                v.i("AppLovinFullscreenActivity", "Dismissing on-screen ad due to app relaunched via launcher.");
                                try {
                                    a.this.h();
                                } catch (Throwable th) {
                                    v.c("AppLovinFullscreenActivity", "Failed to dismiss ad.", th);
                                    try {
                                        a.this.n();
                                    } catch (Throwable unused) {
                                    }
                                }
                            }
                        });
                    }
                }
            };
        } else {
            this.v = null;
        }
    }

    public static void a(com.applovin.impl.sdk.ad.e eVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, n nVar, Activity activity, InterfaceC0060a interfaceC0060a) {
        a bVar;
        boolean aH = eVar.aH();
        if (eVar instanceof com.applovin.impl.b.a) {
            if (aH) {
                try {
                    bVar = new c(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th) {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().a("AppLovinFullscreenActivity", "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter.", th);
                    }
                    try {
                        bVar = new d(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                    } catch (Throwable th2) {
                        interfaceC0060a.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + nVar + " and throwable: " + th2.getMessage(), th2);
                        return;
                    }
                }
            } else {
                try {
                    bVar = new d(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th3) {
                    interfaceC0060a.a("Failed to create FullscreenVastVideoAdPresenter with sdk: " + nVar + " and throwable: " + th3.getMessage(), th3);
                    return;
                }
            }
        } else if (!eVar.hasVideoUrl()) {
            try {
                bVar = new com.applovin.impl.adview.activity.b.b(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th4) {
                interfaceC0060a.a("Failed to create FullscreenGraphicAdPresenter with sdk: " + nVar + " and throwable: " + th4.getMessage(), th4);
                return;
            }
        } else if (eVar.aK()) {
            try {
                bVar = new g(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th5) {
                interfaceC0060a.a("Failed to create FullscreenWebVideoAdPresenter with sdk: " + nVar + " and throwable: " + th5.getMessage(), th5);
                return;
            }
        } else if (aH) {
            try {
                bVar = new e(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th6) {
                nVar.D();
                if (v.a()) {
                    nVar.D().a("AppLovinFullscreenActivity", "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter.", th6);
                }
                try {
                    bVar = new f(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th7) {
                    interfaceC0060a.a("Failed to create FullscreenVideoAdExoPlayerPresenter with sdk: " + nVar + " and throwable: " + th7.getMessage(), th7);
                    return;
                }
            }
        } else {
            try {
                bVar = new f(eVar, activity, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th8) {
                interfaceC0060a.a("Failed to create FullscreenVideoAdPresenter with sdk: " + nVar + " and throwable: " + th8.getMessage(), th8);
                return;
            }
        }
        bVar.c();
        interfaceC0060a.a(bVar);
    }

    private void c() {
        if (this.w != null) {
            this.f4300b.am().registerReceiver(this.w, new IntentFilter(AppKilledService.ACTION_APP_KILLED));
        }
        if (this.x != null) {
            this.f4300b.al().a(this.x);
        }
        if (this.v != null) {
            this.f4300b.ai().a(this.v);
        }
    }

    static /* synthetic */ int d(a aVar) {
        int i = aVar.C;
        aVar.C = i + 1;
        return i;
    }

    public void a(int i, KeyEvent keyEvent) {
        if (this.f4301c == null || !v.a()) {
            return;
        }
        this.f4301c.c("AppLovinFullscreenActivity", "onKeyDown(int, KeyEvent) -  " + i + ", " + keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, boolean z, boolean z2, long j) {
        if (this.y.compareAndSet(false, true)) {
            if (this.f4299a.hasVideoUrl() || t()) {
                k.a(this.r, this.f4299a, i, z2);
            }
            if (this.f4299a.hasVideoUrl()) {
                this.f4302d.c(i);
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.i;
            this.f4300b.v().trackVideoEnd(this.f4299a, TimeUnit.MILLISECONDS.toSeconds(elapsedRealtime), i, z);
            long elapsedRealtime2 = this.j != -1 ? SystemClock.elapsedRealtime() - this.j : -1L;
            this.f4300b.v().trackFullScreenAdClosed(this.f4299a, elapsedRealtime2, this.D, j, this.o, this.n);
            if (v.a()) {
                this.f4301c.b("AppLovinFullscreenActivity", "Video ad ended at percent: " + i + "%, elapsedTime: " + elapsedRealtime + "ms, skipTimeMillis: " + j + "ms, closeTimeMillis: " + elapsedRealtime2 + "ms");
            }
        }
    }

    public abstract void a(long j);

    public void a(Configuration configuration) {
        if (v.a()) {
            this.f4301c.c("AppLovinFullscreenActivity", "onConfigurationChanged(Configuration) -  " + configuration);
        }
    }

    public abstract void a(ViewGroup viewGroup);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(m mVar, long j, Runnable runnable) {
        if (j >= ((Long) this.f4300b.a(com.applovin.impl.sdk.c.b.cu)).longValue()) {
            return;
        }
        this.f4300b.V().a(new z(this.f4300b, new AnonymousClass9(mVar, runnable)), o.a.MAIN, TimeUnit.SECONDS.toMillis(j), true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Runnable runnable, long j) {
        AppLovinSdkUtils.runOnUiThreadDelayed(runnable, j, this.u);
    }

    protected void a(String str) {
        if (this.f4299a.W()) {
            a(str, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final String str, long j) {
        if (j >= 0) {
            a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.8
                @Override // java.lang.Runnable
                public void run() {
                    com.applovin.impl.adview.d s;
                    if (!StringUtils.isValidString(str) || a.this.f4304f == null || (s = a.this.f4304f.getController().s()) == null) {
                        return;
                    }
                    s.a(str);
                }
            }, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z) {
        List<Uri> checkCachedResourcesExist = Utils.checkCachedResourcesExist(z, this.f4299a, this.f4300b, this.f4303e);
        if (checkCachedResourcesExist.isEmpty()) {
            return;
        }
        if (!((Boolean) this.f4300b.a(com.applovin.impl.sdk.c.b.eR)).booleanValue()) {
            if (v.a()) {
                this.f4301c.e("AppLovinFullscreenActivity", "Streaming ad due to missing ad resources: " + checkCachedResourcesExist);
            }
            this.f4299a.a();
            return;
        }
        if (v.a()) {
            this.f4301c.e("AppLovinFullscreenActivity", "Dismissing ad due to missing resources: " + checkCachedResourcesExist);
        }
        com.applovin.impl.adview.o.a(this.f4299a, this.q, "Missing ad resources", null, null);
        h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(boolean z, long j) {
        if (this.f4299a.U()) {
            a(z ? "javascript:al_mute();" : "javascript:al_unmute();", j);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(long j) {
        if (v.a()) {
            this.f4301c.b("AppLovinFullscreenActivity", "Scheduling report reward in " + TimeUnit.MILLISECONDS.toSeconds(j) + " seconds...");
        }
        this.t = p.a(j, this.f4300b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.10
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f4299a.ag().getAndSet(true)) {
                    return;
                }
                a.this.f4300b.V().a(new com.applovin.impl.sdk.e.v(a.this.f4299a, a.this.f4300b), o.a.REWARD);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) {
        a(str, 0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(boolean z) {
        a(z, ((Long) this.f4300b.a(com.applovin.impl.sdk.c.b.cK)).longValue());
        k.a(this.q, this.f4299a);
        this.f4300b.ah().a(this.f4299a);
        if (this.f4299a.hasVideoUrl() || t()) {
            k.a(this.r, this.f4299a);
        }
        new com.applovin.impl.adview.activity.b(this.f4303e).a(this.f4299a);
        this.f4302d.a();
        this.f4299a.setHasShown(true);
    }

    public void c(boolean z) {
        if (v.a()) {
            this.f4301c.c("AppLovinFullscreenActivity", "onWindowFocusChanged(boolean) - " + z);
        }
        a("javascript:al_onWindowFocusChanged( " + z + " );");
    }

    public abstract void d();

    public abstract void e();

    public void f() {
        if (v.a()) {
            this.f4301c.c("AppLovinFullscreenActivity", "onResume()");
        }
        this.f4302d.d(SystemClock.elapsedRealtime() - this.A);
        a("javascript:al_onAppResumed();");
        q();
        if (this.s.c()) {
            this.s.a();
        }
    }

    public void g() {
        if (v.a()) {
            this.f4301c.c("AppLovinFullscreenActivity", "onPause()");
        }
        this.A = SystemClock.elapsedRealtime();
        a("javascript:al_onAppPaused();");
        if (this.s.c()) {
            this.s.a();
        }
        p();
    }

    public void h() {
        this.B = true;
        if (v.a()) {
            this.f4301c.c("AppLovinFullscreenActivity", "dismiss()");
        }
        com.applovin.impl.sdk.ad.e eVar = this.f4299a;
        if (eVar != null) {
            eVar.o().e();
        }
        this.u.removeCallbacksAndMessages(null);
        a("javascript:al_onPoststitialDismiss();", this.f4299a.T());
        n();
        this.f4302d.c();
        this.E.a();
        if (this.w != null) {
            p.a(TimeUnit.SECONDS.toMillis(2L), this.f4300b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.7
                @Override // java.lang.Runnable
                public void run() {
                    a.this.f4303e.stopService(new Intent(a.this.f4303e.getApplicationContext(), AppKilledService.class));
                    a.this.f4300b.am().unregisterReceiver(a.this.w);
                }
            });
        }
        if (this.x != null) {
            this.f4300b.al().b(this.x);
        }
        if (this.v != null) {
            this.f4300b.ai().b(this.v);
        }
        if (o()) {
            this.f4303e.finish();
            return;
        }
        this.f4300b.D();
        if (v.a()) {
            this.f4300b.D().b("AppLovinFullscreenActivity", "Fullscreen ad shown in container view dismissed, destroying the presenter.");
        }
        k();
    }

    public boolean i() {
        return this.B;
    }

    public void j() {
        if (v.a()) {
            this.f4301c.c("AppLovinFullscreenActivity", "onStop()");
        }
    }

    public void k() {
        AppLovinAdView appLovinAdView = this.f4304f;
        if (appLovinAdView != null) {
            ViewParent parent = appLovinAdView.getParent();
            this.f4304f.destroy();
            this.f4304f = null;
            if ((parent instanceof ViewGroup) && o()) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        m();
        n();
        this.p = null;
        this.q = null;
        this.r = null;
        this.f4303e = null;
        this.f4300b.am().unregisterReceiver(this);
    }

    public void l() {
        if (v.a()) {
            this.f4301c.c("AppLovinFullscreenActivity", "onBackPressed()");
        }
        if (this.F) {
            h();
        }
        if (this.f4299a.V()) {
            b("javascript:onBackPressed();");
        }
    }

    protected abstract void m();

    protected void n() {
        if (this.z.compareAndSet(false, true)) {
            k.b(this.q, this.f4299a);
            this.f4300b.ah().b(this.f4299a);
        }
    }

    protected boolean o() {
        return this.f4303e instanceof AppLovinFullscreenActivity;
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        if (!"com.applovin.render_process_gone".equals(intent.getAction()) || this.k) {
            return;
        }
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p() {
        p pVar = this.t;
        if (pVar != null) {
            pVar.b();
        }
    }

    protected void q() {
        p pVar = this.t;
        if (pVar != null) {
            pVar.c();
        }
    }

    protected abstract boolean r();

    protected abstract boolean s();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean t() {
        return AppLovinAdType.INCENTIVIZED == this.f4299a.getType() || AppLovinAdType.AUTO_INCENTIVIZED == this.f4299a.getType();
    }

    protected abstract void u();

    /* JADX INFO: Access modifiers changed from: protected */
    public void v() {
        com.applovin.impl.adview.d s;
        AppLovinAdView appLovinAdView = this.f4304f;
        if (appLovinAdView == null || (s = appLovinAdView.getController().s()) == null) {
            return;
        }
        this.E.a(s, new i.a() { // from class: com.applovin.impl.adview.activity.b.a.2
            @Override // com.applovin.impl.sdk.i.a
            public void a(View view) {
                a.this.E.a(CollectionUtils.map("clcode", a.this.f4299a.getClCode()));
                if (((Boolean) a.this.f4300b.a(com.applovin.impl.sdk.c.b.fm)).booleanValue()) {
                    a.this.h();
                    return;
                }
                a aVar = a.this;
                aVar.F = ((Boolean) aVar.f4300b.a(com.applovin.impl.sdk.c.b.fn)).booleanValue();
                if (!((Boolean) a.this.f4300b.a(com.applovin.impl.sdk.c.b.fo)).booleanValue() || a.this.f4305g == null) {
                    return;
                }
                a.this.f4305g.setVisibility(0);
            }
        });
    }

    public void w() {
        if (v.a()) {
            this.f4301c.c("AppLovinFullscreenActivity", "Handling render process crash");
        }
        this.k = true;
    }
}
