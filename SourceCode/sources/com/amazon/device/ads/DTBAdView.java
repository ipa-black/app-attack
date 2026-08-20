package com.amazon.device.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.ScrollView;
import androidx.core.app.NotificationCompat;
import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import com.amazon.device.ads.DTBAdView;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class DTBAdView extends WebView {
    static final String ADDITIONAL_WEBVIEW_METRICS = "additional_webview_metric";
    static final String AD_INFO_FEATURE = "webviewAdInfo_feature";
    public static final String AMAZON_AD_INFO = "amazon_ad_info";
    static final String AMAZON_BRIDGE = "amzn_bridge";
    private static final String AMAZON_INFO = "{bidID:'%s',aaxHost:'%s'}";
    public static final String BID_HTML = "bid_html_template";
    public static final String BID_IDENTIFIER = "bid_identifier";
    private static final String ENV_TEMPLATE = "window.MRAID_ENV={version:'%s',sdk:'%s',sdkVersion:'%s',appId:'%s',ifa:'%s',limitAdTracking:%b,coppa:%b,impFired:true};";
    private static final String ENV_TEMPLATE_INFO = "window.MRAID_ENV={version:'%s',sdk:'%s',sdkVersion:'%s',appId:'%s',ifa:'%s',limitAdTracking:%b,coppa:%b,amznAdInfo:%s,impFired:true};";
    public static final String EVENT_SERVER_PARAMETER = "event_server_parameter";
    public static final String EXPECTED_HEIGHT = "expected_height";
    public static final String EXPECTED_WIDTH = "expected_width";
    public static final String HOSTNAME_IDENTIFIER = "hostname_identifier";
    static final String LOG_TAG = "DTBAdView";
    static final String MRAID_IDENTIFIER = "MRAID_ENV";
    public static final String REQUEST_QUEUE = "amazon_request_queue";
    public static final String SMARTBANNER_STATE = "smart_banner_state";
    public static final String START_LOAD_TIME = "start_load_time";
    public static final String VIDEO = "video_flag";
    static final String VIDEO_COMPLETE_EVENT = "AD_VIDEO_PLAYER_COMPLETED";
    static final String VIDEO_EVENT_JSON_SUBTYPE = "subtype";
    static final String VIDEO_EVENT_JS_COMMAND_TYPE = "apsvid";
    private String bidId;
    private DTBAdMRAIDController controller;
    private int exposurePercent;
    ViewTreeObserver.OnGlobalFocusChangeListener focusChangeListener;
    ViewTreeObserver.OnGlobalLayoutListener globalLayoutListener;
    private String hostname;
    private boolean ignoreDetachment;
    private boolean isFirstDisplay;
    private boolean isVideo;
    private boolean isVisible;
    private boolean localOnly;
    ViewTreeObserver.OnScrollChangedListener scrollChangeListener;
    private boolean scrollEnabled;
    private long startTime;
    DTBAdViewSupportClient supportClient;
    private long timeClicked;
    private long timePressed;
    private WebBridge webBridge;

    public DTBAdView(Context context, DTBAdInterstitialListener dTBAdInterstitialListener) {
        super(context);
        this.scrollEnabled = true;
        this.ignoreDetachment = false;
        this.isFirstDisplay = true;
        this.isVisible = false;
        this.exposurePercent = -1;
        this.localOnly = WebResourceOptions.isLocalSourcesOnly();
        CookieManager.getInstance().setAcceptCookie(true);
        try {
            this.controller = new DTBAdMRAIDInterstitialController(this, dTBAdInterstitialListener);
            commonInit();
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdView class with DTBAdInterstitialListener");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to initialize DTBAdView class with DTBAdInterstitialListener", e2);
        }
    }

    public DTBAdView(Context context, DTBAdBannerListener dTBAdBannerListener) {
        super(context);
        this.scrollEnabled = true;
        this.ignoreDetachment = false;
        this.isFirstDisplay = true;
        this.isVisible = false;
        this.exposurePercent = -1;
        this.localOnly = WebResourceOptions.isLocalSourcesOnly();
        CookieManager.getInstance().setAcceptCookie(true);
        try {
            this.controller = new DTBAdMRAIDBannerController(this, dTBAdBannerListener);
            commonInit();
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdView class with DTBAdBannerListener");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to initialize DTBAdView class with DTBAdBannerListener", e2);
        }
    }

    public DTBAdView(Context context, DTBAdExpandedListener dTBAdExpandedListener) {
        this(context, dTBAdExpandedListener, 0);
    }

    public DTBAdView(Context context, DTBAdExpandedListener dTBAdExpandedListener, int i) {
        super(context);
        this.scrollEnabled = true;
        this.ignoreDetachment = false;
        this.isFirstDisplay = true;
        this.isVisible = false;
        this.exposurePercent = -1;
        this.localOnly = WebResourceOptions.isLocalSourcesOnly();
        CookieManager.getInstance().setAcceptCookie(true);
        try {
            DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController = new DTBAdMRAIDExpandedController(this);
            this.controller = dTBAdMRAIDExpandedController;
            dTBAdMRAIDExpandedController.setMasterController(DTBAdMRAIDBannerController.findControllerByIndex(i));
            dTBAdExpandedListener.onCreateExpandedController((DTBAdMRAIDExpandedController) this.controller);
            commonInit();
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to initialize DTBAdView class with DTBAdExpandedListener");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to initialize DTBAdView class with DTBAdExpandedListener", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setIgnoreDetachment() {
        this.ignoreDetachment = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
            getViewTreeObserver().removeOnGlobalLayoutListener(this.globalLayoutListener);
            getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangeListener);
            getViewTreeObserver().removeOnGlobalFocusChangeListener(this.focusChangeListener);
            DTBAdMRAIDController controller = getController();
            if (!(controller instanceof DTBAdMRAIDBannerController) || controller.getDtbOmSdkSessionManager() == null) {
                return;
            }
            controller.getDtbOmSdkSessionManager().stopOmAdSession();
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute onDetachedFromWindow method in DTBAdView class");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute onDetachedFromWindow method in DTBAdView class", e2);
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            getViewTreeObserver().addOnGlobalLayoutListener(this.globalLayoutListener);
            getViewTreeObserver().addOnGlobalFocusChangeListener(this.focusChangeListener);
            getViewTreeObserver().addOnScrollChangedListener(this.scrollChangeListener);
            DTBAdMRAIDController controller = getController();
            if (controller != null) {
                controller.onAdOpened(this);
            }
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute onAttachedToWindow method in DTBAdView class");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute onAttachedToWindow method in DTBAdView class", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void cleanup() {
        this.controller.adView = null;
        this.controller.customButtonListener = null;
        this.controller = null;
    }

    private void commonInit() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setAllowContentAccess(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAllowFileAccess(false);
        getSettings().setLoadsImagesAutomatically(true);
        getSettings().setMediaPlaybackRequiresUserGesture(false);
        if (AdRegistration.isTestMode()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        getSettings().setBlockNetworkImage(false);
        DTBAdViewSupportClient dTBAdViewSupportClient = new DTBAdViewSupportClient(getContext(), this.controller);
        this.supportClient = dTBAdViewSupportClient;
        setWebViewClient(dTBAdViewSupportClient);
        setScrollEnabled(false);
        WebBridge webBridge = new WebBridge();
        this.webBridge = webBridge;
        addJavascriptInterface(webBridge, AMAZON_BRIDGE);
        WebResourceService.init();
        this.globalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.amazon.device.ads.DTBAdView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                DTBAdView.this.verifyIsVisible();
            }
        };
        this.focusChangeListener = new ViewTreeObserver.OnGlobalFocusChangeListener() { // from class: com.amazon.device.ads.DTBAdView.2
            @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
            public void onGlobalFocusChanged(View view, View view2) {
                DTBAdView.this.verifyIsVisible();
            }
        };
        this.scrollChangeListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.amazon.device.ads.DTBAdView.3
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                DTBAdView.this.verifyIsVisible();
            }
        };
        setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads.DTBAdView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return DTBAdView.this.m61lambda$commonInit$0$comamazondeviceadsDTBAdView(view, motionEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$commonInit$0$com-amazon-device-ads-DTBAdView  reason: not valid java name */
    public /* synthetic */ boolean m61lambda$commonInit$0$comamazondeviceadsDTBAdView(View view, MotionEvent motionEvent) {
        return detectAdClick(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVisible() {
        return this.isVisible;
    }

    private void loadLocalFile(String str, StringBuilder sb) {
        if (!this.localOnly) {
            try {
                String loadFile = WebResourceService.getInstance().loadFile(str);
                if (loadFile != null) {
                    sb.append("<script>").append(loadFile).append("</script>");
                    return;
                }
            } catch (Exception unused) {
                DtbLog.error(LOG_TAG, "Failed to read local file");
            }
        }
        sb.append("<script>");
        try {
            InputStream open = getContext().getAssets().open(str + ".js");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine.trim()).append("\n");
            }
            bufferedReader.close();
            open.close();
        } catch (Exception unused2) {
            DtbLog.error("Error reading file:" + str);
        }
        sb.append("</script>");
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.isFirstDisplay) {
            if (DTBTimeTrace.getInstance() != null && AdRegistration.isTestMode()) {
                DTBTimeTrace.getInstance().addPhase(DTBTimeTrace.TIMETRACE_AD_DISPLAY_SUCCEEDED);
                DTBTimeTrace.getInstance().logTrace();
            }
            DTBAdMRAIDController dTBAdMRAIDController = this.controller;
            if (dTBAdMRAIDController instanceof DTBAdViewDisplayListener) {
                ((DTBAdViewDisplayListener) dTBAdMRAIDController).onInitialDisplay();
            }
            this.isFirstDisplay = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void verifyIsVisible() {
        if (getParent() == null || getVisibility() != 0) {
            if (this.isVisible) {
                DTBAdMRAIDController dTBAdMRAIDController = this.controller;
                if (dTBAdMRAIDController != null) {
                    dTBAdMRAIDController.onViewabilityChanged(false);
                }
                setIsVisible(false);
                return;
            }
            return;
        }
        Activity currentActivity = AdRegistration.getCurrentActivity();
        if (currentActivity == null) {
            if (this.isVisible) {
                DTBAdMRAIDController dTBAdMRAIDController2 = this.controller;
                if (dTBAdMRAIDController2 != null) {
                    dTBAdMRAIDController2.onViewabilityChanged(false);
                }
                setIsVisible(false);
                return;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) currentActivity.findViewById(16908290);
        if (viewGroup == null) {
            if (this.isVisible) {
                DTBAdMRAIDController dTBAdMRAIDController3 = this.controller;
                if (dTBAdMRAIDController3 != null) {
                    dTBAdMRAIDController3.onViewabilityChanged(false);
                }
                setIsVisible(false);
                return;
            }
            return;
        }
        int[] iArr = new int[2];
        viewGroup.getLocationInWindow(iArr);
        int i = iArr[0];
        Rect rect = new Rect(i, iArr[1], viewGroup.getWidth() + i, iArr[1] + viewGroup.getHeight());
        int[] iArr2 = new int[2];
        getLocationInWindow(iArr2);
        int i2 = iArr2[0];
        Rect rect2 = new Rect(i2, iArr2[1], getWidth() + i2, iArr2[1] + getHeight());
        if (!rect.contains(rect2) && !Rect.intersects(rect, rect2)) {
            if (this.isVisible) {
                DTBAdMRAIDController dTBAdMRAIDController4 = this.controller;
                if (dTBAdMRAIDController4 != null) {
                    dTBAdMRAIDController4.onViewabilityChanged(false);
                }
                setIsVisible(false);
                DtbLog.debug("SET MRAID Visible false because of root");
            }
        } else {
            ScrollView scrollViewParent = getScrollViewParent();
            if (scrollViewParent != null) {
                int[] iArr3 = new int[2];
                scrollViewParent.getLocationInWindow(iArr3);
                int i3 = iArr3[0];
                Rect rect3 = new Rect(i3, iArr3[1], scrollViewParent.getWidth() + i3, iArr3[1] + scrollViewParent.getHeight());
                if (!Rect.intersects(rect2, rect3) && this.isVisible) {
                    DTBAdMRAIDController dTBAdMRAIDController5 = this.controller;
                    if (dTBAdMRAIDController5 != null) {
                        dTBAdMRAIDController5.onViewabilityChanged(false);
                    }
                    setIsVisible(false);
                    DtbLog.debug("SET MRAID Visible false because of scroll ");
                } else if (Rect.intersects(rect2, rect3) && !this.isVisible) {
                    DTBAdMRAIDController dTBAdMRAIDController6 = this.controller;
                    if (dTBAdMRAIDController6 != null) {
                        dTBAdMRAIDController6.onViewabilityChanged(true);
                    }
                    setIsVisible(true);
                    DtbLog.debug("SET MRAID Visible true because of scroll ");
                }
            } else {
                DTBAdMRAIDController dTBAdMRAIDController7 = this.controller;
                if (dTBAdMRAIDController7 != null && !this.isVisible) {
                    dTBAdMRAIDController7.onViewabilityChanged(true);
                }
                setIsVisible(true);
            }
        }
        if (this.isVisible) {
            computeExposure();
        }
    }

    void computeExposure() {
        computeExposure(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void computeExposure(boolean z) {
        ScrollView scrollViewParent = getScrollViewParent();
        if (scrollViewParent != null) {
            computeExposureInScrollView(scrollViewParent, z);
            return;
        }
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        int i = iArr[0];
        Rect rect = new Rect(i, iArr[1], getWidth() + i, iArr[1] + getHeight());
        if (this.controller != null) {
            computeExposureInRootView(z);
            this.controller.onPositionChanged(rect);
        }
    }

    void computeExposureInRootView() {
        computeExposureInRootView(false);
    }

    void computeExposureInRootView(boolean z) {
        ViewGroup viewGroup;
        View view = (View) getParent();
        Activity activity = view != null ? DTBAdUtil.getActivity(view) : DTBAdUtil.getActivity(this);
        if (activity == null || (viewGroup = (ViewGroup) activity.findViewById(16908290)) == null) {
            return;
        }
        int[] iArr = new int[2];
        viewGroup.getLocationInWindow(iArr);
        int i = iArr[0];
        Rect rect = new Rect(i, iArr[1], viewGroup.getWidth() + i, iArr[1] + viewGroup.getHeight());
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr2);
        int i2 = iArr2[0];
        Rect rect2 = new Rect(i2, iArr2[1], getWidth() + i2, iArr2[1] + getHeight());
        float width = getWidth() * getHeight();
        if (rect2.intersect(rect)) {
            int i3 = (int) (((((rect2.right - rect2.left) * (rect2.bottom - rect2.top)) * 100.0d) / width) + 0.5d);
            if (i3 != this.exposurePercent || z) {
                this.exposurePercent = i3;
                this.controller.fireExposureChange(i3, rect2);
            }
        } else if (this.exposurePercent != 0 || z) {
            this.exposurePercent = 0;
            rect2.top = rect2.bottom;
            this.controller.fireExposureChange(this.exposurePercent, rect2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getStartTime() {
        return this.startTime;
    }

    private ScrollView getScrollViewParent() {
        View view = this;
        while (true) {
            ViewParent parent = view.getParent();
            if (!(parent instanceof ViewGroup)) {
                return null;
            }
            if (parent instanceof ScrollView) {
                return (ScrollView) parent;
            }
            view = (View) parent;
        }
    }

    private void computeExposureInScrollView(ScrollView scrollView, boolean z) {
        ViewGroup viewGroup;
        Activity activity = DTBAdUtil.getActivity((View) getParent());
        if (activity == null || (viewGroup = (ViewGroup) activity.findViewById(16908290)) == null) {
            return;
        }
        int[] iArr = new int[2];
        viewGroup.getLocationInWindow(iArr);
        int i = iArr[0];
        Rect rect = new Rect(i, iArr[1], viewGroup.getWidth() + i, iArr[1] + viewGroup.getHeight());
        int[] iArr2 = new int[2];
        getLocationInWindow(iArr2);
        float width = getWidth() * getHeight();
        int i2 = iArr2[0];
        Rect rect2 = new Rect(i2, iArr2[1], getWidth() + i2, iArr2[1] + getHeight());
        if (scrollView == null) {
            rect2.intersect(rect);
        } else {
            int[] iArr3 = new int[2];
            scrollView.getLocationInWindow(iArr3);
            int i3 = iArr3[0];
            Rect rect3 = new Rect(i3, iArr3[1], scrollView.getWidth() + i3, iArr3[1] + scrollView.getHeight());
            rect3.intersect(rect);
            rect2.intersect(rect3);
        }
        int i4 = width != 0.0f ? (int) ((((rect2.right - rect2.left) * (rect2.bottom - rect2.top)) * 100.0f) / width) : 0;
        if (i4 != this.exposurePercent || z) {
            this.exposurePercent = i4;
            this.controller.fireExposureChange(i4, rect2);
            this.controller.setCurrentPositionProperty();
        }
    }

    private void setIsVisible(boolean z) {
        this.isVisible = z;
        if (z) {
            return;
        }
        this.exposurePercent = -1;
        DTBAdMRAIDController dTBAdMRAIDController = this.controller;
        if (dTBAdMRAIDController != null) {
            dTBAdMRAIDController.fireExposureChange(0, new Rect(0, 0, 0, 0));
        }
    }

    public void fetchAd(Map<String, Object> map) {
        fetchAd((String) null, map);
    }

    public void fetchAd(String str, Map<String, Object> map) {
        try {
            Bundle initializeEmptyBundle = DtbCommonUtils.initializeEmptyBundle();
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                if (value instanceof String) {
                    initializeEmptyBundle.putString(entry.getKey(), (String) value);
                } else if (value instanceof Boolean) {
                    initializeEmptyBundle.putBoolean(entry.getKey(), ((Boolean) value).booleanValue());
                } else if (value instanceof Integer) {
                    initializeEmptyBundle.putInt(entry.getKey(), ((Integer) value).intValue());
                } else if (value instanceof Long) {
                    initializeEmptyBundle.putLong(entry.getKey(), ((Long) value).longValue());
                }
            }
            fetchAd(str, initializeEmptyBundle);
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute fetchAd method with map bundle");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute fetchAd method with map bundle", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getBidId() {
        return this.bidId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getHostname() {
        return this.hostname;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isVideo() {
        return this.isVideo;
    }

    public void fetchAd(String str) {
        fetchAd(str, (Bundle) null);
    }

    public void fetchAd(Bundle bundle) {
        fetchAd((String) null, bundle);
    }

    public void fetchAd(String str, Bundle bundle) {
        StringBuilder append;
        if (str == null) {
            try {
                str = bundle.getString(BID_HTML, null);
            } catch (RuntimeException e2) {
                DtbLog.error(LOG_TAG, "Fail to execute fetchAd method with bundle");
                APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute fetchAd method with bundle", e2);
                return;
            }
        }
        if (bundle != null) {
            DTBAdMRAIDController dTBAdMRAIDController = this.controller;
            if (dTBAdMRAIDController instanceof DTBAdMRAIDBannerController) {
                DTBAdBannerListener dTBAdBannerListener = ((DTBAdMRAIDBannerController) dTBAdMRAIDController).bannerListener;
                int i = bundle.getInt(EXPECTED_WIDTH, 0);
                int i2 = bundle.getInt(EXPECTED_HEIGHT, 0);
                if (i2 > 0 && i > 0 && (dTBAdBannerListener instanceof DTBExpectedSizeProvider)) {
                    DTBExpectedSizeProvider dTBExpectedSizeProvider = (DTBExpectedSizeProvider) dTBAdBannerListener;
                    dTBExpectedSizeProvider.setExpectedWidth(i);
                    dTBExpectedSizeProvider.setExpectedHeight(i2);
                }
            }
        }
        if (DTBMetricsConfiguration.getInstance().isFeatureEnabled(AD_INFO_FEATURE) && bundle == null) {
            bundle = new Bundle();
            getAdInfo(str, bundle);
            bundle.putString(AMAZON_AD_INFO, String.format(AMAZON_INFO, bundle.getString(BID_IDENTIFIER), bundle.getString(HOSTNAME_IDENTIFIER)));
        }
        if (bundle != null) {
            this.bidId = bundle.getString(BID_IDENTIFIER);
            this.hostname = bundle.getString(HOSTNAME_IDENTIFIER);
            this.isVideo = bundle.getBoolean(VIDEO);
        }
        this.startTime = new Date().getTime();
        StringBuilder sb = new StringBuilder();
        sb.append("<!DOCTYPE html><html><head>");
        sb.append("<script>");
        sb.append(getEnvironment(bundle));
        sb.append("</script>");
        loadLocalFile("aps-mraid", sb);
        loadLocalFile("dtb-m", sb);
        if (DtbOmSdkSessionManager.getFeatureEnableFlag()) {
            loadLocalFile("omsdk-v1", sb);
        }
        sb.append("</head>");
        sb.append("<body style='margin:0;padding:0;'>");
        sb.append(str);
        sb.append("</body></html>");
        if (DTBMetricsConfiguration.getInstance().isFeatureEnabled(ADDITIONAL_WEBVIEW_METRICS)) {
            StringBuilder sb2 = new StringBuilder("Creative Rendering started");
            if (getController() instanceof DTBAdMRAIDBannerController) {
                append = sb2.append(String.format(" bannerCreativeBidId = %s", this.bidId));
            } else {
                append = sb2.append(String.format(" interstitialCreativeBidId = %s", this.bidId));
            }
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.LOG, append.toString());
        }
        loadDataWithBaseURL("https://c.amazon-adsystem.com/", sb.toString(), "text/html", C.UTF8_NAME, null);
    }

    void getAdInfo(String str, Bundle bundle) {
        if (str == null || !str.contains("amzn.dtb.loadAd")) {
            return;
        }
        Matcher matcher = Pattern.compile("amzn.dtb.loadAd\\(\\\".*\\\", \\\"(.*)\\\", \\\"(.*)\\\".*isv: (\\w+)").matcher(str);
        if (!matcher.find() || matcher.groupCount() < 3) {
            return;
        }
        bundle.putString(BID_IDENTIFIER, matcher.group(1));
        bundle.putString(HOSTNAME_IDENTIFIER, matcher.group(2));
        bundle.putBoolean(VIDEO, Boolean.parseBoolean(matcher.group(3)));
    }

    public void fetchAdWithLocation(String str) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("<script>");
            sb.append(getEnvironment(null));
            sb.append("</script>");
            loadLocalFile("aps-mraid", sb);
            sb.append("<script>");
            sb.append("window.location=\"").append(str).append("\";");
            sb.append("</script>");
            loadDataWithBaseURL("https://c.amazon-adsystem.com/", sb.toString(), "text/html", C.UTF8_NAME, null);
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute fetchAdWithLocation method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Fail to execute fetchAdWithLocation method", e2);
        }
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class WebBridge {
        Exception execException;

        WebBridge() {
        }

        Exception getExecutionException() {
            return this.execException;
        }

        @JavascriptInterface
        public void postMessage(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has(SessionDescription.ATTR_TYPE)) {
                    String string = jSONObject.getString(SessionDescription.ATTR_TYPE);
                    if (NotificationCompat.CATEGORY_SERVICE.equals(string)) {
                        handleServiceCall(jSONObject);
                        return;
                    } else if ("mraid".equals(string)) {
                        handleMraidCommand(jSONObject);
                        return;
                    } else if (DTBAdView.VIDEO_EVENT_JS_COMMAND_TYPE.equals(string)) {
                        handleVideoEvent(jSONObject);
                        return;
                    } else {
                        return;
                    }
                }
                DtbLog.error("Unrecognized bridge call");
            } catch (JSONException e2) {
                DtbLog.debug(DTBAdView.LOG_TAG, "JSON conversion failed:" + e2);
            }
        }

        void handleVideoEvent(JSONObject jSONObject) throws JSONException {
            if (!DTBAdView.VIDEO_COMPLETE_EVENT.equals(jSONObject.getString(DTBAdView.VIDEO_EVENT_JSON_SUBTYPE)) || DTBAdView.this.controller == null) {
                return;
            }
            DTBAdView.this.controller.onVideoCompleted();
        }

        void handleServiceCall(JSONObject jSONObject) throws JSONException {
            if ("log".equals(jSONObject.getString(DTBAdView.VIDEO_EVENT_JSON_SUBTYPE))) {
                logFromJavasScript(jSONObject.getJSONObject("arguments").getString("message"));
            }
        }

        void handleMraidCommand(JSONObject jSONObject) throws JSONException {
            this.execException = null;
            String string = jSONObject.getString(DTBAdView.VIDEO_EVENT_JSON_SUBTYPE);
            Class<MraidCommand> findMraidCommandByName = MraidCommand.findMraidCommandByName(string);
            if (findMraidCommandByName == null) {
                DtbLog.error("MRAID Command:" + string + " is not found");
                DTBAdView.this.controller.fireErrorEvent(string, string + " is not supported");
                DTBAdView.this.controller.commandCompleted(string);
                return;
            }
            try {
                MraidCommand newInstance = findMraidCommandByName.newInstance();
                DtbLog.debug(DTBAdView.LOG_TAG, "execute command " + newInstance.getName());
                newInstance.execute(jSONObject.getJSONObject("arguments"), DTBAdView.this.controller);
            } catch (JSONException e2) {
                throw e2;
            } catch (Exception e3) {
                this.execException = e3;
                DtbLog.debug("Error execution command " + string + " " + e3.getLocalizedMessage());
            }
        }

        private void logFromJavasScript(String str) {
            DtbLog.debug("mraid:JSNative", str);
        }

        void echo(JSONObject jSONObject) {
            try {
                final String format = String.format("window.promiseResolve(%d, '%s');", Integer.valueOf(jSONObject.getInt("promiseId")), jSONObject.getJSONObject("arguments").getString("greeting") + " Returned");
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdView$WebBridge$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DTBAdView.WebBridge.this.m63lambda$echo$0$comamazondeviceadsDTBAdView$WebBridge(format);
                    }
                });
            } catch (JSONException e2) {
                DtbLog.debug(DTBAdView.LOG_TAG, "JSON conversion failed:" + e2);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$echo$0$com-amazon-device-ads-DTBAdView$WebBridge  reason: not valid java name */
        public /* synthetic */ void m63lambda$echo$0$comamazondeviceadsDTBAdView$WebBridge(String str) {
            DTBAdView.this.evaluateJavascript(str, null);
        }
    }

    String getEnvironment(Bundle bundle) {
        String string = bundle != null ? bundle.getString(AMAZON_AD_INFO) : null;
        Context context = getContext();
        String str = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
        String idfa = DtbSharedPreferences.getInstance().getIdfa();
        if (DtbCommonUtils.isNullOrEmpty(idfa)) {
            idfa = "unknown";
        }
        String str2 = idfa;
        boolean optOut = DtbSharedPreferences.getInstance().getOptOut();
        if (optOut == null) {
            optOut = false;
        }
        Boolean bool = optOut;
        return string == null ? String.format(ENV_TEMPLATE, "3.0", DtbCommonUtils.getSDKMRAIDVersion(), io.bidmachine.ads.networks.amazon.BuildConfig.ADAPTER_SDK_VERSION_NAME, str, str2, bool, false) : String.format(ENV_TEMPLATE_INFO, "3.0", DtbCommonUtils.getSDKMRAIDVersion(), io.bidmachine.ads.networks.amazon.BuildConfig.ADAPTER_SDK_VERSION_NAME, str, str2, bool, false, string);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        if (this.scrollEnabled) {
            super.onScrollChanged(i, i2, i4, i3);
        } else {
            scrollTo(0, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTBAdMRAIDController getController() {
        return this.controller;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setScrollEnabled(boolean z) {
        this.scrollEnabled = z;
        setVerticalScrollBarEnabled(z);
        setHorizontalScrollBarEnabled(z);
    }

    public void finalize() {
        try {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.globalLayoutListener);
            getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangeListener);
            getViewTreeObserver().removeOnGlobalFocusChangeListener(this.focusChangeListener);
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Fail to execute finalize method");
            APSAnalytics.logEvent(APSEventSeverity.ERROR, APSEventType.EXCEPTION, "Fail to execute finalize method", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAdRemoved() {
        if (this.controller.getDtbOmSdkSessionManager() != null) {
            this.controller.getDtbOmSdkSessionManager().stopOmAdSession();
        }
        this.controller.onAdRemoved();
    }

    boolean detectAdClick(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        long time = new Date().getTime();
        if (action != 0) {
            if (action == 1 && time - this.timeClicked >= 1000) {
                if (time - this.timePressed < 500) {
                    this.timeClicked = time;
                    this.controller.onAdClicked();
                }
                this.timePressed = 0L;
                return false;
            }
            return false;
        }
        this.timePressed = time;
        return false;
    }

    @Override // android.webkit.WebView
    public void loadUrl(final String str) {
        try {
            if (this.supportClient.isCrashed()) {
                DtbLog.error(LOG_TAG, "WebView is corrupted. loadUrl method will not be executed. URL:" + str);
                APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.LOG, "WebView is corrupted. loadUrl method will not be executed. URL:" + str);
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdView$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdView.this.m62lambda$loadUrl$1$comamazondeviceadsDTBAdView(str);
                }
            });
        } catch (RuntimeException e2) {
            DtbLog.error(LOG_TAG, "Failed to execute loadUrl method");
            APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.EXCEPTION, "Failed to execute loadUrl method", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$loadUrl$1$com-amazon-device-ads-DTBAdView  reason: not valid java name */
    public /* synthetic */ void m62lambda$loadUrl$1$comamazondeviceadsDTBAdView(String str) {
        super.loadUrl(str);
    }
}
