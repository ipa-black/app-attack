package com.appsgeyser.sdk.ads;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.appsgeyser.sdk.AdActivity;
import com.appsgeyser.sdk.BrowserActivity;
import com.appsgeyser.sdk.configuration.Configuration;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.deviceidparser.DeviceIdParameters;
import com.appsgeyser.sdk.server.StatController;
import com.appsgeyser.sdk.server.implementation.AppsgeyserServerClient;
import com.appsgeyser.sdk.ui.AppsgeyserProgressDialog;
import com.appsgeyser.sdk.utils.BannerUtils;
import com.appsgeyser.sdk.utils.DeviceInfoGetter;
import com.appsgeyser.sdk.utils.EndpointGetter;
import com.yandex.metrica.YandexMetrica;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class FullScreenBanner {
    public static final String FULLSCREEN_CLICKED = "fullscreen_clicked";
    private static final long NO_TIMER = -1;
    private static final String TAG = "FullScreenBanner";
    private WebView bannerView;
    private Context context;
    private DeviceIdParameters deviceIdParameters;
    private String loadTagBanner;
    private AppsgeyserProgressDialog progressDialog;
    private final Handler uiThreadHandler;
    private BannerTypes currentBannerType = BannerTypes.NO_BANNER;
    private IFullScreenBannerListener listener = null;
    private FullScreenEventListener eventListener = null;
    private String uniqueId = "-1";
    private String clickUrl = null;
    private String impressionUrl = "about:blank";
    private String bannerUrl = null;
    private boolean bannerClicked = false;
    private boolean redirect = false;
    private boolean openInNativeBrowser = true;
    private boolean backKeyLocked = true;
    private boolean ready = false;
    private boolean errorHappened = false;
    private boolean keepAliveCalled = false;
    private boolean isLoading = false;
    private boolean isFailedSend = false;
    private boolean isOnTouchFSEnabled = true;
    private boolean isActivityInForeground = true;
    private long timerDuration = -1;
    private int timesToShow = 1;
    private int currentlyShownBanners = 0;
    private final Handler handler = new Handler();

    /* loaded from: classes2.dex */
    public enum BannerTypes {
        HTML,
        NO_BANNER,
        PENDING_BANNER,
        SDK
    }

    /* loaded from: classes2.dex */
    public interface FullScreenEventListener {
        void bannerClosed();
    }

    static /* synthetic */ int access$1908(FullScreenBanner fullScreenBanner) {
        int i = fullScreenBanner.currentlyShownBanners;
        fullScreenBanner.currentlyShownBanners = i + 1;
        return i;
    }

    public FullScreenBanner(final Context context) {
        this.context = null;
        this.bannerView = null;
        this.context = context;
        this.progressDialog = new AppsgeyserProgressDialog(context);
        this.uiThreadHandler = new Handler(context.getMainLooper());
        WebView webView = new WebView(this.context);
        this.bannerView = webView;
        webView.setWebViewClient(new WebViewClient() { // from class: com.appsgeyser.sdk.ads.FullScreenBanner.1
            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView2, String str, Bitmap bitmap) {
                if (!BannerUtils.isDataTextHtmlUrl(str)) {
                    handleRedirect(webView2, str);
                    return;
                }
                handleRedirect(webView2, null);
                StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_CLICK_DATA_TEXT_HTML_LOADED_IN_BANNER);
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                FullScreenBanner.this.isLoading = false;
                if (FullScreenBanner.this.keepAliveCalled) {
                    if (FullScreenBanner.this.errorHappened) {
                        return;
                    }
                    FullScreenBanner.this.ready = true;
                    if (!FullScreenBanner.this.currentBannerType.equals(BannerTypes.SDK)) {
                        FullScreenBanner.this.currentBannerType = BannerTypes.HTML;
                        if (FullScreenBanner.this.listener != null) {
                            FullScreenBanner.this.listener.onLoadFinished(FullScreenBanner.this);
                        }
                    }
                    if (FullScreenBanner.this.currentBannerType.equals(BannerTypes.SDK)) {
                        FullScreenBanner.this.close();
                        return;
                    }
                    return;
                }
                FullScreenBanner.this.errorHappened = true;
                if (FullScreenBanner.this.listener != null) {
                    FullScreenBanner.this.listener.onAdFailedToLoad(context, FullScreenBanner.this.loadTagBanner);
                }
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                return handleRedirect(webView2, str);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, int i, String str, String str2) {
                if (FullScreenBanner.this.listener != null && FullScreenBanner.this.isLoading) {
                    if (!str2.contains(Constants.SPLASH_SERVER_DOMAIN_URL)) {
                        FullScreenBanner.this.ready = true;
                        FullScreenBanner.this.listener.onLoadFinished(FullScreenBanner.this);
                    } else if (str2.contains("img") || str2.contains("css")) {
                        FullScreenBanner.this.ready = true;
                        FullScreenBanner.this.listener.onLoadFinished(FullScreenBanner.this);
                    } else {
                        FullScreenBanner.this.listener.onAdFailedToLoad(context, FullScreenBanner.this.loadTagBanner);
                    }
                }
                FullScreenBanner.this.isLoading = false;
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView2, webResourceRequest, webResourceResponse);
                if (FullScreenBanner.this.listener != null && FullScreenBanner.this.isLoading) {
                    if (!webResourceRequest.getUrl().toString().contains(Constants.SPLASH_SERVER_DOMAIN_URL)) {
                        FullScreenBanner.this.ready = true;
                        FullScreenBanner.this.listener.onLoadFinished(FullScreenBanner.this);
                    } else if (webResourceRequest.getUrl().toString().contains("img") || webResourceRequest.getUrl().toString().contains("css")) {
                        FullScreenBanner.this.ready = true;
                        FullScreenBanner.this.listener.onLoadFinished(FullScreenBanner.this);
                    } else {
                        FullScreenBanner.this.listener.onAdFailedToLoad(context, FullScreenBanner.this.loadTagBanner);
                    }
                }
                FullScreenBanner.this.isLoading = false;
            }

            private boolean handleRedirect(WebView webView2, String str) {
                Intent intent;
                if (str == null) {
                    FullScreenBanner.this.keepAliveCalled = false;
                    FullScreenBanner.this.close();
                    return false;
                } else if (EndpointGetter.getUrlWithoutArguments(str).equalsIgnoreCase(EndpointGetter.getUrlWithoutArguments(FullScreenBanner.this.bannerUrl)) || FullScreenBanner.this.redirect || BannerUtils.isDataTextHtmlUrl(str)) {
                    return false;
                } else {
                    webView2.stopLoading();
                    FullScreenBanner.this.bannerClicked = true;
                    HashMap<String, String> hashMap = new HashMap<>();
                    hashMap.put("url", str);
                    if (FullScreenBanner.this.openInNativeBrowser) {
                        intent = new Intent(FullScreenBanner.this.context, BrowserActivity.class);
                        intent.putExtra(BrowserActivity.KEY_BROWSER_URL, str);
                        intent.putExtra(BrowserActivity.KEY_UNIQ_ID, FullScreenBanner.this.uniqueId);
                        intent.putExtra(BrowserActivity.KEY_BANNER_TYPE, BrowserActivity.BANNER_TYPE_FULLSCREEN);
                        intent.putExtra(BrowserActivity.KEY_TIMER_DURATION, FullScreenBanner.this.timerDuration);
                        intent.addFlags(268435456);
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_CLICK_REDIRECT_START, hashMap, context, true);
                    } else {
                        intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        StatController.getInstance().sendRequestAsyncByKey(StatController.KEY_CLICK_EXTERNAL_BROWSER, hashMap, context, true);
                    }
                    intent.setFlags(268435456);
                    FullScreenBanner.this.close();
                    FullScreenBanner.this.context.startActivity(intent);
                    if (!TextUtils.isEmpty(FullScreenBanner.this.clickUrl)) {
                        AppsgeyserServerClient.getInstance().sendClickInfo(FullScreenBanner.this.clickUrl, webView2.getContext());
                        YandexMetrica.reportEvent(FullScreenBanner.FULLSCREEN_CLICKED);
                    }
                    return true;
                }
            }
        });
        this.bannerView.setWebChromeClient(new WebChromeClient() { // from class: com.appsgeyser.sdk.ads.FullScreenBanner.2
            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                Log.d(Constants.LOG_FS_BANNER_JS_ERRORS_TAG, consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
                return super.onConsoleMessage(consoleMessage);
            }
        });
        this.bannerView.addJavascriptInterface(new FullscreenBannerJsInterface(this, this.context), FullscreenBannerJsInterface.JS_INTERFACE_NAME);
        this.context.getDir("appcache", 0).getPath();
        String path = this.context.getDir("geolocation", 0).getPath();
        WebSettings settings = this.bannerView.getSettings();
        settings.setCacheMode(-1);
        settings.setGeolocationDatabasePath(path);
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setAllowFileAccess(true);
        settings.setGeolocationEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDomStorageEnabled(true);
        setListener(new SimpleFullScreenBannerListener());
    }

    public void load(String str) {
        if (this.isLoading) {
            return;
        }
        this.currentlyShownBanners = 0;
        this.keepAliveCalled = false;
        this.ready = false;
        this.errorHappened = false;
        if (this.bannerUrl != null) {
            this.currentBannerType = BannerTypes.NO_BANNER;
            updateBannerUrlWithTag(str);
            loadBanner();
            return;
        }
        this.currentBannerType = BannerTypes.PENDING_BANNER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadBanner() {
        if (this.bannerUrl != null && !this.isLoading) {
            IFullScreenBannerListener iFullScreenBannerListener = this.listener;
            if (iFullScreenBannerListener != null) {
                iFullScreenBannerListener.onLoadStarted();
            }
            this.uiThreadHandler.post(new Runnable() { // from class: com.appsgeyser.sdk.ads.FullScreenBanner.3
                @Override // java.lang.Runnable
                public void run() {
                    FullScreenBanner.this.bannerView.loadUrl(FullScreenBanner.this.bannerUrl);
                }
            });
            return;
        }
        Log.e(TAG, "initialization error, can't load banner!");
    }

    public void show() {
        if (this.isActivityInForeground) {
            if (this.ready && !this.errorHappened) {
                this.progressDialog.show();
                this.handler.postDelayed(new Runnable() { // from class: com.appsgeyser.sdk.ads.FullScreenBanner.4
                    @Override // java.lang.Runnable
                    public void run() {
                        FullScreenBanner fullScreenBanner = FullScreenBanner.this;
                        fullScreenBanner.updateBannerUrlWithTag(fullScreenBanner.loadTagBanner);
                        FullScreenBanner.this.progressDialog.dismiss();
                        if (FullScreenBanner.this.currentBannerType.equals(BannerTypes.HTML) || FullScreenBanner.this.currentBannerType.equals(BannerTypes.NO_BANNER)) {
                            AdActivity.startActivity(FullScreenBanner.this.context);
                        }
                    }
                }, Constants.getFullScreenDelay());
                return;
            }
            String str = TAG;
            Log.e(str, this.ready + " " + this.errorHappened);
            Log.e(str, "banner is not ready!");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stayAlive() {
        this.keepAliveCalled = true;
    }

    public void setListener(final IFullScreenBannerListener iFullScreenBannerListener) {
        this.listener = new IFullScreenBannerListener() { // from class: com.appsgeyser.sdk.ads.FullScreenBanner.5
            @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
            public void onLoadStarted() {
                FullScreenBanner.this.isLoading = true;
                FullScreenBanner.this.isFailedSend = false;
                if (FullScreenBanner.this.currentlyShownBanners != FullScreenBanner.this.timesToShow) {
                    iFullScreenBannerListener.onLoadStarted();
                }
            }

            @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
            public void onLoadFinished(FullScreenBanner fullScreenBanner) {
                FullScreenBanner.this.isLoading = false;
                if (FullScreenBanner.this.currentlyShownBanners < FullScreenBanner.this.timesToShow) {
                    FullScreenBanner.access$1908(FullScreenBanner.this);
                    fullScreenBanner.show();
                }
            }

            @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
            public void onAdFailedToLoad(Context context, String str) {
                if (FullScreenBanner.this.currentlyShownBanners == FullScreenBanner.this.timesToShow || FullScreenBanner.this.isFailedSend) {
                    return;
                }
                FullScreenBanner.this.isFailedSend = true;
                iFullScreenBannerListener.onAdFailedToLoad(context, str);
            }

            @Override // com.appsgeyser.sdk.ads.IFullScreenBannerListener
            public void onAdHided(Context context, String str) {
                FullScreenBanner.this.currentBannerType = BannerTypes.NO_BANNER;
                if (FullScreenBanner.this.currentlyShownBanners == FullScreenBanner.this.timesToShow) {
                    iFullScreenBannerListener.onAdHided(context, str);
                }
                if (FullScreenBanner.this.currentlyShownBanners < FullScreenBanner.this.timesToShow && !FullScreenBanner.this.bannerClicked) {
                    FullScreenBanner.this.loadBanner();
                }
                FullScreenBanner.this.bannerClicked = false;
            }
        };
    }

    public void setEventListener(AdActivity adActivity) {
        this.eventListener = adActivity;
    }

    public synchronized void initWithDeviceIdParameters(DeviceIdParameters deviceIdParameters) {
        this.deviceIdParameters = deviceIdParameters;
        Configuration configuration = Configuration.getInstance(getContext());
        String str = "";
        if (deviceIdParameters != null) {
            String advId = deviceIdParameters.getAdvId();
            String lowerCase = deviceIdParameters.getLimitAdTrackingEnabled().toString().toLowerCase();
            String str2 = deviceIdParameters.getaId();
            if (!TextUtils.isEmpty(advId)) {
                str = "&advid=" + advId + "&limit_ad_tracking_enabled=" + lowerCase;
            } else {
                str = "&aid=" + str2;
            }
        }
        if (this.loadTagBanner == null) {
            this.loadTagBanner = Constants.BannerLoadTags.ON_START;
        }
        this.bannerUrl = Constants.SPLASH_SERVER_DOMAIN_URL + ("?widgetid=" + configuration.getApplicationId() + "&guid=" + configuration.getAppGuid() + "&v=2.48.s" + str + "&tlat=&tlon=&p=android&sdk=1" + DeviceInfoGetter.getDeviceInfo(this.context.getApplicationContext()) + "&load_tag_banner=" + this.loadTagBanner + "&templateversion=" + configuration.getTemplateVersion());
        if (this.currentBannerType.equals(BannerTypes.PENDING_BANNER)) {
            loadBanner();
        }
    }

    public WebView getWebView() {
        return this.bannerView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setClickUrl(String str) {
        this.clickUrl = str;
    }

    public String getClickUrl() {
        return this.clickUrl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setImpressionUrl(String str) {
        this.impressionUrl = str;
    }

    String getImpressionUrl() {
        return this.impressionUrl;
    }

    public void setBannerType(BannerTypes bannerTypes) {
        this.currentBannerType = bannerTypes;
    }

    public Context getContext() {
        return this.context;
    }

    public void setContext(Context context) {
        Context context2 = this.context;
        if (context2 == null || context2.equals(context)) {
            return;
        }
        this.context = context;
        this.progressDialog = new AppsgeyserProgressDialog(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBackKeyLocked(boolean z) {
        this.backKeyLocked = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setShowTimer(long j) {
        if (j > 0) {
            this.timerDuration = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUniqueId(String str) {
        this.uniqueId = str;
    }

    String getLoadTagBanner() {
        return this.loadTagBanner;
    }

    public void setTimesToShow(int i) {
        this.timesToShow = i;
    }

    public boolean isOnTouchFSEnabled() {
        return this.isOnTouchFSEnabled;
    }

    public void setOnTouchFSEnabled(boolean z) {
        this.isOnTouchFSEnabled = z;
    }

    void setBannerClicked(boolean z) {
        this.bannerClicked = z;
    }

    public boolean isActivityInForeground() {
        return this.isActivityInForeground;
    }

    public void setActivityInForeground(boolean z) {
        this.isActivityInForeground = z;
    }

    void skipNonHTMLBanner(String str) {
        this.isLoading = false;
        load(str);
    }

    public void close() {
        IFullScreenBannerListener iFullScreenBannerListener = this.listener;
        if (iFullScreenBannerListener != null) {
            iFullScreenBannerListener.onAdHided(this.context, this.loadTagBanner);
        }
        this.redirect = false;
        FullScreenEventListener fullScreenEventListener = this.eventListener;
        if (fullScreenEventListener != null) {
            try {
                fullScreenEventListener.bannerClosed();
                this.eventListener = null;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void forceOpenInNativeBrowser(boolean z) {
        this.openInNativeBrowser = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBannerUrlWithTag(String str) {
        String str2;
        if (this.loadTagBanner == null) {
            this.loadTagBanner = Constants.BannerLoadTags.ON_START;
        }
        if (!this.loadTagBanner.equals(str)) {
            this.loadTagBanner = str;
            Configuration configuration = Configuration.getInstance(getContext());
            this.bannerUrl = "https://splash.appsgeyser.com/?widgetid=" + configuration.getApplicationId() + "&guid=" + configuration.getAppGuid() + "&v=2.48.s";
            DeviceIdParameters deviceIdParameters = this.deviceIdParameters;
            if (deviceIdParameters != null) {
                String advId = deviceIdParameters.getAdvId();
                String lowerCase = this.deviceIdParameters.getLimitAdTrackingEnabled().toString().toLowerCase();
                String str3 = this.deviceIdParameters.getaId();
                if (!TextUtils.isEmpty(advId)) {
                    str2 = "&advid=" + advId + "&limit_ad_tracking_enabled=" + lowerCase;
                } else {
                    str2 = "&aid=" + str3;
                }
                this.bannerUrl += str2;
            }
            this.bannerUrl += "&tlat=&tlon=&p=android&sdk=1" + DeviceInfoGetter.getDeviceInfo(this.context.getApplicationContext()) + "&load_tag_banner=" + this.loadTagBanner + "&templateversion=" + configuration.getTemplateVersion();
        }
        if (!this.bannerUrl.contains("&skipAdmob=true")) {
            this.bannerUrl += "&skipAdmob=true";
        }
        if (this.bannerUrl.contains("&skipMoPub=true")) {
            return;
        }
        this.bannerUrl += "&skipMoPub=true";
    }
}
