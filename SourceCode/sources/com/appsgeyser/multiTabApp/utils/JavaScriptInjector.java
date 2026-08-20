package com.appsgeyser.multiTabApp.utils;

import android.content.Context;
import android.os.Handler;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.widget.Toast;
import com.appsgeyser.multiTabApp.controllers.WebContentController;
/* loaded from: classes2.dex */
public class JavaScriptInjector {
    public static final String JS_INTERFACE_NAME = "AppsgeyserJSInjectorInterface";
    private final Context _context;
    private final WebContentController _webContentController;
    private final WebView _webView;
    public final String JS_INJECTION_PREFIX = "javascript:(function(){ ";
    public final String JS_INJECTION_SUFFIX = " })()";
    private final long INJECT_TRIES_INTERVAL = 200;
    private Handler _handler = new Handler();
    private final StoppableRunnable injectContentRunnable = new StoppableRunnable() { // from class: com.appsgeyser.multiTabApp.utils.JavaScriptInjector.1
        @Override // java.lang.Runnable
        public void run() {
            if (this.stop) {
                return;
            }
            String injectJSContent = JavaScriptInjector.this._webContentController.getInjectJSContent(JavaScriptInjector.this._webView.getUrl());
            String bannerInjectionJs = JavaScriptInjector.this._webContentController.getBannerInjectionJs();
            JavaScriptInjector.this._webView.loadUrl("javascript:(function(){ if(!window.jsInjectionDoneOnThisPage){" + injectJSContent + "} })()");
            JavaScriptInjector.this._webView.loadUrl("javascript:(function(){ if(!window.jsInjectionDoneOnThisPage){" + bannerInjectionJs + "} })()");
            JavaScriptInjector.this._webView.loadUrl("javascript:(function(){ if(!window.jsInjectionDoneOnThisPage) { AppsgeyserJSInjectorInterface.injectedSuccessfully(); window.jsInjectionDoneOnThisPage = true; } })()");
            JavaScriptInjector.this._handler.postDelayed(this, 200L);
        }
    };

    public void InjectJavaScript() {
    }

    /* loaded from: classes2.dex */
    private abstract class StoppableRunnable implements Runnable {
        public boolean stop;

        private StoppableRunnable() {
            this.stop = false;
        }
    }

    public JavaScriptInjector(WebView webView, WebContentController webContentController, Context context) {
        this._webView = webView;
        this._context = context;
        this._webContentController = webContentController;
        webView.addJavascriptInterface(this, JS_INTERFACE_NAME);
    }

    @JavascriptInterface
    public void injectedSuccessfully() {
        this._handler.removeCallbacks(this.injectContentRunnable);
        this.injectContentRunnable.stop = true;
    }

    @JavascriptInterface
    public void showToast(String str) {
        Toast.makeText(this._webView.getContext(), str, 0).show();
    }
}
