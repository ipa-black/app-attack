package com.adcolony.sdk;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.JavascriptInterface;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adcolony.sdk.b1;
import com.adcolony.sdk.e0;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iab.omid.library.adcolony.ScriptInjector;
import java.io.IOException;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
/* loaded from: classes.dex */
public class c1 extends b1 implements k0 {
    private i A;
    private boolean B;
    private f1 C;
    private boolean D;
    private boolean E;
    private boolean v;
    private boolean w;
    private final Object x;
    private e1 y;
    private String z;

    /* loaded from: classes.dex */
    private class a {
        public a() {
        }

        @JavascriptInterface
        public final void dispatch_messages(String str, String str2) {
            if (Intrinsics.areEqual(str2, c1.this.z)) {
                c1.this.c(str);
            }
        }

        @JavascriptInterface
        public final void enable_reverse_messaging(String str) {
            if (Intrinsics.areEqual(str, c1.this.z)) {
                c1.this.v = true;
            }
        }

        @JavascriptInterface
        public final String pull_messages(String str) {
            if (Intrinsics.areEqual(str, c1.this.z)) {
                String str2 = "[]";
                Object obj = c1.this.x;
                c1 c1Var = c1.this;
                synchronized (obj) {
                    if (c1Var.y.b() > 0) {
                        if (c1Var.getEnableMessages()) {
                            str2 = c1Var.y.toString();
                        }
                        c1Var.y = c0.a();
                    }
                    Unit unit = Unit.INSTANCE;
                }
                return str2;
            }
            return "[]";
        }

        @JavascriptInterface
        public final void push_messages(String str, String str2) {
            if (Intrinsics.areEqual(str2, c1.this.z)) {
                c1.this.c(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class b extends a {
        public b() {
            super();
        }

        @JavascriptInterface
        public final void enable_event_messaging(String str) {
            if (Intrinsics.areEqual(str, c1.this.z)) {
                c1.this.w = true;
            }
        }
    }

    /* loaded from: classes.dex */
    protected class c extends b1.b {
        public c() {
            super();
        }

        @Override // com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new l().a();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            new l().b();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return new l().a(str);
        }
    }

    /* loaded from: classes.dex */
    protected class d extends b1.c {
        public d() {
            super();
        }

        @Override // com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new l().a();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            new l().b();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return new l().a(str);
        }
    }

    /* loaded from: classes.dex */
    protected class e extends b1.d {
        public e() {
            super();
        }

        @Override // com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new j().a(str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            new l().b();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return new l().a(str);
        }
    }

    /* loaded from: classes.dex */
    protected class f extends b1.e {
        public f() {
            super(c1.this);
        }

        @Override // com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new j().a(str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            new l().b();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return new k().a(webResourceRequest);
        }
    }

    /* loaded from: classes.dex */
    protected class g extends b1.f {
        public g() {
            super();
        }

        @Override // com.adcolony.sdk.b1.b, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            new j().a(str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            new l().b();
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return new k().a(webResourceRequest);
        }
    }

    /* loaded from: classes.dex */
    public static final class h {
        private h() {
        }

        public /* synthetic */ h(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class i {

        /* renamed from: a  reason: collision with root package name */
        private final WebMessagePort[] f228a;

        public i(WebMessagePort[] webMessagePortArr) {
            this.f228a = webMessagePortArr;
        }

        public final WebMessagePort a() {
            return (WebMessagePort) ArraysKt.getOrNull(this.f228a, 1);
        }

        public final WebMessagePort b() {
            return (WebMessagePort) ArraysKt.getOrNull(this.f228a, 0);
        }
    }

    /* loaded from: classes.dex */
    private final class j {
        public j() {
        }

        public final void a(String str) {
            new l().a();
            if (str != null) {
                c1.this.d(str);
            } else {
                new e0.a().a("ADCWebViewModule: initializeEventMessaging failed due to url = null").a(e0.f296g);
            }
        }
    }

    /* loaded from: classes.dex */
    private final class k {
        public k() {
        }

        public final boolean a(WebResourceRequest webResourceRequest) {
            if (c1.this.getModuleInitialized() && webResourceRequest != null && webResourceRequest.isForMainFrame()) {
                String clickOverride = c1.this.getClickOverride();
                Uri parse = clickOverride == null ? null : Uri.parse(clickOverride);
                if (parse == null) {
                    parse = webResourceRequest.getUrl();
                }
                if (parse != null) {
                    z0.a(new Intent("android.intent.action.VIEW", parse));
                    f1 b2 = c0.b();
                    c1 c1Var = c1.this;
                    c0.a(b2, "url", parse.toString());
                    c0.a(b2, "ad_session_id", c1Var.getAdSessionId());
                    com.adcolony.sdk.c parentContainer = c1.this.getParentContainer();
                    new h0("WebView.redirect_detected", parentContainer != null ? parentContainer.k() : 0, b2).c();
                    x0 A = com.adcolony.sdk.a.b().A();
                    c1 c1Var2 = c1.this;
                    A.a(c1Var2.getAdSessionId());
                    A.c(c1Var2.getAdSessionId());
                } else {
                    new e0.a().a(Intrinsics.stringPlus("shouldOverrideUrlLoading called with null request url, with ad id: ", c1.this.h())).a(e0.i);
                }
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static final class m extends WebMessagePort.WebMessageCallback {
        m() {
        }

        @Override // android.webkit.WebMessagePort.WebMessageCallback
        public void onMessage(WebMessagePort webMessagePort, WebMessage webMessage) {
            String data;
            if (webMessage == null || (data = webMessage.getData()) == null) {
                return;
            }
            c1 c1Var = c1.this;
            List<String> split = new Regex(":").split(data, 2);
            if (split.size() == 2 && Intrinsics.areEqual(split.get(0), c1Var.z)) {
                c1Var.b(split.get(1));
            }
        }
    }

    /* loaded from: classes.dex */
    static final class n implements Runnable {
        n() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            c1.this.removeJavascriptInterface("NativeLayer");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class o implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f235b;

        o(String str) {
            this.f235b = str;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (c1.this.getEnableMessages()) {
                c1.this.a("NativeLayer.dispatch_messages(ADC3_update(" + this.f235b + "), '" + c1.this.z + "');");
            }
        }
    }

    static {
        new h(null);
    }

    public c1(Context context, int i2, h0 h0Var) {
        super(context, i2, h0Var);
        this.x = new Object();
        this.y = c0.a();
        this.z = "";
        this.B = true;
        this.C = c0.b();
    }

    private final void e(f1 f1Var) {
        WebMessagePort webMessagePort;
        if (this.B) {
            i iVar = this.A;
            if (iVar == null || (webMessagePort = iVar.b()) == null) {
                webMessagePort = null;
            } else {
                e1 a2 = c0.a();
                a2.a(f1Var);
                webMessagePort.postMessage(new WebMessage(a2.toString()));
            }
            if (webMessagePort == null) {
                new e0.a().a("Sending message before event messaging is initialized").a(e0.f296g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClickOverride() {
        AdColonyInterstitial interstitial = getInterstitial();
        String c2 = interstitial == null ? null : interstitial.c();
        if (c2 == null) {
            AdColonyAdView adView = getAdView();
            if (adView == null) {
                return null;
            }
            return adView.getClickOverride();
        }
        return c2;
    }

    private final a m() {
        return new b();
    }

    private final void o() {
        String str = "";
        synchronized (this.x) {
            if (this.y.b() > 0) {
                if (getEnableMessages()) {
                    str = this.y.toString();
                }
                this.y = c0.a();
            }
            Unit unit = Unit.INSTANCE;
        }
        z0.b(new o(str));
    }

    @Override // com.adcolony.sdk.k0
    public int getAdcModuleId() {
        return getAdc3ModuleId();
    }

    protected final /* synthetic */ boolean getEnableMessages() {
        return this.B;
    }

    protected final /* synthetic */ f1 getIab() {
        return this.C;
    }

    @Override // 
    /* renamed from: getModuleId */
    public int getAdc3ModuleId() {
        return getWebViewModuleId();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ boolean getModuleInitialized() {
        return this.D;
    }

    @Override // com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientApi21() {
        return new d();
    }

    @Override // com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientApi23() {
        return new e();
    }

    @Override // com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientApi24() {
        return new f();
    }

    @Override // com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientApi26() {
        return new g();
    }

    @Override // com.adcolony.sdk.b1
    protected /* synthetic */ WebViewClient getWebViewClientDefault() {
        return new c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.adcolony.sdk.b1
    public /* synthetic */ void i() {
        addJavascriptInterface(m(), "NativeLayer");
        com.adcolony.sdk.a.b().r().a(this);
        super.i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ boolean n() {
        return this.E;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void setEnableMessages(boolean z) {
        this.B = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void setIab(f1 f1Var) {
        this.C = f1Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ String d(f1 f1Var) {
        return Intrinsics.stringPlus("file:///", c(f1Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(String str) {
        if (this.A == null) {
            i iVar = new i(createWebMessageChannel());
            WebMessagePort b2 = iVar.b();
            if (b2 != null) {
                b2.setWebMessageCallback(new m());
            }
            postWebMessage(new WebMessage("", new WebMessagePort[]{iVar.a()}), Uri.parse(str));
            Unit unit = Unit.INSTANCE;
            this.A = iVar;
        }
    }

    @Override // com.adcolony.sdk.k0
    public void b() {
        if (!com.adcolony.sdk.a.c() || !this.D || this.v || this.w) {
            return;
        }
        o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public /* synthetic */ String c(f1 f1Var) {
        return c0.h(f1Var, "filepath");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.adcolony.sdk.b1
    public /* synthetic */ void a(h0 h0Var, int i2, com.adcolony.sdk.c cVar) {
        f1 a2 = h0Var.a();
        this.B = c0.b(a2, "enable_messages");
        if (this.C.b()) {
            this.C = c0.f(a2, "iab");
        }
        super.a(h0Var, i2, cVar);
    }

    @Override // com.adcolony.sdk.k0
    public void c() {
        if (getDestroyed()) {
            return;
        }
        l();
        z0.b(new n());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str) {
        b(c0.b(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class l {
        public l() {
        }

        public final void a() {
            if (!c1.this.getEnableMessages() || c1.this.getModuleInitialized()) {
                return;
            }
            c1.this.z = z0.a();
            f1 a2 = c0.a(c0.b(), c1.this.getInfo());
            c0.a(a2, "message_key", c1.this.z);
            c1.this.a("ADC3_init(" + c1.this.getAdcModuleId() + ',' + a2 + ");");
            c1.this.D = true;
        }

        public final void b() {
            c1.this.D = false;
        }

        public final boolean a(String str) {
            if (c1.this.getModuleInitialized()) {
                String clickOverride = c1.this.getClickOverride();
                if (clickOverride != null) {
                    str = clickOverride;
                }
                if (str != null) {
                    z0.a(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    f1 b2 = c0.b();
                    c1 c1Var = c1.this;
                    c0.a(b2, "url", str);
                    c0.a(b2, "ad_session_id", c1Var.getAdSessionId());
                    com.adcolony.sdk.c parentContainer = c1.this.getParentContainer();
                    new h0("WebView.redirect_detected", parentContainer != null ? parentContainer.k() : 0, b2).c();
                    x0 A = com.adcolony.sdk.a.b().A();
                    c1 c1Var2 = c1.this;
                    A.a(c1Var2.getAdSessionId());
                    A.c(c1Var2.getAdSessionId());
                    return true;
                }
                new e0.a().a(Intrinsics.stringPlus("shouldOverrideUrlLoading called with null request url, with ad id: ", c1.this.h())).a(e0.i);
                return true;
            }
            return false;
        }
    }

    private final void b(f1 f1Var) {
        com.adcolony.sdk.a.b().r().c(f1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c(String str) {
        for (f1 f1Var : c0.a(str).c()) {
            b(f1Var);
        }
    }

    protected /* synthetic */ void b(Exception exc) {
        new e0.a().a(exc.getClass().toString()).a(" during metadata injection w/ metadata = ").a(c0.h(getInfo(), TtmlNode.TAG_METADATA)).a(e0.i);
    }

    @Override // com.adcolony.sdk.k0
    public void a(f1 f1Var) {
        synchronized (this.x) {
            if (this.w) {
                e(f1Var);
                Unit unit = Unit.INSTANCE;
            } else {
                this.y.a(f1Var);
            }
        }
    }

    @Override // com.adcolony.sdk.k0
    public boolean a() {
        return (this.v || this.w) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ String a(String str, String str2) {
        p0 p0Var;
        if (!this.C.b()) {
            AdColonyInterstitial interstitial = getInterstitial();
            p0 p0Var2 = null;
            if (interstitial == null || Intrinsics.areEqual(c0.h(getIab(), "ad_type"), "video")) {
                p0Var = null;
            } else {
                interstitial.a(getIab());
                p0Var = interstitial.e();
            }
            if (p0Var == null) {
                AdColonyAdViewListener adColonyAdViewListener = com.adcolony.sdk.a.b().c().e().get(getAdSessionId());
                if (adColonyAdViewListener != null) {
                    adColonyAdViewListener.a(new p0(getIab(), getAdSessionId()));
                    p0Var2 = adColonyAdViewListener.f76c;
                }
            } else {
                p0Var2 = p0Var;
            }
            if (p0Var2 != null && p0Var2.d() == 2) {
                this.E = true;
                if (str2.length() > 0) {
                    try {
                        return ScriptInjector.injectScriptContentIntoHtml(com.adcolony.sdk.a.b().p().a(str2, false).toString(), str);
                    } catch (IOException e2) {
                        b(e2);
                    }
                }
            }
        }
        return str;
    }
}
