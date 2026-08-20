package com.adcolony.sdk;

import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.adcolony.sdk.e0;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.iab.omid.library.adcolony.adsession.FriendlyObstructionPurpose;
import io.bidmachine.utils.IabUtils;
import java.io.File;
/* loaded from: classes.dex */
public class AdColonyAdView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private com.adcolony.sdk.c f64a;

    /* renamed from: b  reason: collision with root package name */
    private AdColonyAdViewListener f65b;

    /* renamed from: c  reason: collision with root package name */
    private AdColonyAdSize f66c;

    /* renamed from: d  reason: collision with root package name */
    private String f67d;

    /* renamed from: e  reason: collision with root package name */
    private String f68e;

    /* renamed from: f  reason: collision with root package name */
    private String f69f;

    /* renamed from: g  reason: collision with root package name */
    private String f70g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f71h;
    private p0 i;
    private h0 j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private c v;

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Context a2 = com.adcolony.sdk.a.a();
            if (a2 instanceof AdColonyAdViewActivity) {
                ((AdColonyAdViewActivity) a2).b();
            }
            d c2 = com.adcolony.sdk.a.b().c();
            c2.a(AdColonyAdView.this.f67d);
            c2.a(AdColonyAdView.this.f64a);
            f1 b2 = c0.b();
            c0.a(b2, "id", AdColonyAdView.this.f67d);
            new h0("AdSession.on_ad_view_destroyed", 1, b2).c();
            if (AdColonyAdView.this.v != null) {
                AdColonyAdView.this.v.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f73a;

        b(AdColonyAdView adColonyAdView, Context context) {
            this.f73a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = this.f73a;
            if (context instanceof AdColonyAdViewActivity) {
                ((AdColonyAdViewActivity) context).b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface c {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyAdView(Context context, h0 h0Var, AdColonyAdViewListener adColonyAdViewListener) throws RuntimeException {
        super(context);
        this.p = true;
        this.f65b = adColonyAdViewListener;
        this.f68e = adColonyAdViewListener.c();
        f1 a2 = h0Var.a();
        this.f67d = c0.h(a2, "id");
        this.f69f = c0.h(a2, "close_button_filepath");
        this.k = c0.b(a2, "trusted_demand_source");
        this.o = c0.b(a2, "close_button_snap_to_webview");
        this.t = c0.d(a2, "close_button_width");
        this.u = c0.d(a2, "close_button_height");
        com.adcolony.sdk.c cVar = com.adcolony.sdk.a.b().c().c().get(this.f67d);
        this.f64a = cVar;
        if (cVar != null) {
            this.f66c = adColonyAdViewListener.a();
            setLayoutParams(new FrameLayout.LayoutParams(this.f64a.d(), this.f64a.b()));
            setBackgroundColor(0);
            addView(this.f64a);
            return;
        }
        throw new RuntimeException("AdColonyAdView container cannot be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return this.l;
    }

    public boolean destroy() {
        if (this.l) {
            new e0.a().a("Ignoring duplicate call to destroy().").a(e0.f295f);
            return false;
        }
        this.l = true;
        p0 p0Var = this.i;
        if (p0Var != null && p0Var.c() != null) {
            this.i.b();
        }
        z0.b(new a());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        b1 webView = getWebView();
        if (this.i == null || webView == null) {
            return;
        }
        webView.f();
    }

    public AdColonyAdSize getAdSize() {
        return this.f66c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getClickOverride() {
        return this.f70g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.adcolony.sdk.c getContainer() {
        return this.f64a;
    }

    public AdColonyAdViewListener getListener() {
        return this.f65b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0 getOmidManager() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOrientation() {
        return this.q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean getTrustedDemandSource() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b1 getWebView() {
        com.adcolony.sdk.c cVar = this.f64a;
        if (cVar == null) {
            return null;
        }
        return cVar.n().get(2);
    }

    public String getZoneId() {
        return this.f68e;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.p || this.l) {
            return;
        }
        this.p = false;
        AdColonyAdViewListener adColonyAdViewListener = this.f65b;
        if (adColonyAdViewListener != null) {
            adColonyAdViewListener.onShow(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setClickOverride(String str) {
        this.f70g = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setExpandMessage(h0 h0Var) {
        this.j = h0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setExpandedHeight(int i) {
        this.s = (int) (i * com.adcolony.sdk.a.b().n().s());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setExpandedWidth(int i) {
        this.r = (int) (i * com.adcolony.sdk.a.b().n().s());
    }

    public void setListener(AdColonyAdViewListener adColonyAdViewListener) {
        this.f65b = adColonyAdViewListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNoCloseButton(boolean z) {
        this.m = this.k && z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOmidManager(p0 p0Var) {
        this.i = p0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnDestroyListenerOrCall(c cVar) {
        if (this.l) {
            cVar.a();
        } else {
            this.v = cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOrientation(int i) {
        this.q = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUserInteraction(boolean z) {
        this.n = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.k || this.n) {
            float s = com.adcolony.sdk.a.b().n().s();
            this.f64a.setLayoutParams(new FrameLayout.LayoutParams((int) (this.f66c.getWidth() * s), (int) (this.f66c.getHeight() * s)));
            b1 webView = getWebView();
            if (webView != null) {
                h0 h0Var = new h0("WebView.set_bounds", 0);
                f1 b2 = c0.b();
                c0.b(b2, "x", webView.getInitialX());
                c0.b(b2, "y", webView.getInitialY());
                c0.b(b2, IabUtils.KEY_WIDTH, webView.getInitialWidth());
                c0.b(b2, IabUtils.KEY_HEIGHT, webView.getInitialHeight());
                h0Var.b(b2);
                webView.a(h0Var);
                f1 b3 = c0.b();
                c0.a(b3, "ad_session_id", this.f67d);
                new h0("MRAID.on_close", this.f64a.k(), b3).c();
            }
            ImageView imageView = this.f71h;
            if (imageView != null) {
                this.f64a.removeView(imageView);
                this.f64a.a(this.f71h);
            }
            addView(this.f64a);
            AdColonyAdViewListener adColonyAdViewListener = this.f65b;
            if (adColonyAdViewListener != null) {
                adColonyAdViewListener.onClosed(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        int width;
        if (!this.k && !this.n) {
            if (this.j != null) {
                f1 b2 = c0.b();
                c0.b(b2, FirebaseAnalytics.Param.SUCCESS, false);
                this.j.a(b2).c();
                this.j = null;
            }
            return false;
        }
        q n = com.adcolony.sdk.a.b().n();
        Rect w = n.w();
        int i = this.r;
        if (i <= 0) {
            i = w.width();
        }
        int i2 = this.s;
        if (i2 <= 0) {
            i2 = w.height();
        }
        int width2 = (w.width() - i) / 2;
        int height = (w.height() - i2) / 2;
        this.f64a.setLayoutParams(new FrameLayout.LayoutParams(w.width(), w.height()));
        b1 webView = getWebView();
        if (webView != null) {
            h0 h0Var = new h0("WebView.set_bounds", 0);
            f1 b3 = c0.b();
            c0.b(b3, "x", width2);
            c0.b(b3, "y", height);
            c0.b(b3, IabUtils.KEY_WIDTH, i);
            c0.b(b3, IabUtils.KEY_HEIGHT, i2);
            h0Var.b(b3);
            webView.a(h0Var);
            float s = n.s();
            f1 b4 = c0.b();
            c0.b(b4, "app_orientation", z0.d(z0.f()));
            c0.b(b4, IabUtils.KEY_WIDTH, (int) (i / s));
            c0.b(b4, IabUtils.KEY_HEIGHT, (int) (i2 / s));
            c0.b(b4, "x", z0.a(webView));
            c0.b(b4, "y", z0.b(webView));
            c0.a(b4, "ad_session_id", this.f67d);
            new h0("MRAID.on_size_change", this.f64a.k(), b4).c();
        }
        ImageView imageView = this.f71h;
        if (imageView != null) {
            this.f64a.removeView(imageView);
        }
        Context a2 = com.adcolony.sdk.a.a();
        if (a2 != null && !this.m && webView != null) {
            float s2 = com.adcolony.sdk.a.b().n().s();
            int i3 = (int) (this.t * s2);
            int i4 = (int) (this.u * s2);
            if (this.o) {
                width = webView.getCurrentX() + webView.getCurrentWidth();
            } else {
                width = w.width();
            }
            int currentY = this.o ? webView.getCurrentY() : 0;
            ImageView imageView2 = new ImageView(a2.getApplicationContext());
            this.f71h = imageView2;
            imageView2.setImageURI(Uri.fromFile(new File(this.f69f)));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(width - i3, currentY, 0, 0);
            this.f71h.setOnClickListener(new b(this, a2));
            this.f64a.addView(this.f71h, layoutParams);
            this.f64a.a(this.f71h, FriendlyObstructionPurpose.CLOSE_AD);
        }
        if (this.j != null) {
            f1 b5 = c0.b();
            c0.b(b5, FirebaseAnalytics.Param.SUCCESS, true);
            this.j.a(b5).c();
            this.j = null;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.n;
    }
}
