package com.adcolony.sdk;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.adcolony.sdk.e0;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.firebase.messaging.Constants;
import io.bidmachine.utils.IabUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
/* loaded from: classes.dex */
public class b1 extends WebView {
    public static final g u = new g(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f171a;

    /* renamed from: b  reason: collision with root package name */
    private final h0 f172b;

    /* renamed from: c  reason: collision with root package name */
    private int f173c;

    /* renamed from: d  reason: collision with root package name */
    private String f174d;

    /* renamed from: e  reason: collision with root package name */
    private String f175e;

    /* renamed from: f  reason: collision with root package name */
    private String f176f;

    /* renamed from: g  reason: collision with root package name */
    private String f177g;

    /* renamed from: h  reason: collision with root package name */
    private String f178h;
    private String i;
    private f1 j;
    private boolean k;
    private com.adcolony.sdk.c l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a extends WebChromeClient {
        public a() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            e0 e0Var;
            ConsoleMessage.MessageLevel messageLevel = consoleMessage == null ? null : consoleMessage.messageLevel();
            String message = consoleMessage == null ? null : consoleMessage.message();
            boolean z = (message != null && StringsKt.contains$default((CharSequence) message, (CharSequence) "Viewport target-densitydpi is not supported.", false, 2, (Object) null)) || (message != null && StringsKt.contains$default((CharSequence) message, (CharSequence) "Viewport argument key \"shrink-to-fit\" not recognized and ignored", false, 2, (Object) null));
            boolean z2 = messageLevel == ConsoleMessage.MessageLevel.ERROR;
            boolean z3 = messageLevel == ConsoleMessage.MessageLevel.WARNING;
            if ((message != null && StringsKt.contains$default((CharSequence) message, (CharSequence) "ADC3_update is not defined", false, 2, (Object) null)) || (message != null && StringsKt.contains$default((CharSequence) message, (CharSequence) "NativeLayer.dispatch_messages is not a function", false, 2, (Object) null))) {
                b1 b1Var = b1.this;
                h0 message2 = b1Var.getMessage();
                f1 a2 = message2 != null ? message2.a() : null;
                if (a2 == null) {
                    a2 = new f1();
                }
                b1Var.a(a2, "Unable to communicate with AdColony. Please ensure that you have added an exception for our Javascript interface in your ProGuard configuration and that you do not have a faulty proxy enabled on your device.");
            }
            if (!z && (z3 || z2)) {
                AdColonyInterstitial interstitial = b1.this.getInterstitial();
                e0.a a3 = new e0.a().a("onConsoleMessage: " + ((Object) message) + " with ad id: " + ((interstitial == null || (r0 = interstitial.a()) == null) ? "unknown" : "unknown"));
                if (z2) {
                    e0Var = e0.i;
                } else {
                    e0Var = e0.f296g;
                }
                a3.a(e0Var);
            }
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            if (jsResult == null) {
                return true;
            }
            jsResult.confirm();
            return true;
        }
    }

    /* loaded from: classes.dex */
    protected class b extends WebViewClient {
        public b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            Unit unit;
            f1 b2 = c0.b();
            c0.b(b2, "id", b1.this.f173c);
            c0.a(b2, "url", str);
            com.adcolony.sdk.c parentContainer = b1.this.getParentContainer();
            if (parentContainer == null) {
                unit = null;
            } else {
                c0.a(b2, "ad_session_id", b1.this.getAdSessionId());
                c0.b(b2, "container_id", parentContainer.c());
                new h0("WebView.on_load", parentContainer.k(), b2).c();
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                new h0("WebView.on_load", b1.this.getWebViewModuleId(), b2).c();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            b1.this.a(i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            if (str != null && StringsKt.endsWith$default(str, "mraid.js", false, 2, (Object) null)) {
                String str2 = b1.this.f175e;
                Charset charset = com.adcolony.sdk.h.f341a;
                if (str2 != null) {
                    return new WebResourceResponse("text/javascript", charset.name(), new ByteArrayInputStream(str2.getBytes(charset)));
                }
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            return null;
        }
    }

    /* loaded from: classes.dex */
    protected class c extends b {
        public c() {
            super();
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            Uri url;
            String uri;
            if (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null || (uri = url.toString()) == null || !StringsKt.endsWith$default(uri, "mraid.js", false, 2, (Object) null)) {
                return null;
            }
            String str = b1.this.f175e;
            Charset charset = com.adcolony.sdk.h.f341a;
            if (str != null) {
                return new WebResourceResponse("text/javascript", charset.name(), new ByteArrayInputStream(str.getBytes(charset)));
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }

        @Override // com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            return null;
        }
    }

    /* loaded from: classes.dex */
    protected class d extends c {
        public d() {
            super();
        }

        @Override // com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            Uri url;
            if (webResourceError == null) {
                return;
            }
            b1.this.a(webResourceError.getErrorCode(), webResourceError.getDescription().toString(), (webResourceRequest == null || (url = webResourceRequest.getUrl()) == null) ? null : url.toString());
        }
    }

    /* loaded from: classes.dex */
    protected class e extends d {
        public e(b1 b1Var) {
            super();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class f extends e {
        public f() {
            super(b1.this);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (renderProcessGoneDetail != null && renderProcessGoneDetail.didCrash()) {
                b1.this.a(c0.b(), "An error occurred while rendering the ad. Ad closing.");
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static final class g {
        private g() {
        }

        public /* synthetic */ g(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final b1 a(Context context, h0 h0Var, int i, com.adcolony.sdk.c cVar) {
            b1 b1Var;
            int e2 = com.adcolony.sdk.a.b().r().e();
            f1 a2 = h0Var.a();
            if (c0.b(a2, "use_mraid_module")) {
                b1Var = new l0(context, e2, h0Var, com.adcolony.sdk.a.b().r().e());
            } else if (c0.b(a2, "enable_messages")) {
                b1Var = new c1(context, e2, h0Var);
            } else {
                b1Var = new b1(context, e2, h0Var);
            }
            b1Var.a(h0Var, i, cVar);
            b1Var.i();
            return b1Var;
        }
    }

    /* loaded from: classes.dex */
    public static final class h implements j0 {

        /* loaded from: classes.dex */
        static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b1 f185a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h0 f186b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(b1 b1Var, h0 h0Var) {
                super(0);
                this.f185a = b1Var;
                this.f186b = h0Var;
            }

            public final void a() {
                this.f185a.a(c0.h(this.f186b.a(), "custom_js"));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.INSTANCE;
            }
        }

        h() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            b1.this.a(h0Var, new a(b1.this, h0Var));
        }
    }

    /* loaded from: classes.dex */
    public static final class i implements j0 {

        /* loaded from: classes.dex */
        static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b1 f188a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h0 f189b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(b1 b1Var, h0 h0Var) {
                super(0);
                this.f188a = b1Var;
                this.f189b = h0Var;
            }

            public final void a() {
                this.f188a.setVisible(this.f189b);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.INSTANCE;
            }
        }

        i() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            b1.this.a(h0Var, new a(b1.this, h0Var));
        }
    }

    /* loaded from: classes.dex */
    public static final class j implements j0 {

        /* loaded from: classes.dex */
        static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b1 f191a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h0 f192b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(b1 b1Var, h0 h0Var) {
                super(0);
                this.f191a = b1Var;
                this.f192b = h0Var;
            }

            public final void a() {
                this.f191a.setBounds(this.f192b);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.INSTANCE;
            }
        }

        j() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            b1.this.a(h0Var, new a(b1.this, h0Var));
        }
    }

    /* loaded from: classes.dex */
    public static final class k implements j0 {

        /* loaded from: classes.dex */
        static final class a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b1 f194a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ h0 f195b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(b1 b1Var, h0 h0Var) {
                super(0);
                this.f194a = b1Var;
                this.f195b = h0Var;
            }

            public final void a() {
                this.f194a.setTransparent(c0.b(this.f195b.a(), "transparent"));
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.INSTANCE;
            }
        }

        k() {
        }

        @Override // com.adcolony.sdk.j0
        public void a(h0 h0Var) {
            b1.this.a(h0Var, new a(b1.this, h0Var));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function0 f196a;

        l(Function0 function0) {
            this.f196a = function0;
        }

        @Override // java.lang.Runnable
        public final /* synthetic */ void run() {
            this.f196a.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class m implements Runnable {

        /* loaded from: classes.dex */
        public static final class a extends WebViewClient {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ b1 f198a;

            a(b1 b1Var) {
                this.f198a = b1Var;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                this.f198a.destroy();
            }
        }

        m() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            b1.this.setWebChromeClient(null);
            b1.this.setWebViewClient(new a(b1.this));
            b1.this.clearCache(true);
            b1.this.removeAllViews();
            b1.this.loadUrl("about:blank");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b1(Context context, int i2, h0 h0Var) {
        super(context);
        this.f171a = i2;
        this.f172b = h0Var;
        this.f174d = "";
        this.f175e = "";
        this.f176f = "";
        this.f177g = "";
        this.f178h = "";
        this.i = "";
        this.j = c0.b();
    }

    @JvmStatic
    public static final b1 a(Context context, h0 h0Var, int i2, com.adcolony.sdk.c cVar) {
        return u.a(context, h0Var, i2, cVar);
    }

    private final void d() {
        ArrayList<String> j2;
        ArrayList<j0> i2;
        com.adcolony.sdk.c cVar = this.l;
        if (cVar != null && (i2 = cVar.i()) != null) {
            i2.add(com.adcolony.sdk.a.a("WebView.execute_js", (j0) new h(), true));
            i2.add(com.adcolony.sdk.a.a("WebView.set_visible", (j0) new i(), true));
            i2.add(com.adcolony.sdk.a.a("WebView.set_bounds", (j0) new j(), true));
            i2.add(com.adcolony.sdk.a.a("WebView.set_transparent", (j0) new k(), true));
        }
        com.adcolony.sdk.c cVar2 = this.l;
        if (cVar2 == null || (j2 = cVar2.j()) == null) {
            return;
        }
        j2.add("WebView.execute_js");
        j2.add("WebView.set_visible");
        j2.add("WebView.set_bounds");
        j2.add("WebView.set_transparent");
    }

    private final WebViewClient g() {
        return getWebViewClientApi26();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setTransparent(boolean z) {
        setBackgroundColor(z ? 0 : -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ void e() {
        d();
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.o, this.p);
        layoutParams.setMargins(getCurrentX(), getCurrentY(), 0, 0);
        layoutParams.gravity = 0;
        com.adcolony.sdk.c cVar = this.l;
        if (cVar == null) {
            return;
        }
        cVar.addView(this, layoutParams);
    }

    public final void f() {
        com.adcolony.sdk.a.b().c().a(this, this.f178h, this.l);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ String getAdSessionId() {
        return this.f178h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ AdColonyAdView getAdView() {
        return com.adcolony.sdk.a.b().c().d().get(this.f178h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ String getBaseUrl() {
        return this.f177g;
    }

    public final int getCurrentHeight() {
        return this.p;
    }

    public final int getCurrentWidth() {
        return this.o;
    }

    public final int getCurrentX() {
        return this.m;
    }

    public final int getCurrentY() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ boolean getDestroyed() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ f1 getInfo() {
        return this.j;
    }

    public final int getInitialHeight() {
        return this.t;
    }

    public final int getInitialWidth() {
        return this.s;
    }

    public final int getInitialX() {
        return this.q;
    }

    public final int getInitialY() {
        return this.r;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ AdColonyInterstitial getInterstitial() {
        return com.adcolony.sdk.a.b().c().f().get(this.f178h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ String getMUrl() {
        return this.f176f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ h0 getMessage() {
        return this.f172b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ String getMraidFilepath() {
        return this.i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ com.adcolony.sdk.c getParentContainer() {
        return this.l;
    }

    protected /* synthetic */ WebViewClient getWebViewClientApi21() {
        return new c();
    }

    protected /* synthetic */ WebViewClient getWebViewClientApi23() {
        return new d();
    }

    protected /* synthetic */ WebViewClient getWebViewClientApi24() {
        return new e(this);
    }

    protected /* synthetic */ WebViewClient getWebViewClientApi26() {
        return new f();
    }

    protected /* synthetic */ WebViewClient getWebViewClientDefault() {
        return new b();
    }

    public final int getWebViewModuleId() {
        return this.f171a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ String h() {
        String sb;
        AdColonyInterstitial interstitial = getInterstitial();
        return (interstitial == null || (sb = new StringBuilder().append((Object) interstitial.a()).append(" : ").append(interstitial.getZoneID()).toString()) == null) ? "unknown" : sb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ void i() {
        setFocusable(true);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        WebView.setWebContentsDebuggingEnabled(false);
        setWebChromeClient(new a());
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setUseWideViewPort(true);
        settings.setGeolocationEnabled(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setAllowFileAccess(true);
        setWebViewClient(g());
        j();
        if (!(this instanceof com.adcolony.sdk.j)) {
            e();
        }
        if (this.f174d.length() > 0) {
            a(this.f174d);
        }
    }

    protected /* synthetic */ void j() {
        if (!StringsKt.startsWith$default(this.f176f, "http", false, 2, (Object) null) && !StringsKt.startsWith$default(this.f176f, "file", false, 2, (Object) null)) {
            loadDataWithBaseURL(this.f177g, this.f176f, "text/html", null, null);
        } else if (!StringsKt.contains$default((CharSequence) this.f176f, (CharSequence) ".html", false, 2, (Object) null) && StringsKt.startsWith$default(this.f176f, "file", false, 2, (Object) null)) {
            loadDataWithBaseURL(this.f176f, "<html><script src=\"" + this.f176f + "\"></script></html>", "text/html", null, null);
        } else {
            loadUrl(this.f176f);
        }
    }

    protected /* synthetic */ void k() {
        if (this.i.length() > 0) {
            try {
                this.f175e = com.adcolony.sdk.a.b().p().a(this.i, false).toString();
                this.f175e = new Regex("bridge.os_name\\s*=\\s*\"\"\\s*;").replaceFirst(this.f175e, "bridge.os_name = \"\";\nvar ADC_DEVICE_INFO = " + this.j + ";\n");
            } catch (IOException e2) {
                a(e2);
            } catch (IllegalArgumentException e3) {
                a(e3);
            } catch (IndexOutOfBoundsException e4) {
                a(e4);
            }
        }
    }

    public final void l() {
        if (this.k) {
            return;
        }
        this.k = true;
        z0.b(new m());
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent != null && motionEvent.getAction() == 1) {
            AdColonyAdView adView = getAdView();
            if (adView != null && !adView.c()) {
                f1 b2 = c0.b();
                c0.a(b2, "ad_session_id", getAdSessionId());
                new h0("WebView.on_first_click", 1, b2).c();
                adView.setUserInteraction(true);
            }
            AdColonyInterstitial interstitial = getInterstitial();
            if (interstitial != null) {
                interstitial.b(true);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void setAdSessionId(String str) {
        this.f178h = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void setBaseUrl(String str) {
        this.f177g = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ void setBounds(h0 h0Var) {
        f1 a2 = h0Var.a();
        this.m = c0.d(a2, "x");
        this.n = c0.d(a2, "y");
        this.o = c0.d(a2, IabUtils.KEY_WIDTH);
        this.p = c0.d(a2, IabUtils.KEY_HEIGHT);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.setMargins(getCurrentX(), getCurrentY(), 0, 0);
        layoutParams2.width = getCurrentWidth();
        layoutParams2.height = getCurrentHeight();
        Unit unit = Unit.INSTANCE;
        setLayoutParams(layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void setInfo(f1 f1Var) {
        this.j = f1Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void setMUrl(String str) {
        this.f176f = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void setMraidFilepath(String str) {
        this.i = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ void setVisible(h0 h0Var) {
        setVisibility(c0.b(h0Var.a(), "visible") ? 0 : 4);
    }

    public final void b(h0 h0Var, int i2, com.adcolony.sdk.c cVar) {
        a(h0Var, i2, cVar);
        e();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ void a(h0 h0Var, int i2, com.adcolony.sdk.c cVar) {
        this.f173c = i2;
        this.l = cVar;
        f1 a2 = h0Var.a();
        String i3 = c0.i(a2, "url");
        if (i3 == null) {
            i3 = c0.h(a2, "data");
        }
        this.f176f = i3;
        this.f177g = c0.h(a2, "base_url");
        this.f174d = c0.h(a2, "custom_js");
        this.f178h = c0.h(a2, "ad_session_id");
        this.j = c0.f(a2, "info");
        this.i = c0.h(a2, "mraid_filepath");
        this.o = c0.d(a2, IabUtils.KEY_WIDTH);
        this.p = c0.d(a2, IabUtils.KEY_HEIGHT);
        this.m = c0.d(a2, "x");
        int d2 = c0.d(a2, "y");
        this.n = d2;
        this.s = this.o;
        this.t = this.p;
        this.q = this.m;
        this.r = d2;
        k();
        f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void a(String str) {
        if (this.k) {
            new e0.a().a("Ignoring call to execute_js as WebView has been destroyed.").a(e0.f292c);
            return;
        }
        try {
            evaluateJavascript(str, null);
        } catch (IllegalStateException unused) {
            new e0.a().a("Device reporting incorrect OS version, evaluateJavascript ").a("is not available. Disabling AdColony.").a(e0.f297h);
            AdColony.disable();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ boolean a(f1 f1Var, String str) {
        Context a2 = com.adcolony.sdk.a.a();
        com.adcolony.sdk.b bVar = a2 instanceof com.adcolony.sdk.b ? (com.adcolony.sdk.b) a2 : null;
        if (bVar == null) {
            return false;
        }
        com.adcolony.sdk.a.b().c().a(bVar, f1Var, str);
        return true;
    }

    private final void a(Exception exc) {
        new e0.a().a(exc.getClass().toString()).a(" during metadata injection w/ metadata = ").a(c0.h(this.j, TtmlNode.TAG_METADATA)).a(e0.i);
        com.adcolony.sdk.c cVar = this.l;
        if (cVar == null) {
            return;
        }
        f1 b2 = c0.b();
        c0.a(b2, "id", getAdSessionId());
        new h0("AdSession.on_error", cVar.k(), b2).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(int i2, String str, String str2) {
        com.adcolony.sdk.c cVar = this.l;
        if (cVar != null) {
            f1 b2 = c0.b();
            c0.b(b2, "id", this.f173c);
            c0.a(b2, "ad_session_id", getAdSessionId());
            c0.b(b2, "container_id", cVar.c());
            c0.b(b2, "code", i2);
            c0.a(b2, Constants.IPC_BUNDLE_KEY_SEND_ERROR, str);
            c0.a(b2, "url", str2);
            new h0("WebView.on_error", cVar.k(), b2).c();
        }
        e0.a a2 = new e0.a().a("onReceivedError: ");
        if (str == null) {
            str = "WebViewErrorMessage: null description";
        }
        a2.a(str).a(e0.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(h0 h0Var, Function0<Unit> function0) {
        f1 a2 = h0Var.a();
        if (c0.d(a2, "id") == this.f173c) {
            int d2 = c0.d(a2, "container_id");
            com.adcolony.sdk.c cVar = this.l;
            if (cVar != null && d2 == cVar.c()) {
                String h2 = c0.h(a2, "ad_session_id");
                com.adcolony.sdk.c cVar2 = this.l;
                if (Intrinsics.areEqual(h2, cVar2 == null ? null : cVar2.a())) {
                    z0.b(new l(function0));
                }
            }
        }
    }

    public final void a(h0 h0Var) {
        setBounds(h0Var);
    }
}
