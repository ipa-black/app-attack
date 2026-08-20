package com.ironsource.sdk.b;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ironsource.sdk.c.e;
import com.ironsource.sdk.utils.Logger;
/* loaded from: classes3.dex */
public class c extends WebViewClient {

    /* renamed from: b  reason: collision with root package name */
    private static final String f11537b = "c";

    /* renamed from: a  reason: collision with root package name */
    private final e.a f11538a;

    public c(e.a aVar) {
        this.f11538a = aVar;
    }

    private static String a(String str, String str2) {
        return "ISNAdViewWebClient | External Adunit failed to load." + str + " Status code: " + str2;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        try {
            this.f11538a.a(a("onReceivedError", String.valueOf(i)));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        try {
            this.f11538a.a(a("onReceivedErrorM", String.valueOf(webResourceError.getErrorCode())));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        super.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        try {
            this.f11538a.a(a("onReceivedHttpError", String.valueOf(webResourceResponse.getStatusCode())));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        try {
            Logger.e(f11537b, "Chromium process crashed - detail.didCrash():" + renderProcessGoneDetail.didCrash());
            this.f11538a.b(renderProcessGoneDetail.didCrash() ? "Render process was observed to crash" : "Render process was killed by the system");
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return true;
        }
    }
}
