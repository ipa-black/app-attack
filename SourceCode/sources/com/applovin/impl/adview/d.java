package com.applovin.impl.adview;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.impl.b.i;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.exoplayer2.C;
/* loaded from: classes.dex */
public class d extends h {

    /* renamed from: c  reason: collision with root package name */
    private static WebView f4399c;

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.v f4400a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f4401b;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.sdk.d.d f4402d;

    /* renamed from: e  reason: collision with root package name */
    private com.applovin.impl.sdk.ad.e f4403e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f4404f;

    public d(e eVar, com.applovin.impl.sdk.n nVar, Context context) {
        this(eVar, nVar, context, false);
    }

    d(e eVar, com.applovin.impl.sdk.n nVar, Context context, boolean z) {
        super(context);
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        this.f4401b = nVar;
        this.f4400a = nVar.D();
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        setWebViewClient(eVar);
        setWebChromeClient(new c(eVar != null ? eVar.a() : null, nVar));
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
        if (com.applovin.impl.sdk.utils.h.i() && ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.eV)).booleanValue()) {
            setWebViewRenderProcessClient(new f(nVar).a());
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.adview.d.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.applovin.impl.adview.d.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                com.applovin.impl.sdk.v unused = d.this.f4400a;
                if (com.applovin.impl.sdk.v.a()) {
                    d.this.f4400a.b("AdWebView", "Received a LongClick event.");
                    return true;
                }
                return true;
            }
        });
    }

    private String a(String str, String str2) {
        if (StringUtils.isValidString(str)) {
            return str.replace("{SOURCE}", str2);
        }
        return null;
    }

    public static void a(final com.applovin.impl.sdk.network.i iVar, final com.applovin.impl.sdk.n nVar, final AppLovinPostbackListener appLovinPostbackListener) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.d.3
            @Override // java.lang.Runnable
            public void run() {
                String a2 = com.applovin.impl.sdk.network.i.this.a();
                d.c();
                if (d.f4399c == null) {
                    appLovinPostbackListener.onPostbackFailure(a2, -1);
                    return;
                }
                if (com.applovin.impl.sdk.network.i.this.c() != null) {
                    a2 = StringUtils.appendQueryParameters(a2, com.applovin.impl.sdk.network.i.this.c(), ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.dm)).booleanValue());
                }
                String str = "al_firePostback('" + a2 + "');";
                if (com.applovin.impl.sdk.utils.h.c()) {
                    d.f4399c.evaluateJavascript(str, null);
                } else {
                    d.f4399c.loadUrl("javascript:" + str);
                }
                appLovinPostbackListener.onPostbackSuccess(a2);
            }
        });
    }

    private void a(String str, String str2, String str3, com.applovin.impl.sdk.n nVar, com.applovin.impl.b.a aVar) {
        String str4;
        com.applovin.impl.sdk.v vVar;
        StringBuilder sb;
        String a2 = a(str3, str);
        if (StringUtils.isValidString(a2)) {
            if (aVar.c() && aVar.isOpenMeasurementEnabled() && !aVar.q()) {
                a2 = nVar.ao().a(a2);
            }
            str4 = a2;
            if (com.applovin.impl.sdk.v.a()) {
                vVar = this.f4400a;
                sb = new StringBuilder("Rendering webview for VAST ad with resourceContents : ");
                vVar.b("AdWebView", sb.append(str4).toString());
            }
            loadDataWithBaseURL(str2, str4, "text/html", null, "");
        }
        String a3 = a((String) nVar.a(com.applovin.impl.sdk.c.b.ep), str);
        if (!StringUtils.isValidString(a3)) {
            if (com.applovin.impl.sdk.v.a()) {
                this.f4400a.b("AdWebView", "Rendering webview for VAST ad with resourceURL : " + str);
            }
            loadUrl(str);
            return;
        }
        if (aVar.c() && aVar.isOpenMeasurementEnabled()) {
            a3 = nVar.ao().a(a3);
        }
        str4 = a3;
        if (com.applovin.impl.sdk.v.a()) {
            vVar = this.f4400a;
            sb = new StringBuilder("Rendering webview for VAST ad with resourceContents : ");
            vVar.b("AdWebView", sb.append(str4).toString());
        }
        loadDataWithBaseURL(str2, str4, "text/html", null, "");
    }

    private void b(com.applovin.impl.sdk.ad.e eVar) {
        Boolean n;
        Integer a2;
        loadUrl("about:blank");
        int az = this.f4403e.az();
        if (az >= 0) {
            setLayerType(az, null);
        }
        if (com.applovin.impl.sdk.utils.h.b()) {
            getSettings().setMediaPlaybackRequiresUserGesture(eVar.av());
        }
        if (com.applovin.impl.sdk.utils.h.c() && eVar.ax()) {
            setWebContentsDebuggingEnabled(true);
        }
        v ay = eVar.ay();
        if (ay != null) {
            WebSettings settings = getSettings();
            WebSettings.PluginState b2 = ay.b();
            if (b2 != null) {
                settings.setPluginState(b2);
            }
            Boolean c2 = ay.c();
            if (c2 != null) {
                settings.setAllowFileAccess(c2.booleanValue());
            }
            Boolean d2 = ay.d();
            if (d2 != null) {
                settings.setLoadWithOverviewMode(d2.booleanValue());
            }
            Boolean e2 = ay.e();
            if (e2 != null) {
                settings.setUseWideViewPort(e2.booleanValue());
            }
            Boolean f2 = ay.f();
            if (f2 != null) {
                settings.setAllowContentAccess(f2.booleanValue());
            }
            Boolean g2 = ay.g();
            if (g2 != null) {
                settings.setBuiltInZoomControls(g2.booleanValue());
            }
            Boolean h2 = ay.h();
            if (h2 != null) {
                settings.setDisplayZoomControls(h2.booleanValue());
            }
            Boolean i = ay.i();
            if (i != null) {
                settings.setSaveFormData(i.booleanValue());
            }
            Boolean j = ay.j();
            if (j != null) {
                settings.setGeolocationEnabled(j.booleanValue());
            }
            Boolean k = ay.k();
            if (k != null) {
                settings.setNeedInitialFocus(k.booleanValue());
            }
            Boolean l = ay.l();
            if (l != null) {
                settings.setAllowFileAccessFromFileURLs(l.booleanValue());
            }
            Boolean m = ay.m();
            if (m != null) {
                settings.setAllowUniversalAccessFromFileURLs(m.booleanValue());
            }
            if (com.applovin.impl.sdk.utils.h.d() && (a2 = ay.a()) != null) {
                settings.setMixedContentMode(a2.intValue());
            }
            if (!com.applovin.impl.sdk.utils.h.e() || (n = ay.n()) == null) {
                return;
            }
            settings.setOffscreenPreRaster(n.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c() {
        if (f4399c != null) {
            return;
        }
        WebView tryToCreateWebView = Utils.tryToCreateWebView(com.applovin.impl.sdk.n.Q(), "postbacks");
        f4399c = tryToCreateWebView;
        if (tryToCreateWebView == null) {
            return;
        }
        tryToCreateWebView.getSettings().setJavaScriptEnabled(true);
        f4399c.loadData("<html><head>\n<script type=\"text/javascript\">\n    window.al_firePostback = function(postback) {\n    setTimeout(function() {\n        var img = new Image();\n        img.src = postback;\n    }, 100);\n};\n</script></head>\n<body></body></html>", "text/html", C.UTF8_NAME);
        f4399c.setWebViewClient(new WebViewClient() { // from class: com.applovin.impl.adview.d.4
            @Override // android.webkit.WebViewClient
            public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                if (webView == d.f4399c) {
                    d.f4399c.destroy();
                    WebView unused = d.f4399c = null;
                    AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.d.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            d.c();
                        }
                    });
                    return true;
                }
                return true;
            }
        });
    }

    public void a(com.applovin.impl.sdk.ad.e eVar) {
        com.applovin.impl.sdk.v vVar;
        String str;
        com.applovin.impl.sdk.v vVar2;
        String str2;
        String aw;
        String str3;
        String str4;
        String aw2;
        com.applovin.impl.sdk.n nVar;
        if (this.f4404f) {
            com.applovin.impl.sdk.v.i("AdWebView", "Ad can not be loaded in a destroyed webview");
            return;
        }
        this.f4403e = eVar;
        try {
            b(eVar);
            if (Utils.isBML(eVar.getSize())) {
                setVisibility(0);
            }
            if (eVar instanceof com.applovin.impl.sdk.ad.a) {
                com.applovin.impl.sdk.ad.a aVar = (com.applovin.impl.sdk.ad.a) eVar;
                String b2 = aVar.b();
                if (!aVar.q() && aVar.isOpenMeasurementEnabled()) {
                    b2 = this.f4401b.ao().a(b2);
                }
                loadDataWithBaseURL(eVar.aw(), b2, "text/html", null, "");
                if (!com.applovin.impl.sdk.v.a()) {
                    return;
                }
                vVar = this.f4400a;
                str = "AppLovinAd rendered";
            } else if (!(eVar instanceof com.applovin.impl.b.a)) {
                return;
            } else {
                com.applovin.impl.b.a aVar2 = (com.applovin.impl.b.a) eVar;
                com.applovin.impl.b.d aO = aVar2.aO();
                if (aO != null) {
                    com.applovin.impl.b.i b3 = aO.b();
                    Uri b4 = b3.b();
                    String uri = b4 != null ? b4.toString() : "";
                    String c2 = b3.c();
                    String aS = aVar2.aS();
                    if (!StringUtils.isValidString(uri) && !StringUtils.isValidString(c2)) {
                        if (com.applovin.impl.sdk.v.a()) {
                            vVar2 = this.f4400a;
                            str2 = "Unable to load companion ad. No resources provided.";
                            vVar2.e("AdWebView", str2);
                            return;
                        }
                        return;
                    }
                    if (b3.a() == i.a.STATIC) {
                        if (com.applovin.impl.sdk.v.a()) {
                            this.f4400a.b("AdWebView", "Rendering WebView for static VAST ad");
                        }
                        String a2 = a((String) this.f4401b.a(com.applovin.impl.sdk.c.b.eo), uri);
                        if (aVar2.c() && aVar2.isOpenMeasurementEnabled() && aVar2.e()) {
                            a2 = this.f4401b.ao().a(a2);
                        }
                        loadDataWithBaseURL(eVar.aw(), a2, "text/html", null, "");
                        return;
                    } else if (b3.a() == i.a.HTML) {
                        if (!StringUtils.isValidString(c2)) {
                            if (StringUtils.isValidString(uri)) {
                                if (com.applovin.impl.sdk.v.a()) {
                                    this.f4400a.b("AdWebView", "Preparing to load HTML VAST ad resourceUri");
                                }
                                aw2 = eVar.aw();
                                nVar = this.f4401b;
                                a(uri, aw2, aS, nVar, aVar2);
                                return;
                            }
                            return;
                        }
                        String a3 = a(aS, c2);
                        if (StringUtils.isValidString(a3)) {
                            c2 = a3;
                        }
                        if (aVar2.c() && aVar2.isOpenMeasurementEnabled() && !aVar2.q()) {
                            c2 = this.f4401b.ao().a(c2);
                        }
                        if (com.applovin.impl.sdk.v.a()) {
                            this.f4400a.b("AdWebView", "Rendering WebView for HTML VAST ad with resourceContents: " + c2);
                        }
                        aw = eVar.aw();
                        str3 = "text/html";
                        str4 = "";
                        loadDataWithBaseURL(aw, c2, str3, null, str4);
                        return;
                    } else if (b3.a() != i.a.IFRAME) {
                        if (com.applovin.impl.sdk.v.a()) {
                            vVar2 = this.f4400a;
                            str2 = "Failed to render VAST companion ad of invalid type";
                            vVar2.e("AdWebView", str2);
                            return;
                        }
                        return;
                    } else if (StringUtils.isValidString(uri)) {
                        if (com.applovin.impl.sdk.v.a()) {
                            this.f4400a.b("AdWebView", "Preparing to load iFrame VAST ad resourceUri");
                        }
                        aw2 = eVar.aw();
                        nVar = this.f4401b;
                        a(uri, aw2, aS, nVar, aVar2);
                        return;
                    } else if (StringUtils.isValidString(c2)) {
                        String a4 = a(aS, c2);
                        if (StringUtils.isValidString(a4)) {
                            c2 = a4;
                        }
                        if (aVar2.c() && aVar2.isOpenMeasurementEnabled() && !aVar2.q()) {
                            c2 = this.f4401b.ao().a(c2);
                        }
                        if (com.applovin.impl.sdk.v.a()) {
                            this.f4400a.b("AdWebView", "Rendering WebView for iFrame VAST ad with resourceContents: " + c2);
                        }
                        aw = eVar.aw();
                        str3 = "text/html";
                        str4 = "";
                        loadDataWithBaseURL(aw, c2, str3, null, str4);
                        return;
                    } else {
                        return;
                    }
                } else if (!com.applovin.impl.sdk.v.a()) {
                    return;
                } else {
                    vVar = this.f4400a;
                    str = "No companion ad provided.";
                }
            }
            vVar.b("AdWebView", str);
        } catch (Throwable th) {
            throw new RuntimeException("Unable to render AppLovin ad (" + (eVar != null ? String.valueOf(eVar.getAdIdNumber()) : "null") + ") - " + th);
        }
    }

    public void a(String str) {
        a(str, (Runnable) null);
    }

    public void a(String str, Runnable runnable) {
        try {
            if (com.applovin.impl.sdk.v.a()) {
                this.f4400a.b("AdWebView", "Forwarding \"" + str + "\" to ad template");
            }
            loadUrl(str);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.v.a()) {
                this.f4400a.b("AdWebView", "Unable to forward to template", th);
            }
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f4404f = true;
        super.destroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.applovin.impl.sdk.ad.e getCurrentAd() {
        return this.f4403e;
    }

    public com.applovin.impl.sdk.d.d getStatsManagerHelper() {
        return this.f4402d;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    public void setStatsManagerHelper(com.applovin.impl.sdk.d.d dVar) {
        this.f4402d = dVar;
    }
}
