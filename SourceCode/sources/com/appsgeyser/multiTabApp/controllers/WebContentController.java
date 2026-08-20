package com.appsgeyser.multiTabApp.controllers;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.appsgeyser.multiTabApp.Constants;
import com.appsgeyser.multiTabApp.Factory;
import com.appsgeyser.multiTabApp.MainNavigationActivity;
import com.appsgeyser.multiTabApp.browser.BrowserDownloadListener;
import com.appsgeyser.multiTabApp.browser.BrowserWebChromeClient;
import com.appsgeyser.multiTabApp.browser.BrowserWebViewClient;
import com.appsgeyser.multiTabApp.browser.SimpleWebViewClient;
import com.appsgeyser.multiTabApp.javascriptinterface.JavascriptInterface;
import com.appsgeyser.multiTabApp.media.WebViewJsAudioPlayer;
import com.appsgeyser.multiTabApp.model.WidgetEntity;
import com.appsgeyser.multiTabApp.pdfreader.PdfLoader;
import com.appsgeyser.multiTabApp.plugins.PluginsLoader;
import com.appsgeyser.multiTabApp.ui.navigationwidget.INavigationWidget;
import com.appsgeyser.multiTabApp.ui.views.PdfContent;
import com.appsgeyser.multiTabApp.ui.views.TabContent;
import com.appsgeyser.multiTabApp.ui.views.WebContent;
import com.appsgeyser.sdk.AppsgeyserSDK;
import com.appsgeyser.sdk.configuration.Constants;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
/* loaded from: classes2.dex */
public class WebContentController implements ITabContentController, View.OnTouchListener {
    private static final int APPMAXCACHESIZE = 200;
    private static final long FIRST_TIMEOUT_FULLSCREEN_BANNER = 10000;
    private static final long TIMEOUT_FOR_FULLSCREEN_BANNER = 120000;
    private static long lastTimeFirtsBannerWasShown = -1;
    private static long lastTimeFullScreenBannerWasShown = -1;
    private WebView _browser;
    private PdfContent _pdfContent;
    private ProgressBar _progressBar;
    private WidgetEntity _widgetInfo;
    private boolean firstPageFinished;
    private WebContent _webContent = null;
    private String _bannerJsInjection = "";
    private MainNavigationActivity _mainActivity = null;
    private WebView popupView = null;
    private BrowserWebChromeClient mBrowserWebChromeClient = null;
    private int _tabsPadding = 0;
    private boolean firstBannerWasShown = false;

    public void showConnectionErrorDialog() {
    }

    public WebContentController(WidgetEntity widgetEntity) {
        this._widgetInfo = widgetEntity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.appsgeyser.multiTabApp.controllers.WebContentController$5  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType;

        static {
            int[] iArr = new int[TabContent.TabType.values().length];
            $SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType = iArr;
            try {
                iArr[TabContent.TabType.WEB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType[TabContent.TabType.PDF.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private void init(TabContent.TabType tabType) {
        int i = AnonymousClass5.$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType[tabType.ordinal()];
        if (i == 1) {
            this._webContent.init(this);
        } else if (i == 2) {
            this._pdfContent.init(this._widgetInfo.getLink(), new PdfLoader.PdfEventListener() { // from class: com.appsgeyser.multiTabApp.controllers.WebContentController.1
                @Override // com.appsgeyser.multiTabApp.pdfreader.PdfLoader.PdfEventListener
                public void handleEvent() {
                    WebContentController.this.showBanner(MainNavigationActivity.UserEvent.PDF_EVENT, true);
                }
            }, this._widgetInfo.getTabId());
            return;
        }
        this._webContent.setLoadingCurtainType(this._widgetInfo.getLoadingCurtainType());
        this._browser = this._webContent.getBrowser();
        this._progressBar = this._webContent.getProgressBar();
        this._browser.requestFocus(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
        this._browser.setWebViewClient(new BrowserWebViewClient(this, this._browser));
        BrowserWebChromeClient browserWebChromeClient = new BrowserWebChromeClient(this) { // from class: com.appsgeyser.multiTabApp.controllers.WebContentController.2
            @Override // android.webkit.WebChromeClient
            public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
                Message obtainMessage = webView.getHandler().obtainMessage();
                webView.requestFocusNodeHref(obtainMessage);
                obtainMessage.getData().getString("url");
                WebContentController.this._browser.removeAllViews();
                WebContentController.this.popupView = new WebView(webView.getContext());
                WebContentController.this.popupView.setWebViewClient(new SimpleWebViewClient(WebContentController.this.popupView.getContext()));
                WebSettings settings = WebContentController.this.popupView.getSettings();
                settings.setJavaScriptEnabled(true);
                settings.setDomStorageEnabled(true);
                settings.setMixedContentMode(2);
                settings.setCacheMode(-1);
                settings.setAllowFileAccess(true);
                WebContentController.this.popupView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                WebContentController.this.popupView.setWebChromeClient(new WebChromeClient() { // from class: com.appsgeyser.multiTabApp.controllers.WebContentController.2.1
                    @Override // android.webkit.WebChromeClient
                    public void onCloseWindow(WebView webView2) {
                        WebContentController.this._browser.removeView(webView2);
                        WebContentController.this.popupView = null;
                    }
                });
                WebContentController.this._browser.addView(WebContentController.this.popupView);
                WebContentController.this._browser.scrollTo(0, 0);
                ((WebView.WebViewTransport) message.obj).setWebView(WebContentController.this.popupView);
                message.sendToTarget();
                return true;
            }
        };
        this.mBrowserWebChromeClient = browserWebChromeClient;
        this._browser.setWebChromeClient(browserWebChromeClient);
        this._browser.setDownloadListener(new BrowserDownloadListener(this));
        this._browser.setOnTouchListener(this);
        this._browser.addJavascriptInterface(new JavascriptInterface(this), JavascriptInterface.JS_INTERFACE_NAME);
        this._browser.addJavascriptInterface(new WebViewJsAudioPlayer(this._browser), WebViewJsAudioPlayer.JS_INTERFACE_NAME);
        PluginsLoader.loadPlugins(this._mainActivity, this._browser);
        WebSettings settings = this._browser.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setPluginState(WebSettings.PluginState.ON);
        settings.setGeolocationEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setBuiltInZoomControls(true);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setDisplayZoomControls(false);
        settings.setMixedContentMode(2);
        settings.setDomStorageEnabled(true);
        Context applicationContext = Factory.getInstance().getMainNavigationActivity().getApplicationContext();
        String path = applicationContext.getDir("databases", 0).getPath();
        String path2 = applicationContext.getDir("geolocation", 0).getPath();
        settings.setDatabasePath(path);
        settings.setGeolocationDatabasePath(path2);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setSaveFormData(true);
        settings.setSavePassword(true);
        settings.setCacheMode(-1);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setSupportMultipleWindows(true);
        this._browser.setVerticalScrollBarEnabled(false);
        this._browser.setHorizontalScrollBarEnabled(false);
        if (this._widgetInfo.getLink().indexOf("file:///android_asset/content") == 0) {
            this._browser.setInitialScale(calculateScale());
        } else {
            settings.setLoadWithOverviewMode(true);
            settings.setUseWideViewPort(true);
            this._browser.setInitialScale(0);
        }
        if (Factory.getInstance().getWidgetsController().widgetsCount() > 1) {
            this._tabsPadding = 61;
        }
        this._bannerJsInjection = Factory.getInstance().getMainNavigationActivity().getSharedPreferences(Constants.PREFS_NAME, 0).getString(MainNavigationActivity.BANNER_JS_PARAM, "");
        this._webContent.navigate(this._widgetInfo.getLink());
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptThirdPartyCookies(this._browser, true);
        cookieManager.setAcceptCookie(true);
    }

    @Override // com.appsgeyser.multiTabApp.controllers.InjectMainNavigationController
    public void setMainNavigationActivity(MainNavigationActivity mainNavigationActivity) {
        this._mainActivity = mainNavigationActivity;
    }

    @Override // com.appsgeyser.multiTabApp.controllers.InjectMainNavigationController
    public MainNavigationActivity getMainNavigationActivity() {
        return this._mainActivity;
    }

    @Override // com.appsgeyser.multiTabApp.controllers.ITabContentController
    public View createTabContent(LayoutInflater layoutInflater, ViewGroup viewGroup, TabContent.TabType tabType) throws Exception {
        View tabContent = Factory.getInstance().getTabContent(tabType, layoutInflater, viewGroup);
        int i = AnonymousClass5.$SwitchMap$com$appsgeyser$multiTabApp$ui$views$TabContent$TabType[tabType.ordinal()];
        if (i == 1) {
            this._webContent = (WebContent) tabContent;
            init(TabContent.TabType.WEB);
        } else if (i == 2) {
            this._pdfContent = (PdfContent) tabContent;
            init(TabContent.TabType.PDF);
        }
        return tabContent;
    }

    @Override // com.appsgeyser.multiTabApp.controllers.ITabContentController
    public boolean onBackKeyDown() {
        WebView webView = this.popupView;
        if (webView != null && webView.canGoBack()) {
            this.popupView.goBack();
            return true;
        }
        WebView webView2 = this.popupView;
        if (webView2 != null && !webView2.canGoBack()) {
            this._browser.removeView(this.popupView);
            this.popupView = null;
            return true;
        } else if (this._browser.canGoBack()) {
            this._browser.goBack();
            return true;
        } else {
            return false;
        }
    }

    @Override // com.appsgeyser.multiTabApp.controllers.ITabContentController
    public WidgetEntity getWidgetInfo() {
        return this._widgetInfo;
    }

    public final WebView getWebView() {
        return this._browser;
    }

    @Override // com.appsgeyser.multiTabApp.controllers.ITabContentController
    public void destroy() {
        this._browser.destroy();
    }

    public void hideProgressBarPanel() {
        this._webContent.hideProgressBarPanel();
    }

    public void showProgressBarPanel() {
        this._webContent.showProgressBarPanel();
    }

    public void setProgressBarState(int i) {
        this._progressBar.setSecondaryProgress(i);
        this._progressBar.setProgress(i);
        if (i >= 100) {
            new Handler().postDelayed(new HandlerThread("progressFinishDelay") { // from class: com.appsgeyser.multiTabApp.controllers.WebContentController.3
                @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
                public void run() {
                    WebContentController.this._webContent.hideProgressBarPanel();
                }
            }, 300L);
        }
    }

    public INavigationWidget getNavigationWidget() {
        return this._webContent.getNavigationWidget();
    }

    public WebView getBrowser() {
        return this._webContent.getBrowser();
    }

    private int calculateScale() {
        float min;
        WindowManager windowManager = (WindowManager) Factory.getInstance().getMainNavigationActivity().getSystemService("window");
        System.out.println("dBrowserWidth = 10");
        float height = (windowManager.getDefaultDisplay().getHeight() - 50) / ((this._widgetInfo.getHeight() + 5) + this._tabsPadding);
        float width = (windowManager.getDefaultDisplay().getWidth() - 10) / this._widgetInfo.getWidth();
        if (height > 1.0f && width > 1.0f) {
            min = Math.min(height, width);
        } else {
            min = Math.min(height, width);
        }
        return (int) (min * 100.0f);
    }

    private int calculateScale(int i, int i2) {
        return (int) (Math.min(this._browser.getHeight() / i, this._browser.getWidth() / i2) * 100.0f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006f, code lost:
        if (r4.length() <= 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0075, code lost:
        if (com.appsgeyser.multiTabApp.utils.WildcardMatcher.match(r8, r4) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0077, code lost:
        r0 = (r0 + com.appsgeyser.multiTabApp.utils.FileManager.getStringFromAssetsFileWithFileName(r2.getFile(), r7._mainActivity)) + " \n ";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getInjectJSContent(java.lang.String r8) {
        /*
            r7 = this;
            com.appsgeyser.multiTabApp.model.WidgetEntity r0 = r7._widgetInfo
            java.lang.String r0 = r0.getInjectJS()
            com.appsgeyser.multiTabApp.MainNavigationActivity r1 = r7._mainActivity
            java.lang.String r0 = com.appsgeyser.multiTabApp.utils.FileManager.getStringFromAssetsFileWithFileName(r0, r1)
            com.appsgeyser.multiTabApp.model.WidgetEntity r1 = r7._widgetInfo
            java.util.ArrayList r1 = r1.getInjectScripts()
            if (r1 == 0) goto La5
            java.util.Iterator r1 = r1.iterator()
        L18:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto La5
            java.lang.Object r2 = r1.next()
            com.appsgeyser.multiTabApp.configuration.IncludeScriptConfigEntity r2 = (com.appsgeyser.multiTabApp.configuration.IncludeScriptConfigEntity) r2
            java.lang.String r3 = r2.getRegex()
            java.lang.String r4 = r2.getPattern()
            java.lang.String r5 = " \n "
            if (r3 == 0) goto L69
            int r6 = r3.length()
            if (r6 <= 0) goto L69
            boolean r3 = r8.matches(r3)
            if (r3 == 0) goto L69
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r2 = r2.getFile()
            com.appsgeyser.multiTabApp.MainNavigationActivity r3 = r7._mainActivity
            java.lang.String r2 = com.appsgeyser.multiTabApp.utils.FileManager.getStringFromAssetsFileWithFileName(r2, r3)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.StringBuilder r0 = r0.append(r5)
            java.lang.String r0 = r0.toString()
            goto L18
        L69:
            if (r4 == 0) goto L18
            int r3 = r4.length()
            if (r3 <= 0) goto L18
            boolean r3 = com.appsgeyser.multiTabApp.utils.WildcardMatcher.match(r8, r4)
            if (r3 == 0) goto L18
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r2 = r2.getFile()
            com.appsgeyser.multiTabApp.MainNavigationActivity r3 = r7._mainActivity
            java.lang.String r2 = com.appsgeyser.multiTabApp.utils.FileManager.getStringFromAssetsFileWithFileName(r2, r3)
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.StringBuilder r0 = r0.append(r5)
            java.lang.String r0 = r0.toString()
            goto L18
        La5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsgeyser.multiTabApp.controllers.WebContentController.getInjectJSContent(java.lang.String):java.lang.String");
    }

    public String getBannerInjectionJs() {
        return this._bannerJsInjection;
    }

    public void setBannerInjectionJs(String str) {
        this._bannerJsInjection = str;
        WebView webView = this._browser;
        if (webView != null && webView.getProgress() >= 100 && this._browser.getUrl() != null && !this._browser.getUrl().startsWith("https://")) {
            this._browser.loadUrl("javascript:(function(){ " + str + " })()");
        }
        SharedPreferences.Editor edit = Factory.getInstance().getMainNavigationActivity().getSharedPreferences(Constants.PREFS_NAME, 0).edit();
        edit.putString(MainNavigationActivity.BANNER_JS_PARAM, str);
        edit.commit();
    }

    public void setScaleForPageWithSize(int i, int i2) {
        this._browser.setInitialScale(calculateScale(i, i2));
    }

    public void zoomIn() {
        this._browser.zoomIn();
    }

    public void setPageRefreshJsCode(String str) {
        this._webContent.setPageRefreshJsCode(str);
    }

    @Override // com.appsgeyser.multiTabApp.controllers.ITabContentController
    public void showNavigationBars() {
        this._webContent.showNavigationBars();
    }

    public void showBanner(final MainNavigationActivity.UserEvent userEvent, final boolean z) {
        this._mainActivity.runOnUiThread(new Runnable() { // from class: com.appsgeyser.multiTabApp.controllers.WebContentController.4
            @Override // java.lang.Runnable
            public void run() {
                if (userEvent == MainNavigationActivity.UserEvent.TOUCH || userEvent == MainNavigationActivity.UserEvent.MENU_ITEM_CLICK || userEvent == MainNavigationActivity.UserEvent.PDF_EVENT || userEvent == MainNavigationActivity.UserEvent.TAB_CHANGED || userEvent == MainNavigationActivity.UserEvent.WEB_PAGES_CHANGED) {
                    long unused = WebContentController.lastTimeFullScreenBannerWasShown = System.currentTimeMillis();
                    AppsgeyserSDK.getFastTrackAdsController().showFullscreen(Constants.BannerLoadTags.ON_TIMEOUT_PASSED, Factory.getInstance().getMainNavigationActivity(), userEvent.getPlacementTag(), z);
                }
            }
        });
    }

    private boolean isFirstShownBanner() {
        if (lastTimeFirtsBannerWasShown == -1) {
            lastTimeFirtsBannerWasShown = System.currentTimeMillis();
            return false;
        } else if (this.firstBannerWasShown || System.currentTimeMillis() - lastTimeFirtsBannerWasShown <= 10000) {
            return false;
        } else {
            this.firstBannerWasShown = true;
            return true;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            showBanner(MainNavigationActivity.UserEvent.TOUCH, true);
            return false;
        }
        return false;
    }

    public void setFirstPageFinished(boolean z) {
        this.firstPageFinished = z;
    }
}
