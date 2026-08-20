package com.applovin.impl.adview;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.n f4416a;

    /* renamed from: b  reason: collision with root package name */
    private final WebViewRenderProcessClient f4417b = new WebViewRenderProcessClient() { // from class: com.applovin.impl.adview.f.1
        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessResponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
        }

        @Override // android.webkit.WebViewRenderProcessClient
        public void onRenderProcessUnresponsive(WebView webView, WebViewRenderProcess webViewRenderProcess) {
            if (webView instanceof d) {
                com.applovin.impl.sdk.ad.e currentAd = ((d) webView).getCurrentAd();
                f.this.f4416a.af().a(currentAd).a(com.applovin.impl.sdk.d.b.C).a();
                f.this.f4416a.D();
                if (com.applovin.impl.sdk.v.a()) {
                    f.this.f4416a.D().e("AdWebViewRenderProcessClient", "WebView render process unresponsive for ad: " + currentAd);
                }
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(com.applovin.impl.sdk.n nVar) {
        this.f4416a = nVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebViewRenderProcessClient a() {
        return this.f4417b;
    }
}
