package com.appsgeyser.sdk.ads;

import android.graphics.Bitmap;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.utils.BannerUtils;
/* loaded from: classes2.dex */
class AdsBannerWebViewClient extends WebViewClient {
    private OnPageFinishedListener onPageFinishedListener;
    private OnPageStartedListener onPageStartedListener;

    /* loaded from: classes2.dex */
    interface OnPageFinishedListener {
        void loadFinished(WebView webView, String str);
    }

    /* loaded from: classes2.dex */
    interface OnPageStartedListener {
        boolean loadStarted(WebView webView, String str, Bitmap bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnPageFinishedListener(OnPageFinishedListener onPageFinishedListener) {
        this.onPageFinishedListener = onPageFinishedListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnPageStartedListener(OnPageStartedListener onPageStartedListener) {
        this.onPageStartedListener = onPageStartedListener;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(final WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        webView.post(new Runnable() { // from class: com.appsgeyser.sdk.ads.AdsBannerWebViewClient.1
            @Override // java.lang.Runnable
            public void run() {
                webView.setVisibility(8);
            }
        });
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        OnPageFinishedListener onPageFinishedListener = this.onPageFinishedListener;
        if (onPageFinishedListener != null) {
            onPageFinishedListener.loadFinished(webView, str);
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (!BannerUtils.isDataTextHtmlUrl(str)) {
            OnPageStartedListener onPageStartedListener = this.onPageStartedListener;
            if (onPageStartedListener == null || onPageStartedListener.loadStarted(webView, str, bitmap)) {
                super.onPageStarted(webView, str, bitmap);
                return;
            }
            return;
        }
        this.onPageStartedListener.loadStarted(webView, null, bitmap);
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_CLICK_DATA_TEXT_HTML_LOADED_IN_BANNER);
    }
}
