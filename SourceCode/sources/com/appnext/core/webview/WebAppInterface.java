package com.appnext.core.webview;

import android.content.Context;
import android.webkit.JavascriptInterface;
/* loaded from: classes.dex */
public class WebAppInterface {
    Context context;

    @JavascriptInterface
    public void destroy() {
    }

    @JavascriptInterface
    public void destroy(String str) {
    }

    @JavascriptInterface
    public String filterAds(String str) {
        return str;
    }

    @JavascriptInterface
    public int getAdCount() {
        return 0;
    }

    @JavascriptInterface
    public void gotoAppWall() {
    }

    @JavascriptInterface
    public void jsError(String str) {
    }

    @JavascriptInterface
    public void logSTP(String str, String str2) {
    }

    @JavascriptInterface
    public void notifyImpression(String str) {
    }

    @JavascriptInterface
    public void openLink(String str) {
    }

    @JavascriptInterface
    public void openResultPage(String str) {
    }

    @JavascriptInterface
    public void openStore(String str) {
    }

    @JavascriptInterface
    public void play() {
    }

    @JavascriptInterface
    public void postView(String str) {
    }

    @JavascriptInterface
    public void videoPlayed() {
    }

    public WebAppInterface(Context context) {
        this.context = context;
    }

    public WebAppInterface() {
    }

    @JavascriptInterface
    public String getAdAt(int i) {
        return "";
    }

    @JavascriptInterface
    public String init() {
        return "";
    }

    @JavascriptInterface
    public String loadAds() {
        return "";
    }
}
