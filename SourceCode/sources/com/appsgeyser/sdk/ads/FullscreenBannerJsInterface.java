package com.appsgeyser.sdk.ads;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.appsgeyser.sdk.ads.sdk.JavascriptSdkController;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.utils.WebViewScreenShooter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class FullscreenBannerJsInterface extends JavascriptSdkController {
    static String JS_INTERFACE_NAME = "AppsgeyserBanner";
    private FullScreenBanner fullScreenBanner;

    @JavascriptInterface
    public void dismissAdMobOnTimeout(String str) {
    }

    @JavascriptInterface
    public void dismissMoPubOnTimeout(String str) {
    }

    @JavascriptInterface
    public void setStatUrls(String str) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullscreenBannerJsInterface(FullScreenBanner fullScreenBanner, Context context) {
        super(context);
        this.fullScreenBanner = fullScreenBanner;
    }

    @JavascriptInterface
    public void stayAlive() {
        this.fullScreenBanner.stayAlive();
    }

    @JavascriptInterface
    public void close() {
        this.fullScreenBanner.close();
    }

    @JavascriptInterface
    public void setClickUrl(String str, String str2) {
        if (checkSecurityCode(str2, this.fullScreenBanner.getContext())) {
            this.fullScreenBanner.setClickUrl(str);
        }
    }

    @JavascriptInterface
    public String takeScreenShot() {
        return WebViewScreenShooter.takeScreenShotInBase64(this.fullScreenBanner.getWebView());
    }

    @JavascriptInterface
    public void forceOpenInNativeBrowser(boolean z) {
        this.fullScreenBanner.forceOpenInNativeBrowser(z);
    }

    @JavascriptInterface
    public void setBackKeyLocked(boolean z) {
        this.fullScreenBanner.setBackKeyLocked(z);
    }

    @JavascriptInterface
    public void trackCrossClick() {
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_CLICK_CROSS_BANNER);
    }

    @JavascriptInterface
    public void trackBannerClick() {
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_CLICK_HTML_TAP_START);
    }

    @JavascriptInterface
    public void trackTimerClick() {
        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_CLICK_TIMER_BANNER);
    }

    @JavascriptInterface
    public void showTimer(int i) {
        this.fullScreenBanner.setShowTimer(i * 1000);
    }

    @JavascriptInterface
    public void setUniqueId(String str) {
        this.fullScreenBanner.setUniqueId(str);
    }

    @JavascriptInterface
    public void saveImpressionUrl(String str) {
        this.fullScreenBanner.setImpressionUrl(str);
    }
}
