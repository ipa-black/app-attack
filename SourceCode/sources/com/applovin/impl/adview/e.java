package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PointF;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.onesignal.NotificationBundleProcessor;
/* loaded from: classes.dex */
public class e extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f4411a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.sdk.v f4412b;

    /* renamed from: c  reason: collision with root package name */
    private final b f4413c;

    public e(b bVar, com.applovin.impl.sdk.n nVar) {
        this.f4411a = nVar;
        this.f4412b = nVar.D();
        this.f4413c = bVar;
    }

    private void a(PointF pointF) {
        this.f4413c.a(pointF);
    }

    private void a(Uri uri, d dVar) {
        com.applovin.impl.sdk.v vVar;
        String str;
        final String queryParameter = uri.getQueryParameter(NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_TEXT);
        if (StringUtils.isValidString(queryParameter)) {
            String queryParameter2 = uri.getQueryParameter("load_type");
            if ("external".equalsIgnoreCase(queryParameter2)) {
                if (com.applovin.impl.sdk.v.a()) {
                    this.f4412b.b("AdWebView", "Loading new page externally: " + queryParameter);
                }
                Utils.openUri(dVar.getContext(), Uri.parse(queryParameter), this.f4411a);
                com.applovin.impl.sdk.utils.k.c(this.f4413c.g(), this.f4413c.p(), this.f4413c.r());
                return;
            } else if ("internal".equalsIgnoreCase(queryParameter2)) {
                if (com.applovin.impl.sdk.v.a()) {
                    this.f4412b.b("AdWebView", "Loading new page in WebView: " + queryParameter);
                }
                dVar.loadUrl(queryParameter);
                String queryParameter3 = uri.getQueryParameter("bg_color");
                if (StringUtils.isValidString(queryParameter3)) {
                    dVar.setBackgroundColor(Color.parseColor(queryParameter3));
                    return;
                }
                return;
            } else if ("in_app".equalsIgnoreCase(queryParameter2)) {
                if (com.applovin.impl.sdk.v.a()) {
                    this.f4412b.b("AdWebView", "Loading new page in slide-up webview: " + queryParameter);
                }
                this.f4411a.ai().a(new com.applovin.impl.sdk.utils.a() { // from class: com.applovin.impl.adview.e.1
                    @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityCreated(Activity activity, Bundle bundle) {
                        if (activity instanceof AppLovinWebViewActivity) {
                            ((AppLovinWebViewActivity) activity).loadUrl(queryParameter, null);
                            com.applovin.impl.sdk.utils.k.a(e.this.f4413c.g(), e.this.f4413c.p(), e.this.f4413c.r());
                        }
                    }

                    @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityDestroyed(Activity activity) {
                        if (activity instanceof AppLovinWebViewActivity) {
                            com.applovin.impl.sdk.utils.k.b(e.this.f4413c.g(), e.this.f4413c.p(), e.this.f4413c.r());
                            e.this.f4411a.ai().b(this);
                        }
                    }
                });
                Intent intent = new Intent(this.f4411a.P(), AppLovinWebViewActivity.class);
                intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f4411a.C());
                intent.setFlags(268435456);
                this.f4411a.P().startActivity(intent);
                return;
            } else if (!com.applovin.impl.sdk.v.a()) {
                return;
            } else {
                vVar = this.f4412b;
                str = "Could not find load type in original uri";
            }
        } else if (!com.applovin.impl.sdk.v.a()) {
            return;
        } else {
            vVar = this.f4412b;
            str = "Could not find url to load from query in original uri";
        }
        vVar.e("AdWebView", str);
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.e eVar) {
        String queryParameter = uri.getQueryParameter(NotificationBundleProcessor.PUSH_MINIFIED_BUTTON_TEXT);
        if (URLUtil.isValidUrl(queryParameter)) {
            String appendQueryParameter = StringUtils.appendQueryParameter(queryParameter, "clcode", eVar.getClCode());
            this.f4411a.X().a(com.applovin.impl.sdk.network.h.o().c(appendQueryParameter).a(false).c(Boolean.parseBoolean(uri.getQueryParameter("fire_from_webview"))).a());
        } else if (com.applovin.impl.sdk.v.a()) {
            this.f4412b.e("AdWebView", "Could not find postback url to fire from query in original uri: " + uri);
        }
    }

    private void a(d dVar, Uri uri) {
        com.applovin.impl.sdk.ad.e currentAd = dVar.getCurrentAd();
        AppLovinAdView r = this.f4413c.r();
        if (r == null || currentAd == null) {
            if (com.applovin.impl.sdk.v.a()) {
                this.f4412b.e("AdWebView", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
                return;
            }
            return;
        }
        com.applovin.impl.sdk.d.d statsManagerHelper = dVar.getStatsManagerHelper();
        if (statsManagerHelper != null) {
            statsManagerHelper.b();
        }
        if (currentAd instanceof com.applovin.impl.b.a) {
            ((com.applovin.impl.b.a) currentAd).o().o();
        }
        this.f4413c.a(currentAd, r, uri, dVar.getAndClearLastClickLocation());
    }

    private void a(com.applovin.impl.b.a aVar, d dVar) {
        com.applovin.impl.b.d aO = aVar.aO();
        if (aO != null) {
            com.applovin.impl.b.m.a(aO.c(), this.f4413c.q());
            a(dVar, aO.a());
        }
    }

    private void b() {
        this.f4413c.l();
    }

    private void c() {
        this.f4413c.k();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b a() {
        return this.f4413c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x0264, code lost:
        if (r6.aR() != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0166, code lost:
        if (r6.aR() != false) goto L71;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean a(android.webkit.WebView r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.adview.e.a(android.webkit.WebView, java.lang.String):boolean");
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
        if (com.applovin.impl.sdk.v.a()) {
            this.f4412b.c("AdWebView", "Loaded resource: " + str);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        b bVar = this.f4413c;
        if (bVar != null) {
            bVar.a(webView);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        b bVar = this.f4413c;
        if (bVar != null) {
            com.applovin.impl.sdk.ad.e p = bVar.p();
            String str3 = "Received error with error code: " + i + " with description \\'" + str + "\\' for URL: " + str2;
            if (p != null) {
                this.f4411a.af().a(p).a(com.applovin.impl.sdk.d.b.y, str3).a();
            }
            if (com.applovin.impl.sdk.v.a()) {
                this.f4412b.e("AdWebView", str3 + " for ad: " + p);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        b bVar = this.f4413c;
        if (bVar != null) {
            com.applovin.impl.sdk.ad.e p = bVar.p();
            this.f4411a.af().a(p).a(com.applovin.impl.sdk.d.b.z).a();
            if (com.applovin.impl.sdk.v.a()) {
                this.f4412b.e("AdWebView", "Received HTTP error: " + webResourceResponse + "for url: " + webResourceRequest.getUrl() + " and ad: " + p);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        b bVar = this.f4413c;
        if (bVar != null) {
            com.applovin.impl.sdk.ad.e p = bVar.p();
            String str = "Received SSL error: " + sslError;
            this.f4411a.af().a(p).a(com.applovin.impl.sdk.d.b.B, str).a();
            if (com.applovin.impl.sdk.v.a()) {
                this.f4412b.e("AdWebView", str + " for ad: " + p);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        AppLovinBroadcastManager.getInstance(webView.getContext()).sendBroadcast(new Intent("com.applovin.render_process_gone"), null);
        if (this.f4413c == null) {
            return true;
        }
        com.applovin.impl.sdk.v.i("AdWebView", "Render process gone for ad: " + this.f4413c.p() + ". Process did crash: " + renderProcessGoneDetail.didCrash());
        com.applovin.impl.sdk.ad.e p = this.f4413c.p();
        if (p != null) {
            this.f4411a.af().a(p).a(com.applovin.impl.sdk.d.b.A).a();
        }
        if (((Boolean) this.f4411a.a(com.applovin.impl.sdk.c.b.eQ)).booleanValue()) {
            if (renderProcessGoneDetail.didCrash() && ((Boolean) this.f4411a.a(com.applovin.impl.sdk.c.b.eS)).booleanValue()) {
                throw new RuntimeException("Render process crashed. This is likely caused by a crash in an AppLovin ad with ID: " + (p != null ? String.valueOf(p.getAdIdNumber()) : "null"));
            } else if (webView != null && webView.equals(this.f4413c.s())) {
                this.f4413c.f();
                AppLovinAdSize b2 = this.f4413c.b();
                if (Utils.isBML(b2)) {
                    this.f4413c.a(b2);
                    this.f4413c.e();
                }
            }
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        Uri url = webResourceRequest.getUrl();
        if (url != null) {
            return a(webView, url.toString());
        }
        if (com.applovin.impl.sdk.v.a()) {
            this.f4412b.e("AdWebView", "No url found for request");
            return false;
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return a(webView, str);
    }
}
