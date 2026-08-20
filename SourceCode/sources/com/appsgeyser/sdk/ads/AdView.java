package com.appsgeyser.sdk.ads;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.appsgeyser.sdk.InternalEntryPoint;
import com.appsgeyser.sdk.ads.behavior.BehaviorAcceptor;
import com.appsgeyser.sdk.ads.behavior.BehaviorVisitor;
import com.appsgeyser.sdk.ads.behavior.bannerBehaviors.AdViewBehavior;
import com.appsgeyser.sdk.configuration.Constants;
import com.appsgeyser.sdk.deviceidparser.DeviceIdParameters;
import com.appsgeyser.sdk.deviceidparser.DeviceIdParser;
import com.appsgeyser.sdk.deviceidparser.IDeviceIdParserListener;
import com.appsgeyser.sdk.server.network.OnNetworkStateChangedListener;
/* loaded from: classes2.dex */
public class AdView extends RelativeLayout implements BehaviorAcceptor {
    private static final String TAG = "AppsgeyserSDK";
    private Activity activity;
    private AdsLoader adsLoader;
    private WebView browser;
    private AdsBannerWebViewClient browserClient;
    private boolean isAdmobInitialized;
    private OnNetworkStateChangedListener networkListener;
    private String uniqueId;
    private boolean wasPausedBefore;

    public AdView(Context context) {
        super(context);
        this.wasPausedBefore = false;
        this.uniqueId = "-1";
        this.isAdmobInitialized = false;
        init();
    }

    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.wasPausedBefore = false;
        this.uniqueId = "-1";
        this.isAdmobInitialized = false;
        init();
    }

    private void init() {
        this.activity = (Activity) getContext();
        this.adsLoader = new AdsLoader();
        this.networkListener = new OnNetworkStateChangedListener(this.activity.getLocalClassName()) { // from class: com.appsgeyser.sdk.ads.AdView.1
            @Override // com.appsgeyser.sdk.server.network.OnNetworkStateChangedListener
            public void networkIsUp() {
                AdView.this.show();
                AdView.this.adsLoader.reload();
            }

            @Override // com.appsgeyser.sdk.server.network.OnNetworkStateChangedListener
            public void networkIsDown() {
                AdView.this.hide();
            }
        };
        InternalEntryPoint.getInstance().addNetworkListener(this.networkListener, getContext());
        setVisibility(8);
        if (getContext().checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0 || getContext().checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
            Log.e("AppsgeyserSDK", "You have to grant ACCESS_NETWORK_STATE and INTERNET permissions to work properly");
            return;
        }
        DeviceIdParser deviceIdParser = DeviceIdParser.getInstance();
        if (deviceIdParser.isEmpty()) {
            deviceIdParser.rescan(getContext(), new IDeviceIdParserListener() { // from class: com.appsgeyser.sdk.ads.AdView.2
                @Override // com.appsgeyser.sdk.deviceidparser.IDeviceIdParserListener
                public void onDeviceIdParametersObtained(Context context, DeviceIdParameters deviceIdParameters) {
                    AdView.this.initWithDeviceIdParameters(deviceIdParameters);
                }
            });
        } else {
            initWithDeviceIdParameters(deviceIdParser.getDeviceIdParameters());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initWithDeviceIdParameters(DeviceIdParameters deviceIdParameters) {
        WebView webView = new WebView(getContext());
        this.browser = webView;
        addView(webView, new RelativeLayout.LayoutParams(-1, -1));
        this.adsLoader.init(this, deviceIdParameters);
        AdsHeaderReceiver adsHeaderReceiver = new AdsHeaderReceiver(this, this.adsLoader);
        this.adsLoader.setAdsLoadingFinishedListener(adsHeaderReceiver);
        this.adsLoader.setHeaderReceiver(adsHeaderReceiver);
        this.browser.addJavascriptInterface(new BannerJavascriptInterface(this, this.adsLoader), "AppsgeyserBanner");
        AdsBannerWebViewClient adsBannerWebViewClient = new AdsBannerWebViewClient();
        this.browserClient = adsBannerWebViewClient;
        adsBannerWebViewClient.setOnPageFinishedListener(this.adsLoader);
        this.browserClient.setOnPageStartedListener(this.adsLoader);
        this.browser.setWebChromeClient(new WebChromeClient() { // from class: com.appsgeyser.sdk.ads.AdView.3
            @Override // android.webkit.WebChromeClient
            public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
                callback.invoke(str, true, false);
            }

            @Override // android.webkit.WebChromeClient
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                Log.d(Constants.LOG_SMALL_BANNER_JS_ERRORS_TAG, consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
                return super.onConsoleMessage(consoleMessage);
            }
        });
        this.browser.setWebViewClient(this.browserClient);
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        applyDefaultSettings();
        this.adsLoader.reload();
    }

    public void applyDefaultSettings() {
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        WebView webView = this.browser;
        if (webView != null) {
            WebSettings settings = webView.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setAllowFileAccess(true);
            settings.setGeolocationEnabled(true);
            settings.setDatabaseEnabled(true);
            settings.setDomStorageEnabled(true);
            Context context = getContext();
            context.getDir("appcache", 0).getPath();
            String path = context.getDir("databases", 0).getPath();
            String path2 = context.getDir("geolocation", 0).getPath();
            settings.setCacheMode(-1);
            settings.setDatabasePath(path);
            settings.setGeolocationDatabasePath(path2);
        }
    }

    public WebView getBrowser() {
        return this.browser;
    }

    @Override // com.appsgeyser.sdk.ads.behavior.BehaviorAcceptor
    public void acceptBehavior(BehaviorVisitor behaviorVisitor) {
        if (behaviorVisitor instanceof AdViewBehavior) {
            behaviorVisitor.visit(this);
        }
    }

    public void hide() {
        Log.d("AppsgeyserSDK", "Hiding banner");
        setVisibility(8);
        WebView webView = this.browser;
        if (webView != null) {
            webView.setWebViewClient(null);
            this.browser.loadUrl("about:blank");
        }
    }

    public void show() {
        Log.d("AppsgeyserSDK", "Showing banner");
        setVisibility(0);
        WebView webView = this.browser;
        if (webView != null) {
            webView.setWebViewClient(this.browserClient);
        }
    }

    public void switchToHtmlBanner() {
        WebView webView = this.browser;
        if (webView == null) {
            return;
        }
        webView.setVisibility(0);
    }

    public Activity getActivity() {
        return this.activity;
    }

    public void onPause() {
        if (this.browser != null) {
            post(new Runnable() { // from class: com.appsgeyser.sdk.ads.AdView.4
                @Override // java.lang.Runnable
                public void run() {
                    AdView.this.setVisibility(8);
                }
            });
            this.browser.onPause();
            this.browser.clearHistory();
            this.browser.clearCache(true);
            this.wasPausedBefore = true;
            this.adsLoader.stopLoading();
            InternalEntryPoint.getInstance().removeNetworkListener(this.networkListener);
        }
    }

    public void onResume() {
        if (this.browser == null || this.adsLoader == null) {
            return;
        }
        this.browser.onResume();
        post(new Runnable() { // from class: com.appsgeyser.sdk.ads.AdView.5
            @Override // java.lang.Runnable
            public void run() {
                AdView.this.setVisibility(8);
            }
        });
        if (this.wasPausedBefore) {
            init();
        }
    }

    public void setUniqueId(String str) {
        this.uniqueId = str;
    }

    public String getUniqueId() {
        return this.uniqueId;
    }

    public void addJsCode(String str) {
        WebView webView = this.browser;
        if (webView == null || webView.getProgress() < 100 || this.browser.getUrl() == null || this.browser.getUrl().startsWith("https://")) {
            return;
        }
        this.browser.loadUrl("javascript:(function(){ " + str + " })()");
    }
}
