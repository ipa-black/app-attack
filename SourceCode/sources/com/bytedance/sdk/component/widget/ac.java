package com.bytedance.sdk.component.widget;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebBackForwardList;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bytedance.sdk.component.widget.Qhi;
import java.util.List;
/* compiled from: WebViewClientProxy.java */
/* loaded from: classes2.dex */
public class ac extends WebViewClient {
    private final WebViewClient Qhi;
    private final List<String> ac;
    private final Qhi.InterfaceC0203Qhi cJ;

    public ac(Qhi.InterfaceC0203Qhi interfaceC0203Qhi, WebViewClient webViewClient, List<String> list) {
        this.cJ = interfaceC0203Qhi;
        this.Qhi = webViewClient;
        this.ac = list;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return this.Qhi.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        Qhi.InterfaceC0203Qhi interfaceC0203Qhi;
        if (cJ.Qhi(this.ac, webResourceRequest.getUrl().toString()) && (interfaceC0203Qhi = this.cJ) != null) {
            interfaceC0203Qhi.Qhi();
        }
        return this.Qhi.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Qhi.InterfaceC0203Qhi interfaceC0203Qhi = this.cJ;
        if (interfaceC0203Qhi != null) {
            interfaceC0203Qhi.Qhi();
        }
        return this.Qhi.shouldOverrideUrlLoading(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        this.Qhi.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        Qhi.InterfaceC0203Qhi interfaceC0203Qhi = this.cJ;
        if (interfaceC0203Qhi != null) {
            interfaceC0203Qhi.Qhi(Qhi(webView));
        }
        this.Qhi.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        this.Qhi.onReceivedError(webView, webResourceRequest, webResourceError);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        this.Qhi.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        this.Qhi.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        this.Qhi.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.Qhi.onRenderProcessGone(webView, renderProcessGoneDetail);
    }

    private int Qhi(WebView webView) {
        try {
            WebBackForwardList copyBackForwardList = webView.copyBackForwardList();
            if (copyBackForwardList != null) {
                return copyBackForwardList.getCurrentIndex() + 1;
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }
}
