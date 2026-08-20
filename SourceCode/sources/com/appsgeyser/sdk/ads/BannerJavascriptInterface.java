package com.appsgeyser.sdk.ads;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.ads.BannerJavascriptInterface;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.hasher.Hasher;
/* loaded from: classes2.dex */
public class BannerJavascriptInterface {
    static final String JS_INTERFACE_NAME = "AppsgeyserBanner";
    private final AdView adView;
    private final AdsLoader adsLoader;
    private String androidId;

    public BannerJavascriptInterface(AdView adView, AdsLoader adsLoader) {
        this.adView = adView;
        this.adsLoader = adsLoader;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.sdk.ads.BannerJavascriptInterface$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements Runnable {
        final /* synthetic */ String val$hash;
        final /* synthetic */ String val$jsCode;

        AnonymousClass1(String str, String str2) {
            this.val$hash = str;
            this.val$jsCode = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BannerJavascriptInterface.this.checkSecurityCode(this.val$hash)) {
                BannerJavascriptInterface.this.adView.addJsCode(this.val$jsCode);
                if (this.val$jsCode.equals("")) {
                    return;
                }
                AppsgeyserSDK.getAdditionalJsCode(new AppsgeyserSDK.OnAdditionalJsLoaded() { // from class: com.appsgeyser.sdk.ads.BannerJavascriptInterface$1$$ExternalSyntheticLambda0
                    @Override // com.appsgeyser.sdk.AppsgeyserSDK.OnAdditionalJsLoaded
                    public final void onJsLoaded(String str) {
                        BannerJavascriptInterface.AnonymousClass1.this.m159lambda$run$0$comappsgeysersdkadsBannerJavascriptInterface$1(str);
                    }
                });
                InternalEntryPoint.getInstance().setAdditionalJsCode(this.val$jsCode);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$run$0$com-appsgeyser-sdk-ads-BannerJavascriptInterface$1  reason: not valid java name */
        public /* synthetic */ void m159lambda$run$0$comappsgeysersdkadsBannerJavascriptInterface$1(String str) {
            BannerJavascriptInterface.this.adView.getBrowser().loadUrl("javascript:(function(){ " + str + " })()");
        }
    }

    @JavascriptInterface
    public void addJs(String str, String str2) {
        this.adView.post(new AnonymousClass1(str2, str));
    }

    @JavascriptInterface
    public void close() {
        this.adView.post(new Runnable() { // from class: com.appsgeyser.sdk.ads.BannerJavascriptInterface.2
            @Override // java.lang.Runnable
            public void run() {
                BannerJavascriptInterface.this.adView.hide();
            }
        });
    }

    @JavascriptInterface
    public void setClickUrl(final String str, final String str2) {
        this.adView.post(new Runnable() { // from class: com.appsgeyser.sdk.ads.BannerJavascriptInterface.3
            @Override // java.lang.Runnable
            public void run() {
                if (BannerJavascriptInterface.this.checkSecurityCode(str2)) {
                    BannerJavascriptInterface.this.adsLoader.setClickUrl(str);
                }
            }
        });
    }

    @JavascriptInterface
    public String getAndroidId(String str) {
        if (checkSecurityCode(str)) {
            return this.androidId;
        }
        return "";
    }

    @JavascriptInterface
    public void reload(final String str) {
        this.adView.post(new Runnable() { // from class: com.appsgeyser.sdk.ads.BannerJavascriptInterface.4
            @Override // java.lang.Runnable
            public void run() {
                if (BannerJavascriptInterface.this.checkSecurityCode(str)) {
                    BannerJavascriptInterface.this.adsLoader.reload();
                }
            }
        });
    }

    @JavascriptInterface
    public boolean checkSecurityCode(String str) {
        Configuration configuration = Configuration.getInstance(this.adView.getContext());
        String applicationId = configuration.getApplicationId();
        String appGuid = configuration.getAppGuid();
        if (TextUtils.isEmpty(applicationId) || TextUtils.isEmpty(appGuid)) {
            return false;
        }
        return str.equalsIgnoreCase(Hasher.md5(appGuid + applicationId));
    }

    @JavascriptInterface
    public void forceOpenInNativeBrowser(boolean z) {
        this.adsLoader.forceOpenInNativeBrowser(z);
    }

    @JavascriptInterface
    public void setUniqId(String str) {
        this.adView.setUniqueId(str);
    }

    @JavascriptInterface
    public void proceedClick(String str) {
        this.adsLoader.proceedClick(str);
    }
}
