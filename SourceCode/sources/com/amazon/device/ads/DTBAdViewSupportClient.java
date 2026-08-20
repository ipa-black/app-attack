package com.amazon.device.ads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import com.google.android.exoplayer2.C;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Locale;
/* loaded from: classes.dex */
public class DTBAdViewSupportClient extends WebViewClient {
    static final String AMAZON_APP_STORE_LINK = "https://www.amazon.com/gp/mas/dl/android?";
    static final String AMAZON_SCHEME = "amzn";
    static final String GOOGLE_PLAY_STORE_LINK = "https://play.google.com/store/apps/";
    static final String LOG_TAG = "DTBAdViewSupportClient";
    static final String MARKET_SCHEME = "market";
    static final String MOBILE_SHOPPING_SCHEME = "com.amazon.mobile.shopping";
    static final String MOBILE_SHOPPING_WEB_SCHEME = "com.amazon.mobile.shopping.web";
    Context context;
    DTBAdMRAIDController controller;
    private boolean isCrashed;

    public DTBAdViewSupportClient(Context context, DTBAdMRAIDController dTBAdMRAIDController) {
        this.context = context;
        this.controller = dTBAdMRAIDController;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        DtbLog.debug(LOG_TAG, "Should intercept Resource url: " + str);
        if (matchesLocalInjectionUrl(str)) {
            return createImageInjectionResponse(str.substring(str.lastIndexOf(47) + 1));
        }
        return super.shouldInterceptRequest(webView, str);
    }

    private boolean matchesLocalInjectionUrl(String str) {
        return ImagesContract.LOCAL.equals(Uri.parse(str.toLowerCase(Locale.US)).getScheme());
    }

    private WebResourceResponse createImageInjectionResponse(String str) {
        try {
            return new WebResourceResponse("image/png", C.UTF8_NAME, this.context.getAssets().open(str));
        } catch (IOException unused) {
            DtbLog.error(LOG_TAG, "Failed to get injection response: " + str);
            return null;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        DtbOmSdkSessionManager dtbOmSdkSessionManager;
        try {
            DtbLog.debug(LOG_TAG, "Page finished:" + str);
            if (webView instanceof DTBAdView) {
                if (str.contains("MRAID_ENV")) {
                    this.controller.onPageLoad();
                } else if (str.equals("https://c.amazon-adsystem.com/")) {
                    DTBAdMRAIDController dTBAdMRAIDController = this.controller;
                    if ((dTBAdMRAIDController instanceof DTBAdMRAIDBannerController) && (dtbOmSdkSessionManager = dTBAdMRAIDController.getDtbOmSdkSessionManager()) != null) {
                        dtbOmSdkSessionManager.stopOmAdSession();
                        WebView webView2 = (WebView) new WeakReference(this.controller.getAdView()).get();
                        if (!this.controller.getAdView().isVideo()) {
                            dtbOmSdkSessionManager.initHtmlDisplayOmAdSession(webView2, str);
                        } else {
                            dtbOmSdkSessionManager.initJavaScriptOmAdSession(webView2, str);
                        }
                        dtbOmSdkSessionManager.registerAdView(webView2);
                        dtbOmSdkSessionManager.startAdSession();
                    }
                    this.controller.onPageLoad();
                }
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute onPageFinished method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute onPageFinished method", e2);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            if (this.controller.isTwoPartExpand()) {
                return false;
            }
            return openUrl(str);
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute shouldOverrideUrlLoading method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute shouldOverrideUrlLoading method", e2);
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    @Deprecated
    public void onLoadResource(WebView webView, String str) {
        DtbLog.debug(LOG_TAG, "Load Resource:" + str);
    }

    private boolean openUrl(String str) {
        Intent intent;
        int i;
        Uri parse = Uri.parse(str);
        PackageManager packageManager = this.context.getPackageManager();
        try {
            try {
                if (MOBILE_SHOPPING_WEB_SCHEME.equals(parse.getScheme())) {
                    int indexOf = str.indexOf("//");
                    if (indexOf < 0 || (i = indexOf + 2) >= str.length()) {
                        return false;
                    }
                    AdRegistration.getCurrentActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://" + str.substring(i))));
                    this.controller.onAdLeftApplication();
                    return true;
                } else if (MOBILE_SHOPPING_SCHEME.equals(parse.getScheme())) {
                    if (packageManager.getLaunchIntentForPackage("com.amazon.mShop.android.shopping") != null) {
                        intent = new Intent("android.intent.action.VIEW");
                        intent.setData(parse);
                    } else {
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setData(parse);
                        int indexOf2 = str.indexOf("products/");
                        if (indexOf2 > 0) {
                            intent2.setData(Uri.parse("https://www.amazon.com/dp/" + str.substring(indexOf2 + 9)));
                        }
                        intent = intent2;
                    }
                    AdRegistration.getCurrentActivity().startActivity(intent);
                    this.controller.onAdLeftApplication();
                    return true;
                } else {
                    if (!"market".equals(parse.getScheme()) && !AMAZON_SCHEME.equals(parse.getScheme())) {
                        Intent intent3 = new Intent("android.intent.action.VIEW");
                        intent3.setData(parse);
                        AdRegistration.getCurrentActivity().startActivity(intent3);
                        this.controller.onAdLeftApplication();
                        return true;
                    }
                    try {
                        try {
                            Intent intent4 = new Intent("android.intent.action.VIEW");
                            intent4.setData(parse);
                            AdRegistration.getCurrentActivity().startActivity(intent4);
                            this.controller.onAdLeftApplication();
                            return true;
                        } catch (ActivityNotFoundException unused) {
                            DTBAdUtil.directAppStoreLinkToBrowser(this.controller, parse);
                            return true;
                        }
                    } catch (ActivityNotFoundException unused2) {
                        DtbLog.debug(LOG_TAG, "App stores and browsers not found");
                        return false;
                    }
                }
            } catch (NullPointerException unused3) {
                DtbLog.debug(LOG_TAG, "Current activity from AdRegistration not found");
                return false;
            }
        } catch (ActivityNotFoundException unused4) {
            DtbLog.error(LOG_TAG, "Activity not found com.amazon.mobile.shopping");
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        try {
            this.controller.onLoadError(webResourceError.getDescription().toString(), webResourceError.getErrorCode());
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute onReceivedError method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute onReceivedError method", e2);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        super.onRenderProcessGone(webView, renderProcessGoneDetail);
        StringBuilder sb = new StringBuilder("Fail to render ad due to webView crash.");
        this.isCrashed = true;
        try {
            if (this.controller.getAdView() != null) {
                String userAgentString = this.controller.getAdView().getSettings().getUserAgentString();
                String bidId = this.controller.getAdView().getBidId();
                if (!DtbCommonUtils.isNullOrEmpty(userAgentString)) {
                    sb = sb.append(String.format("webViewUserAgentInfo = %s;", userAgentString));
                }
                if (!DtbCommonUtils.isNullOrEmpty(bidId)) {
                    sb = sb.append(String.format("webViewBidId = %s;", bidId));
                }
                this.controller.getAdView().onAdRemoved();
                ViewParent parent = this.controller.getAdView().getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.controller.getAdView());
                }
                this.controller.onLoadError();
                this.controller.getAdView().cleanup();
            }
            String obj = renderProcessGoneDetail.toString();
            if (!DtbCommonUtils.isNullOrEmpty(obj)) {
                sb = sb.append(String.format("webViewErrorDetail = %s", obj.substring(0, Math.min(100, obj.length()))));
            }
            DtbLog.error(LOG_TAG, sb.toString());
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, sb.toString());
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to send crash information of corrupted webView");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, sb.toString(), e2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isCrashed() {
        return this.isCrashed;
    }
}
