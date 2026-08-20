package com.applovin.impl.adview;

import android.net.Uri;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appodeal.ads.AppodealNetworks;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class u extends WebViewClient {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.v f4493a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<a> f4494b;

    /* loaded from: classes.dex */
    public interface a {
        void a(t tVar);

        void b(t tVar);

        void c(t tVar);
    }

    public u(com.applovin.impl.sdk.n nVar) {
        this.f4493a = nVar.D();
    }

    private void a(WebView webView, String str) {
        if (com.applovin.impl.sdk.v.a()) {
            this.f4493a.c("WebViewButtonClient", "Processing click on ad URL \"" + str + "\"");
        }
        if (str == null || !(webView instanceof t)) {
            return;
        }
        t tVar = (t) webView;
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        String host = parse.getHost();
        String path = parse.getPath();
        a aVar = this.f4494b.get();
        if (AppodealNetworks.APPLOVIN.equalsIgnoreCase(scheme) && "com.applovin.sdk".equalsIgnoreCase(host) && aVar != null) {
            if ("/track_click".equals(path)) {
                aVar.a(tVar);
            } else if ("/close_ad".equals(path)) {
                aVar.b(tVar);
            } else if ("/skip_ad".equals(path)) {
                aVar.c(tVar);
            } else {
                if (com.applovin.impl.sdk.v.a()) {
                    this.f4493a.d("WebViewButtonClient", "Unknown URL: " + str);
                }
                if (com.applovin.impl.sdk.v.a()) {
                    this.f4493a.d("WebViewButtonClient", "Path: " + path);
                }
            }
        }
    }

    public void a(WeakReference<a> weakReference) {
        this.f4494b = weakReference;
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        a(webView, str);
        return true;
    }
}
