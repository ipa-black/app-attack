package com.appsgeyser.sdk.webwiewclient;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
/* loaded from: classes2.dex */
public class PushWebViewClient extends SimpleWebViewClient {
    private final String defaultUrl;

    @Override // com.appsgeyser.sdk.webwiewclient.SimpleWebViewClient, android.webkit.WebViewClient
    public /* bridge */ /* synthetic */ void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    public PushWebViewClient(String str, Activity activity) {
        super(activity);
        this.defaultUrl = str;
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (proceedPageStarted(webView, str)) {
            return;
        }
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // com.appsgeyser.sdk.webwiewclient.SimpleWebViewClient, android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return super.shouldOverrideUrlLoading(webView, str) || proceedPageStarted(webView, str);
    }

    private boolean proceedPageStarted(WebView webView, String str) {
        if (!str.equals(this.defaultUrl)) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                webView.loadUrl(this.defaultUrl);
                if (this.activity.getPackageManager().resolveActivity(intent, 0) != null) {
                    this.activity.startActivity(intent);
                    return true;
                }
                return true;
            } catch (ActivityNotFoundException e2) {
                Log.e("ActivityNotFoundExceptn", "onPageStarted() :" + e2.getMessage());
            }
        }
        return false;
    }
}
