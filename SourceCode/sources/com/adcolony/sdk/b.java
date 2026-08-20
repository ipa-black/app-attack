package com.adcolony.sdk;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import io.bidmachine.utils.IabUtils;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends Activity {

    /* renamed from: a  reason: collision with root package name */
    c f159a;

    /* renamed from: b  reason: collision with root package name */
    int f160b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f161c;

    /* renamed from: d  reason: collision with root package name */
    boolean f162d;

    /* renamed from: e  reason: collision with root package name */
    boolean f163e;

    /* renamed from: f  reason: collision with root package name */
    boolean f164f;

    /* renamed from: g  reason: collision with root package name */
    boolean f165g;

    /* renamed from: h  reason: collision with root package name */
    boolean f166h;
    boolean i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements j0 {
        a() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            b.this.a(h0Var);
        }
    }

    void a(boolean z) {
        Iterator<Map.Entry<Integer, a1>> it = this.f159a.m().entrySet().iterator();
        while (it.hasNext() && !isFinishing()) {
            a1 value = it.next().getValue();
            if (!value.f() && value.b().isPlaying()) {
                value.h();
            }
        }
        AdColonyInterstitial j = com.adcolony.sdk.a.b().j();
        if (j != null && j.i() && j.e().c() != null && z && this.f166h) {
            j.e().a("pause");
        }
    }

    void b(boolean z) {
        for (Map.Entry<Integer, a1> entry : this.f159a.m().entrySet()) {
            a1 value = entry.getValue();
            if (!value.f() && !value.b().isPlaying() && !com.adcolony.sdk.a.b().o().b()) {
                value.i();
            }
        }
        AdColonyInterstitial j = com.adcolony.sdk.a.b().j();
        if (j == null || !j.i() || j.e().c() == null) {
            return;
        }
        if (!(z && this.f166h) && this.i) {
            j.e().a("resume");
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        f1 b2 = c0.b();
        c0.a(b2, "id", this.f159a.a());
        new h0("AdSession.on_back_button", this.f159a.k(), b2).c();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this instanceof AdColonyInterstitialActivity) {
            a();
        } else {
            ((AdColonyAdViewActivity) this).c();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (com.adcolony.sdk.a.d() && com.adcolony.sdk.a.b().l() != null) {
            k b2 = com.adcolony.sdk.a.b();
            this.f164f = false;
            c l = b2.l();
            this.f159a = l;
            l.d(false);
            if (z0.g()) {
                this.f159a.d(true);
            }
            this.f159a.a();
            this.f161c = this.f159a.k();
            boolean multiWindowEnabled = b2.u().getMultiWindowEnabled();
            this.f165g = multiWindowEnabled;
            if (multiWindowEnabled) {
                getWindow().addFlags(2048);
                getWindow().clearFlags(1024);
            } else {
                getWindow().addFlags(1024);
                getWindow().clearFlags(2048);
            }
            requestWindowFeature(1);
            getWindow().getDecorView().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            if (b2.u().getKeepScreenOn()) {
                getWindow().addFlags(128);
            }
            ViewParent parent = this.f159a.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(this.f159a);
            }
            setContentView(this.f159a);
            this.f159a.i().add(com.adcolony.sdk.a.a("AdSession.finish_fullscreen_ad", (j0) new a(), true));
            this.f159a.j().add("AdSession.finish_fullscreen_ad");
            a(this.f160b);
            if (!this.f159a.o()) {
                f1 b3 = c0.b();
                c0.a(b3, "id", this.f159a.a());
                c0.b(b3, "screen_width", this.f159a.d());
                c0.b(b3, "screen_height", this.f159a.b());
                new h0("AdSession.on_fullscreen_ad_started", this.f159a.k(), b3).c();
                this.f159a.e(true);
                return;
            }
            a();
            return;
        }
        finish();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (!com.adcolony.sdk.a.d() || this.f159a == null || this.f162d || z0.g() || this.f159a.q()) {
            return;
        }
        f1 b2 = c0.b();
        c0.a(b2, "id", this.f159a.a());
        new h0("AdSession.on_error", this.f159a.k(), b2).c();
        this.f164f = true;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        a(this.f163e);
        this.f163e = false;
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        a();
        b(this.f163e);
        this.f163e = true;
        this.i = true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (z && this.f163e) {
            com.adcolony.sdk.a.b().x().b(true);
            b(this.f163e);
            this.f166h = true;
        } else if (z || !this.f163e) {
        } else {
            com.adcolony.sdk.a.b().x().a(true);
            a(this.f163e);
            this.f166h = false;
        }
    }

    void a() {
        k b2 = com.adcolony.sdk.a.b();
        if (this.f159a == null) {
            this.f159a = b2.l();
        }
        c cVar = this.f159a;
        if (cVar == null) {
            return;
        }
        cVar.d(false);
        if (z0.g()) {
            this.f159a.d(true);
        }
        Rect x = this.f165g ? b2.n().x() : b2.n().w();
        if (x.width() <= 0 || x.height() <= 0) {
            return;
        }
        f1 b3 = c0.b();
        f1 b4 = c0.b();
        float s = b2.n().s();
        c0.b(b4, IabUtils.KEY_WIDTH, (int) (x.width() / s));
        c0.b(b4, IabUtils.KEY_HEIGHT, (int) (x.height() / s));
        c0.b(b4, "app_orientation", z0.d(z0.f()));
        c0.b(b4, "x", 0);
        c0.b(b4, "y", 0);
        c0.a(b4, "ad_session_id", this.f159a.a());
        c0.b(b3, "screen_width", x.width());
        c0.b(b3, "screen_height", x.height());
        c0.a(b3, "ad_session_id", this.f159a.a());
        c0.b(b3, "id", this.f159a.c());
        this.f159a.setLayoutParams(new FrameLayout.LayoutParams(x.width(), x.height()));
        this.f159a.b(x.width());
        this.f159a.a(x.height());
        new h0("MRAID.on_size_change", this.f159a.k(), b4).c();
        new h0("AdContainer.on_orientation_change", this.f159a.k(), b3).c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(h0 h0Var) {
        int d2 = c0.d(h0Var.a(), "status");
        if ((d2 == 5 || d2 == 0 || d2 == 6 || d2 == 1) && !this.f162d) {
            k b2 = com.adcolony.sdk.a.b();
            r o = b2.o();
            b2.d(h0Var);
            if (o.a() != null) {
                o.a().dismiss();
                o.a((AlertDialog) null);
            }
            if (!this.f164f) {
                finish();
            }
            this.f162d = true;
            ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            b2.e(false);
            f1 b3 = c0.b();
            c0.a(b3, "id", this.f159a.a());
            new h0("AdSession.on_close", this.f159a.k(), b3).c();
            b2.a((c) null);
            b2.a((AdColonyInterstitial) null);
            b2.a((AdColonyAdView) null);
            com.adcolony.sdk.a.b().c().f().remove(this.f159a.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        if (i == 0) {
            setRequestedOrientation(7);
        } else if (i != 1) {
            setRequestedOrientation(4);
        } else {
            setRequestedOrientation(6);
        }
        this.f160b = i;
    }
}
