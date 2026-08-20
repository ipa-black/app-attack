package com.adcolony.sdk;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import com.adcolony.sdk.e0;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import io.bidmachine.utils.IabUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<String, Runnable> f236a;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, com.adcolony.sdk.c> f237b;

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<String, AdColonyInterstitial> f238c;

    /* renamed from: d  reason: collision with root package name */
    private ConcurrentHashMap<String, AdColonyAdViewListener> f239d;

    /* renamed from: e  reason: collision with root package name */
    private ConcurrentHashMap<String, AdColonyAdViewListener> f240e;

    /* renamed from: f  reason: collision with root package name */
    private Map<String, AdColonyAdView> f241f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f242g = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.e(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f245a;

            a(h0 h0Var) {
                this.f245a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                AdColonyInterstitial adColonyInterstitial = (AdColonyInterstitial) d.this.f238c.get(c0.h(this.f245a.a(), "id"));
                if (adColonyInterstitial == null || adColonyInterstitial.getListener() == null) {
                    return;
                }
                adColonyInterstitial.getListener().onAudioStopped(adColonyInterstitial);
            }
        }

        b() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            z0.b(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f248a;

            a(h0 h0Var) {
                this.f248a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                AdColonyInterstitial adColonyInterstitial = (AdColonyInterstitial) d.this.f238c.get(c0.h(this.f248a.a(), "id"));
                if (adColonyInterstitial == null || adColonyInterstitial.getListener() == null) {
                    return;
                }
                adColonyInterstitial.getListener().onAudioStarted(adColonyInterstitial);
            }
        }

        c() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            z0.b(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.adcolony.sdk.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0009d implements j0 {
        C0009d() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.i(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class e implements j0 {
        e() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.h(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements j0 {
        f() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.g(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements j0 {
        g(d dVar) {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            f1 b2 = c0.b();
            c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
            h0Var.a(b2).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class h implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f253a;

            a(h hVar, h0 h0Var) {
                this.f253a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                h0 h0Var = this.f253a;
                h0Var.a(h0Var.a()).c();
            }
        }

        h(d dVar) {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            z0.b(new a(this, h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class i implements j0 {
        i(d dVar) {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            o0.c().a(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class j implements Runnable {
        j(d dVar) {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.adcolony.sdk.r o = com.adcolony.sdk.a.b().o();
            if (o.a() != null) {
                o.a().dismiss();
                o.a((AlertDialog) null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f254a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h0 f255b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AdColonyAdViewListener f256c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f257d;

        k(Context context, h0 h0Var, AdColonyAdViewListener adColonyAdViewListener, String str) {
            this.f254a = context;
            this.f255b = h0Var;
            this.f256c = adColonyAdViewListener;
            this.f257d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdColonyAdView adColonyAdView;
            try {
                adColonyAdView = new AdColonyAdView(this.f254a, this.f255b, this.f256c);
            } catch (RuntimeException e2) {
                new e0.a().a(e2.toString()).a(e0.i);
                adColonyAdView = null;
            }
            synchronized (d.this.f242g) {
                if (d.this.f240e.remove(this.f257d) == null) {
                    return;
                }
                if (adColonyAdView != null) {
                    d.this.f241f.put(this.f257d, adColonyAdView);
                    adColonyAdView.setOmidManager(this.f256c.b());
                    adColonyAdView.e();
                    this.f256c.a((p0) null);
                    this.f256c.onRequestFilled(adColonyAdView);
                    return;
                }
                d.this.a(this.f256c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class l implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f260a;

            a(h0 h0Var) {
                this.f260a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.c(this.f260a);
            }
        }

        l() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            z0.b(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h0 f262a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AdColonyInterstitial f263b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AdColonyInterstitialListener f264c;

        m(d dVar, h0 h0Var, AdColonyInterstitial adColonyInterstitial, AdColonyInterstitialListener adColonyInterstitialListener) {
            this.f262a = h0Var;
            this.f263b = adColonyInterstitial;
            this.f264c = adColonyInterstitialListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            f1 a2 = this.f262a.a();
            if (this.f263b.e() == null) {
                this.f263b.a(c0.f(a2, "iab"));
            }
            this.f263b.a(c0.h(a2, "ad_id"));
            this.f263b.c(c0.h(a2, "creative_id"));
            this.f263b.setViewNetworkPassFilter(c0.h(a2, "view_network_pass_filter"));
            p0 e2 = this.f263b.e();
            if (e2 != null && e2.d() != 2) {
                try {
                    e2.a();
                } catch (IllegalArgumentException unused) {
                    new e0.a().a("IllegalArgumentException when creating omid session").a(e0.i);
                }
            }
            this.f264c.onRequestFilled(this.f263b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdColonyAdViewListener f265a;

        n(d dVar, AdColonyAdViewListener adColonyAdViewListener) {
            this.f265a = adColonyAdViewListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdColonyAdViewListener adColonyAdViewListener = this.f265a;
            adColonyAdViewListener.onRequestNotFilled(AdColony.a(adColonyAdViewListener.c()));
            if (com.adcolony.sdk.a.c()) {
                return;
            }
            new e0.a().a("RequestNotFilled called for AdView due to a missing context. ").a(e0.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f266a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f267b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f268c;

        o(String str, String str2, long j) {
            this.f266a = str;
            this.f267b = str2;
            this.f268c = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f236a.remove(this.f266a);
            AdColonyAdViewListener adColonyAdViewListener = (AdColonyAdViewListener) d.this.f239d.remove(this.f266a);
            if (adColonyAdViewListener != null) {
                adColonyAdViewListener.onRequestNotFilled(AdColony.a(this.f267b));
                f1 b2 = c0.b();
                c0.a(b2, "id", this.f266a);
                c0.a(b2, "zone_id", this.f267b);
                c0.b(b2, SessionDescription.ATTR_TYPE, 1);
                c0.b(b2, "request_fail_reason", 26);
                new h0("AdSession.on_request_failure", 1, b2).c();
                new e0.a().a("RequestNotFilled called due to a native timeout. ").a("Timeout set to: " + com.adcolony.sdk.a.b().d() + " ms. ").a("AdView request time allowed: " + this.f268c + " ms. ").a("AdView with adSessionId(" + this.f266a + ") - request failed.").a(e0.i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f270a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f271b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f272c;

        p(String str, String str2, long j) {
            this.f270a = str;
            this.f271b = str2;
            this.f272c = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.f236a.remove(this.f270a);
            AdColonyInterstitial adColonyInterstitial = (AdColonyInterstitial) d.this.f238c.remove(this.f270a);
            AdColonyInterstitialListener listener = adColonyInterstitial == null ? null : adColonyInterstitial.getListener();
            if (listener != null) {
                listener.onRequestNotFilled(AdColony.a(this.f271b));
                f1 b2 = c0.b();
                c0.a(b2, "id", this.f270a);
                c0.a(b2, "zone_id", this.f271b);
                c0.b(b2, SessionDescription.ATTR_TYPE, 0);
                c0.b(b2, "request_fail_reason", 26);
                new h0("AdSession.on_request_failure", 1, b2).c();
                new e0.a().a("RequestNotFilled called due to a native timeout. ").a("Timeout set to: " + com.adcolony.sdk.a.b().d() + " ms. ").a("Interstitial request time allowed: " + this.f272c + " ms. ").a("Interstitial with adSessionId(" + this.f270a + ") - request failed.").a(e0.i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdColonyInterstitialListener f274a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AdColonyInterstitial f275b;

        q(d dVar, AdColonyInterstitialListener adColonyInterstitialListener, AdColonyInterstitial adColonyInterstitial) {
            this.f274a = adColonyInterstitialListener;
            this.f275b = adColonyInterstitial;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.adcolony.sdk.a.b().e(false);
            this.f274a.onClosed(this.f275b);
        }
    }

    /* loaded from: classes.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f276a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ b1 f277b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.adcolony.sdk.c f278c;

        r(String str, b1 b1Var, com.adcolony.sdk.c cVar) {
            this.f276a = str;
            this.f277b = b1Var;
            this.f278c = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AdColonyInterstitial adColonyInterstitial = d.this.f().get(this.f276a);
                AdColonyAdView adColonyAdView = d.this.d().get(this.f276a);
                p0 e2 = adColonyInterstitial == null ? null : adColonyInterstitial.e();
                if (e2 == null && adColonyAdView != null) {
                    e2 = adColonyAdView.getOmidManager();
                }
                int d2 = e2 == null ? -1 : e2.d();
                if (e2 == null || d2 != 2) {
                    return;
                }
                e2.a(this.f277b);
                e2.a(this.f278c);
            } catch (IllegalArgumentException unused) {
                new e0.a().a("IllegalArgumentException when creating omid session").a(e0.i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.adcolony.sdk.c f280a;

        s(d dVar, com.adcolony.sdk.c cVar) {
            this.f280a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.f280a.i().size(); i++) {
                com.adcolony.sdk.a.b(this.f280a.j().get(i), this.f280a.i().get(i));
            }
            this.f280a.j().clear();
            this.f280a.i().clear();
            this.f280a.removeAllViews();
            com.adcolony.sdk.c cVar = this.f280a;
            cVar.z = null;
            cVar.y = null;
            for (b1 b1Var : cVar.n().values()) {
                if (!(b1Var instanceof com.adcolony.sdk.e)) {
                    if (b1Var instanceof c1) {
                        com.adcolony.sdk.a.b().a((c1) b1Var);
                    } else {
                        b1Var.l();
                    }
                }
            }
            for (a1 a1Var : this.f280a.m().values()) {
                a1Var.j();
                a1Var.k();
            }
            this.f280a.m().clear();
            this.f280a.l().clear();
            this.f280a.n().clear();
            this.f280a.h().clear();
            this.f280a.e().clear();
            this.f280a.f().clear();
            this.f280a.g().clear();
            this.f280a.m = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class t implements j0 {

        /* loaded from: classes.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h0 f282a;

            a(h0 h0Var) {
                this.f282a = h0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.this.d(this.f282a);
            }
        }

        t() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            z0.b(new a(h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class u implements j0 {
        u() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.k(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class v implements j0 {
        v() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.j(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class w implements j0 {
        w() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.f(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class x implements j0 {
        x() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.l(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class y implements j0 {
        y() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.b(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class z implements j0 {
        z() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            d.this.a(h0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "id");
        f1 b2 = c0.b();
        c0.a(b2, "id", h2);
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            c0.b(b2, "has_audio", false);
            h0Var.a(b2).c();
            return false;
        }
        boolean b3 = z0.b(z0.a(a2));
        double a3 = z0.a(z0.a(a2));
        c0.b(b2, "has_audio", b3);
        c0.a(b2, "volume", a3);
        h0Var.a(b2).c();
        return b3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(h0 h0Var) {
        f1 a2 = h0Var.a();
        String b2 = h0Var.b();
        String h2 = c0.h(a2, "ad_session_id");
        int d2 = c0.d(a2, "view_id");
        com.adcolony.sdk.c cVar = this.f237b.get(h2);
        if (cVar == null) {
            a(b2, h2);
            return false;
        }
        View view = cVar.e().get(Integer.valueOf(d2));
        if (view == null) {
            a(b2, "" + d2);
            return false;
        }
        cVar.removeView(view);
        cVar.addView(view, view.getLayoutParams());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k(h0 h0Var) {
        f1 a2 = h0Var.a();
        String b2 = h0Var.b();
        String h2 = c0.h(a2, "ad_session_id");
        int d2 = c0.d(a2, "view_id");
        com.adcolony.sdk.c cVar = this.f237b.get(h2);
        if (cVar == null) {
            a(b2, h2);
            return false;
        }
        View view = cVar.e().get(Integer.valueOf(d2));
        if (view == null) {
            a(b2, "" + d2);
            return false;
        }
        view.bringToFront();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l(h0 h0Var) {
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "id");
        AdColonyInterstitial adColonyInterstitial = this.f238c.get(h2);
        AdColonyAdView adColonyAdView = this.f241f.get(h2);
        int a3 = c0.a(a2, AdUnitActivity.EXTRA_ORIENTATION, -1);
        boolean z2 = adColonyAdView != null;
        if (adColonyInterstitial == null && !z2) {
            a(h0Var.b(), h2);
            return false;
        }
        c0.a(c0.b(), "id", h2);
        if (adColonyInterstitial != null) {
            adColonyInterstitial.a(a3);
            adColonyInterstitial.n();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        this.f236a = new ConcurrentHashMap<>();
        this.f237b = new HashMap<>();
        this.f238c = new ConcurrentHashMap<>();
        this.f239d = new ConcurrentHashMap<>();
        this.f240e = new ConcurrentHashMap<>();
        this.f241f = Collections.synchronizedMap(new HashMap());
        com.adcolony.sdk.a.a("AdContainer.create", new l());
        com.adcolony.sdk.a.a("AdContainer.destroy", new t());
        com.adcolony.sdk.a.a("AdContainer.move_view_to_index", new u());
        com.adcolony.sdk.a.a("AdContainer.move_view_to_front", new v());
        com.adcolony.sdk.a.a("AdSession.finish_fullscreen_ad", new w());
        com.adcolony.sdk.a.a("AdSession.start_fullscreen_ad", new x());
        com.adcolony.sdk.a.a("AdSession.ad_view_available", new y());
        com.adcolony.sdk.a.a("AdSession.ad_view_unavailable", new z());
        com.adcolony.sdk.a.a("AdSession.expiring", new a());
        com.adcolony.sdk.a.a("AdSession.audio_stopped", new b());
        com.adcolony.sdk.a.a("AdSession.audio_started", new c());
        com.adcolony.sdk.a.a("AdSession.interstitial_available", new C0009d());
        com.adcolony.sdk.a.a("AdSession.interstitial_unavailable", new e());
        com.adcolony.sdk.a.a("AdSession.has_audio", new f());
        com.adcolony.sdk.a.a("WebView.prepare", new g(this));
        com.adcolony.sdk.a.a("AdSession.expanded", new h(this));
        com.adcolony.sdk.a.a("AdColony.odt_event", new i(this));
    }

    boolean i(h0 h0Var) {
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "id");
        AdColonyInterstitial adColonyInterstitial = this.f238c.get(h2);
        if (adColonyInterstitial == null || adColonyInterstitial.j()) {
            return false;
        }
        AdColonyInterstitialListener listener = adColonyInterstitial.getListener();
        if (listener == null) {
            a(h0Var.b(), h2);
            return false;
        }
        z0.c(this.f236a.remove(h2));
        if (!com.adcolony.sdk.a.c()) {
            a(adColonyInterstitial);
            return false;
        }
        adColonyInterstitial.t();
        adColonyInterstitial.a(c0.h(a2, "ad_id"));
        adColonyInterstitial.c(c0.h(a2, "creative_id"));
        adColonyInterstitial.d(c0.h(a2, "ad_request_id"));
        z0.b(new m(this, h0Var, adColonyInterstitial, listener));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "ad_session_id");
        com.adcolony.sdk.c cVar = this.f237b.get(h2);
        if (cVar == null) {
            a(h0Var.b(), h2);
            return false;
        }
        a(cVar);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f(h0 h0Var) {
        f1 a2 = h0Var.a();
        int d2 = c0.d(a2, "status");
        if (d2 == 5 || d2 == 1 || d2 == 0 || d2 == 6) {
            return false;
        }
        String h2 = c0.h(a2, "id");
        AdColonyInterstitial remove = this.f238c.remove(h2);
        AdColonyInterstitialListener listener = remove == null ? null : remove.getListener();
        if (listener == null) {
            a(h0Var.b(), h2);
            return false;
        }
        z0.b(new q(this, listener, remove));
        remove.o();
        remove.a((com.adcolony.sdk.c) null);
        return true;
    }

    boolean b(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "id");
        AdColonyAdViewListener remove = this.f239d.remove(h2);
        if (remove == null) {
            a(h0Var.b(), h2);
            return false;
        }
        this.f240e.put(h2, remove);
        z0.c(this.f236a.remove(h2));
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            a(remove);
            return false;
        }
        z0.b(new k(a2, h0Var, remove, h2));
        return true;
    }

    boolean c(h0 h0Var) {
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 == null) {
            return false;
        }
        f1 a3 = h0Var.a();
        String h2 = c0.h(a3, "ad_session_id");
        com.adcolony.sdk.c cVar = new com.adcolony.sdk.c(a2.getApplicationContext(), h2);
        cVar.j(h0Var);
        this.f237b.put(h2, cVar);
        if (c0.d(a3, IabUtils.KEY_WIDTH) == 0) {
            AdColonyInterstitial adColonyInterstitial = this.f238c.get(h2);
            if (adColonyInterstitial == null) {
                a(h0Var.b(), h2);
                return false;
            }
            adColonyInterstitial.a(cVar);
        } else {
            cVar.c(false);
        }
        f1 b2 = c0.b();
        c0.b(b2, FirebaseAnalytics.Param.SUCCESS, true);
        h0Var.a(b2).c();
        return true;
    }

    boolean e(h0 h0Var) {
        f1 a2 = h0Var.a();
        String h2 = c0.h(a2, "id");
        if (c0.d(a2, SessionDescription.ATTR_TYPE) == 0) {
            AdColonyInterstitial remove = this.f238c.remove(h2);
            if (com.adcolony.sdk.a.c() && remove != null && remove.p()) {
                z0.b(new j(this));
                return true;
            }
            a(h0Var.b(), h2);
            return true;
        }
        return true;
    }

    boolean a(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "id");
        AdColonyAdViewListener remove = this.f239d.remove(h2);
        if (remove == null) {
            a(h0Var.b(), h2);
            return false;
        }
        z0.c(this.f236a.remove(h2));
        a(remove);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, AdColonyAdView> d() {
        return this.f241f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        for (AdColonyInterstitial adColonyInterstitial : this.f238c.values()) {
            if (adColonyInterstitial != null && adColonyInterstitial.m()) {
                adColonyInterstitial.e("Controller was reloaded and current ad was closed");
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdColonyAdViewListener adColonyAdViewListener) {
        z0.b(new n(this, adColonyAdViewListener));
    }

    private void a(AdColonyInterstitial adColonyInterstitial) {
        adColonyInterstitial.q();
        if (com.adcolony.sdk.a.c()) {
            return;
        }
        new e0.a().a("RequestNotFilled called due to a missing context. ").a("Interstitial with adSessionId(" + adColonyInterstitial.b() + ").").a(e0.i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<AdColonyInterstitial> g() {
        ArrayList arrayList = new ArrayList();
        for (AdColonyInterstitial adColonyInterstitial : f().values()) {
            if (!adColonyInterstitial.isExpired()) {
                arrayList.add(adColonyInterstitial);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        HashSet<AdColonyAdViewListener> hashSet = new HashSet();
        synchronized (this.f242g) {
            for (String str : this.f240e.keySet()) {
                AdColonyAdViewListener remove = this.f240e.remove(str);
                if (remove != null) {
                    hashSet.add(remove);
                }
            }
            for (String str2 : this.f239d.keySet()) {
                AdColonyAdViewListener remove2 = this.f239d.remove(str2);
                if (remove2 != null) {
                    hashSet.add(remove2);
                }
            }
        }
        for (AdColonyAdViewListener adColonyAdViewListener : hashSet) {
            a(adColonyAdViewListener);
        }
        for (String str3 : this.f238c.keySet()) {
            AdColonyInterstitial adColonyInterstitial = this.f238c.get(str3);
            if (adColonyInterstitial != null && adColonyInterstitial.l()) {
                this.f238c.remove(str3);
                a(adColonyInterstitial);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConcurrentHashMap<String, AdColonyAdViewListener> e() {
        return this.f239d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, AdColonyAdViewListener adColonyAdViewListener, AdColonyAdSize adColonyAdSize, AdColonyAdOptions adColonyAdOptions, long j2) {
        f1 f1Var;
        String a2 = z0.a();
        float s2 = com.adcolony.sdk.a.b().n().s();
        f1 b2 = c0.b();
        c0.a(b2, "zone_id", str);
        c0.b(b2, SessionDescription.ATTR_TYPE, 1);
        c0.b(b2, "width_pixels", (int) (adColonyAdSize.getWidth() * s2));
        c0.b(b2, "height_pixels", (int) (adColonyAdSize.getHeight() * s2));
        c0.b(b2, IabUtils.KEY_WIDTH, adColonyAdSize.getWidth());
        c0.b(b2, IabUtils.KEY_HEIGHT, adColonyAdSize.getHeight());
        c0.a(b2, "id", a2);
        if (adColonyAdOptions != null && (f1Var = adColonyAdOptions.f61d) != null) {
            c0.a(b2, "options", f1Var);
        }
        adColonyAdViewListener.a(str);
        adColonyAdViewListener.a(adColonyAdSize);
        this.f239d.put(a2, adColonyAdViewListener);
        this.f236a.put(a2, new o(a2, str, j2));
        new h0("AdSession.on_request", 1, b2).c();
        z0.a(this.f236a.get(a2), j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<String, com.adcolony.sdk.c> c() {
        return this.f237b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConcurrentHashMap<String, AdColonyInterstitial> f() {
        return this.f238c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, AdColonyInterstitialListener adColonyInterstitialListener, AdColonyAdOptions adColonyAdOptions, long j2) {
        String a2 = z0.a();
        com.adcolony.sdk.k b2 = com.adcolony.sdk.a.b();
        AdColonyInterstitial adColonyInterstitial = new AdColonyInterstitial(a2, adColonyInterstitialListener, str);
        f1 b3 = c0.b();
        c0.a(b3, "zone_id", str);
        c0.b(b3, "fullscreen", true);
        Rect w2 = b2.n().w();
        c0.b(b3, IabUtils.KEY_WIDTH, w2.width());
        c0.b(b3, IabUtils.KEY_HEIGHT, w2.height());
        c0.b(b3, SessionDescription.ATTR_TYPE, 0);
        c0.a(b3, "id", a2);
        if (adColonyAdOptions != null && adColonyAdOptions.f61d != null) {
            adColonyInterstitial.a(adColonyAdOptions);
            c0.a(b3, "options", adColonyAdOptions.f61d);
        }
        this.f238c.put(a2, adColonyInterstitial);
        this.f236a.put(a2, new p(a2, str, j2));
        new h0("AdSession.on_request", 1, b3).c();
        z0.a(this.f236a.get(a2), j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, f1 f1Var, String str) {
        h0 h0Var = new h0("AdSession.finish_fullscreen_ad", 0);
        c0.b(f1Var, "status", 1);
        h0Var.b(f1Var);
        new e0.a().a(str).a(e0.f297h);
        ((com.adcolony.sdk.b) context).a(h0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(b1 b1Var, String str, com.adcolony.sdk.c cVar) {
        z0.b(new r(str, b1Var, cVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.adcolony.sdk.c cVar) {
        z0.b(new s(this, cVar));
        AdColonyAdView adColonyAdView = this.f241f.get(cVar.a());
        if (adColonyAdView == null || adColonyAdView.d()) {
            this.f237b.remove(cVar.a());
            cVar.y = null;
        }
    }

    boolean h(h0 h0Var) {
        String h2 = c0.h(h0Var.a(), "id");
        AdColonyInterstitial remove = this.f238c.remove(h2);
        if ((remove == null ? null : remove.getListener()) == null) {
            a(h0Var.b(), h2);
            return false;
        }
        z0.c(this.f236a.remove(h2));
        a(remove);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        new e0.a().a("Message '").a(str).a("' sent with invalid id: ").a(str2).a(e0.f297h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyAdView a(String str) {
        AdColonyAdView remove;
        synchronized (this.f242g) {
            remove = this.f241f.remove(str);
        }
        return remove;
    }
}
