package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.content.res.AppCompatResources;
import com.amazon.device.ads.SDKUtilities;
import com.applovin.impl.sdk.utils.Utils;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iab.omid.library.amazon.adsession.FriendlyObstructionPurpose;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Date;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class DTBAdMRAIDController implements DTBActivityListener {
    static final String LOG_TAG = "DTBAdMRAIDController";
    static final String MRAID_CLOSE = "window.mraid.close();";
    private static final String MRAID_READY = "window.mraidBridge.event.ready();";
    DTBAdView adView;
    LinearLayout closeIndicatorRegion;
    DTBMRAIDCloseButtonListener customButtonListener;
    private Rect lastRect;
    private MraidExposure lastReportedExposure;
    private Boolean lastViewabilityState;
    private boolean loadReportSubmitted;
    boolean pageLoaded = false;
    protected boolean useCustomClose = false;
    private int lastReportedSizeChangeWidth = -1;
    private int lastReportedSizeChangeHeight = -1;
    protected MraidStateType state = MraidStateType.LOADING;
    private boolean jsReady = false;
    private boolean isTwoPartExpand = false;
    private DtbOmSdkSessionManager dtbOmSdkSessionManager = DtbOmSdkSessionManager.getNewInstance();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void closeExpandedPartTwo() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void expand(Map<String, Object> map);

    @Override // com.amazon.device.ads.DTBActivityListener
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    public void onActivityPaused(Activity activity) {
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    public void onActivityResumed(Activity activity) {
    }

    @Override // com.amazon.device.ads.DTBActivityListener
    public void onActivityStopped(Activity activity) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdClicked() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onAdLeftApplication();

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdOpened(DTBAdView dTBAdView) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onAdRemoved() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onMRAIDClose();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onPageLoad();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onResize(Map<String, Object> map);

    /* JADX INFO: Access modifiers changed from: protected */
    public void onVideoCompleted() {
    }

    void passLoadError() {
    }

    static {
        MraidCommand.registerCommand(MraidOpenCommand.getMraidName(), MraidOpenCommand.class);
        MraidCommand.registerCommand(MraidCloseCommand.getMraidName(), MraidCloseCommand.class);
        MraidCommand.registerCommand(MraidUnloadCommand.getMraidName(), MraidUnloadCommand.class);
        MraidCommand.registerCommand(MraidResizeCommand.getMraidName(), MraidResizeCommand.class);
        MraidCommand.registerCommand(MraidExpandCommand.getMraidName(), MraidExpandCommand.class);
        MraidCommand.registerCommand(MraidUseCustomCloseCommand.getMraidName(), MraidUseCustomCloseCommand.class);
        MraidCommand.registerCommand(MraidJSReadyCommand.getMraidName(), MraidJSReadyCommand.class);
        MraidCommand.registerCommand(MraidFirePixelCommand.getMraidName(), MraidFirePixelCommand.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DTBAdView getAdView() {
        return this.adView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCustomButtonListener(DTBMRAIDCloseButtonListener dTBMRAIDCloseButtonListener) {
        this.customButtonListener = dTBMRAIDCloseButtonListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTBAdMRAIDController(DTBAdView dTBAdView) {
        this.adView = dTBAdView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DtbOmSdkSessionManager getDtbOmSdkSessionManager() {
        return this.dtbOmSdkSessionManager;
    }

    public void setUseCustomClose(boolean z) {
        DtbLog.debug("Set useCustomClose to " + z);
        this.useCustomClose = z;
        commandCompleted("useCustomClose");
        DTBMRAIDCloseButtonListener dTBMRAIDCloseButtonListener = this.customButtonListener;
        if (dTBMRAIDCloseButtonListener != null) {
            dTBMRAIDCloseButtonListener.useCustomButtonUpdated();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLoadError(String str, int i) {
        onLoadError();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onLoadError() {
        String bidId = this.adView.getBidId();
        String hostname = this.adView.getHostname();
        if (bidId != null) {
            DTBMetricsProcessor.getInstance().submitSimpleReportBidId(DTBMetricReport.addBid(bidId, hostname), DTBMetricsProcessor.REPORT_LOAD_FAILURE);
        }
        passLoadError();
    }

    protected String getPlacementType() {
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createLoadReport() {
        String bidId = this.adView.getBidId();
        String hostname = this.adView.getHostname();
        if (bidId == null || this.loadReportSubmitted) {
            return;
        }
        DTBMetricsProcessor.getInstance().submitLatencyReportBidId(DTBMetricReport.addBid(bidId, hostname), DTBMetricsProcessor.REPORT_LOAD_LATENCY, (int) (new Date().getTime() - this.adView.getStartTime()));
        this.loadReportSubmitted = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void prepareMraid() throws JSONException {
        createLoadReport();
        this.pageLoaded = true;
        fireMaxSizeEvent();
        fireScreenSizeEvent();
        if (getAdView().isVisible()) {
            setCurrentPositionProperty();
        }
        fireMRAIDSupports();
        firePlacementType();
        setCurrentAppOrientation();
        setState(getInitialStateType());
        fireMRAIDReadyEvent();
        if (AdRegistration.isTestMode()) {
            evaluateJavascript("window.mraidBridge.service.debug('enable');");
        }
    }

    protected MraidStateType getInitialStateType() {
        return MraidStateType.DEFAULT;
    }

    private JSONObject formProperties(MraidProperty[] mraidPropertyArr) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        for (MraidProperty mraidProperty : mraidPropertyArr) {
            mraidProperty.formJSON(jSONObject);
        }
        return jSONObject;
    }

    protected void setCurrentAppOrientation() throws JSONException {
        String str;
        int determineSimpleOrientation = DisplayUtils.determineSimpleOrientation();
        if (determineSimpleOrientation == 1) {
            str = "portrait";
        } else if (determineSimpleOrientation == 2) {
            str = "landscape";
        } else {
            str = "unspecified";
        }
        boolean isRotationLocked = DisplayUtils.isRotationLocked();
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AdUnitActivity.EXTRA_ORIENTATION, str);
        jSONObject.put("locked", isRotationLocked);
        evaluateJavascriptMethod("window.mraidBridge.property.setCurrentAppOrientation", jSONObject);
    }

    Context getContext() {
        return getAdView().getContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCurrentPositionProperty() {
        if (this.pageLoaded) {
            int[] iArr = new int[2];
            getAdView().getLocationOnScreen(iArr);
            setCurrentPositionProperty(iArr[0], iArr[1], getAdView().getWidth(), getAdView().getHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCurrentPositionProperty(float f2, float f3) {
        if (this.pageLoaded) {
            int[] iArr = new int[2];
            getAdView().getLocationOnScreen(iArr);
            setCurrentPositionProperty(iArr[0], iArr[1], f2, f3);
        }
    }

    void setCurrentPositionProperty(int i, int i2, float f2, float f3) {
        if (this.pageLoaded) {
            evaluateJavascript(String.format("window.mraidBridge.property.setCurrentPosition({'xPos':%.1f, 'yPos':%.1f, 'width': %.1f, 'height': %.1f});", Float.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(i)), Float.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(i2)), Float.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels((int) f2)), Float.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels((int) f3))));
        }
    }

    private void fireMaxSizeEvent() {
        SDKUtilities.SimpleSize maxSize = DTBAdUtil.getMaxSize(getAdView());
        evaluateJavascript(String.format("window.mraidBridge.property.setMaxSize({'width':%d, 'height':%d});", Integer.valueOf(maxSize.getWidth()), Integer.valueOf(maxSize.getHeight())));
    }

    void fireScreenSizeEvent() {
        SDKUtilities.SimpleSize screenSize = DTBAdUtil.getScreenSize(getAdView());
        evaluateJavascript(String.format("window.mraidBridge.property.setScreenSize({'width':%d, 'height':%d});", Integer.valueOf(screenSize.getWidth()), Integer.valueOf(screenSize.getHeight())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fireViewableChange(boolean z) {
        Boolean bool = this.lastViewabilityState;
        if (bool == null || bool.booleanValue() != z) {
            if (this.jsReady) {
                fireEnforcedViewableChange(z);
            }
            this.lastViewabilityState = Boolean.valueOf(z);
        }
    }

    void fireEnforcedViewableChange(boolean z) {
        evaluateJavascript(String.format("window.mraidBridge.event.viewableChange(%s);", z ? "true" : "false"));
    }

    protected void firePlacementType() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(SessionDescription.ATTR_TYPE, getPlacementType());
        evaluateJavascriptMethod("window.mraidBridge.property.setPlacementType", jSONObject);
    }

    protected void fireMRAIDSupports() {
        evaluateJavascriptMethod("window.mraidBridge.property.setSupports", MraidProperty.SUPPORTS_PROPERTY.getData());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fireErrorEvent(String str, String str2) {
        evaluateJavascript(String.format("window.mraidBridge.event.error('%s','%s');", str2, str));
    }

    private void evaluateJavascriptMethod(String str, JSONObject jSONObject) {
        evaluateJavascript(String.format(str + "(%s);", jSONObject.toString()));
    }

    protected void evaluateJavascript(final String str) {
        DtbLog.debug(LOG_TAG, "MRAID Evaluate JSScript:" + str);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDController.this.m50xbe1b85ea(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$evaluateJavascript$0$com-amazon-device-ads-DTBAdMRAIDController  reason: not valid java name */
    public /* synthetic */ void m50xbe1b85ea(final String str) {
        if (getAdView() != null) {
            getAdView().evaluateJavascript(str, new ValueCallback<String>() { // from class: com.amazon.device.ads.DTBAdMRAIDController.1
                @Override // android.webkit.ValueCallback
                public void onReceiveValue(String str2) {
                    if (str2 == null || "null".equals(str2)) {
                        return;
                    }
                    DtbLog.debug(DTBAdMRAIDController.LOG_TAG, "Value received:" + str2 + " for script " + str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazon.device.ads.DTBAdMRAIDController$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$amazon$device$ads$MraidStateType;

        static {
            int[] iArr = new int[MraidStateType.values().length];
            $SwitchMap$com$amazon$device$ads$MraidStateType = iArr;
            try {
                iArr[MraidStateType.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$MraidStateType[MraidStateType.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$MraidStateType[MraidStateType.RESIZED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$MraidStateType[MraidStateType.EXPANDED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$amazon$device$ads$MraidStateType[MraidStateType.HIDDEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private MraidProperty getCurrentStateProperty() {
        int i = AnonymousClass2.$SwitchMap$com$amazon$device$ads$MraidStateType[this.state.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5) {
                            return MraidProperty.STATE_HIDDEN_PROPERTY;
                        }
                        return MraidProperty.STATE_DEFAULT_PROPERTY;
                    }
                    return MraidProperty.STATE_EXPANDED_PROPERTY;
                }
                return MraidProperty.STATE_RESIZED_PROPERTY;
            }
            return MraidProperty.STATE_DEFAULT_PROPERTY;
        }
        return MraidProperty.STATE_LOADING_PROPERTY;
    }

    void fireStateChangeEvent() {
        try {
            JSONObject formProperties = formProperties(new MraidProperty[]{getCurrentStateProperty()});
            DtbLog.debug(LOG_TAG, "State was changed to " + formProperties.toString() + " for controller " + this);
            evaluateJavascript(String.format("window.mraidBridge.event.stateChange(%s);", formProperties.toString()));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class MraidExposure {
        int percent;
        Rect rect;

        MraidExposure(int i, Rect rect) {
            this.percent = i;
            this.rect = new Rect(rect);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fireExposureChange(int i, Rect rect) {
        int i2 = rect.right;
        int i3 = rect.left;
        int i4 = rect.bottom;
        int i5 = rect.top;
        if (this.jsReady) {
            fireEnforcedExposureChange(i, rect);
        } else {
            this.lastReportedExposure = new MraidExposure(i, rect);
        }
    }

    private void fireEnforcedExposureChange(int i, Rect rect) {
        evaluateJavascript(String.format("window.mraidBridge.event.exposureChange(%d, { x:%d, y:%d, width:%d, height: %d}, null);", Integer.valueOf(i), Integer.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(rect.left)), Integer.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(rect.top)), Integer.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(rect.right - rect.left)), Integer.valueOf(DTBAdUtil.pixelsToDeviceIndependenPixels(rect.bottom - rect.top))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fireSizeChange(int i, int i2) {
        if (this.lastReportedSizeChangeWidth == i && this.lastReportedSizeChangeHeight == i2) {
            return;
        }
        this.lastReportedSizeChangeWidth = i;
        this.lastReportedSizeChangeHeight = i2;
        if (this.jsReady) {
            fireEnforcedSizeChange(i, i2);
        }
    }

    void fireEnforcedSizeChange(int i, int i2) {
        evaluateJavascript(String.format("window.mraidBridge.event.sizeChange(%d, %d);", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    void fireMRAIDReadyEvent() {
        evaluateJavascript(MRAID_READY);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onPositionChanged(Rect rect) {
        Rect rect2 = this.lastRect;
        if (rect2 == null || !rect2.equals(rect)) {
            int i = rect.right - rect.left;
            int i2 = rect.bottom - rect.top;
            Rect rect3 = this.lastRect;
            boolean z = true;
            if (rect3 != null) {
                int i3 = rect3.right - this.lastRect.left;
                int i4 = this.lastRect.bottom - this.lastRect.top;
                if (Math.abs(i3 - i) <= 1 && Math.abs(i4 - i2) <= 1) {
                    z = false;
                }
            }
            setCurrentPositionProperty();
            if (z) {
                fireSizeChange(DTBAdUtil.pixelsToDeviceIndependenPixels(i), DTBAdUtil.pixelsToDeviceIndependenPixels(i2));
            }
            this.lastRect = rect;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setState(MraidStateType mraidStateType) {
        this.state = mraidStateType;
        if (mraidStateType == MraidStateType.HIDDEN) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDController$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDController.this.m53lambda$setState$1$comamazondeviceadsDTBAdMRAIDController();
                }
            });
        }
        fireStateChangeEvent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setState$1$com-amazon-device-ads-DTBAdMRAIDController  reason: not valid java name */
    public /* synthetic */ void m53lambda$setState$1$comamazondeviceadsDTBAdMRAIDController() {
        DTBAdView adView = getAdView();
        if (adView != null) {
            adView.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onMRAIDUnload() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDController.this.m51xd4333b11();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onMRAIDUnload$2$com-amazon-device-ads-DTBAdMRAIDController  reason: not valid java name */
    public /* synthetic */ void m51xd4333b11() {
        getAdView().loadUrl("about:blank");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void commandCompleted(String str) {
        evaluateJavascript(String.format("window.mraidBridge.service.acknowledgement('%s');", str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void openUrl(String str) {
        int indexOf;
        PackageManager packageManager = this.adView.getContext().getPackageManager();
        try {
            Uri parse = Uri.parse(str);
            if ("amazonmobile".equals(parse.getScheme()) && parse.getHost().equals("intent")) {
                String[] split = str.split("intent=");
                if (split.length > 1) {
                    String str2 = null;
                    for (int i = 1; i < split.length; i++) {
                        try {
                            String str3 = split[i];
                            if (str3.lastIndexOf("&") == str3.length() - 1) {
                                str3 = str3.substring(0, str3.length() - 1);
                            }
                            str2 = URLDecoder.decode(str3, C.UTF8_NAME);
                            getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str2)));
                            onAdLeftApplication();
                            break;
                        } catch (ActivityNotFoundException unused) {
                            DtbLog.debug("Intent:" + str2 + " not found.");
                            fireErrorEvent(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "requested activity not found");
                        } catch (UnsupportedEncodingException unused2) {
                            DtbLog.debug("Unsupported encoding");
                        }
                    }
                }
            } else if ("com.amazon.mobile.shopping".equals(parse.getScheme())) {
                try {
                    if (packageManager.getLaunchIntentForPackage("com.amazon.mShop.android.shopping") != null) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(parse);
                        AdRegistration.getCurrentActivity().startActivity(intent);
                    } else {
                        Intent intent2 = new Intent("android.intent.action.VIEW");
                        intent2.setData(parse);
                        if (str.indexOf("products/") > 0) {
                            intent2.setData(Uri.parse("https://www.amazon.com/dp/" + str.substring(indexOf + 9)));
                            AdRegistration.getCurrentActivity().startActivity(intent2);
                        }
                    }
                    onAdLeftApplication();
                } catch (ActivityNotFoundException unused3) {
                    DtbLog.debug(LOG_TAG, "Activity not found com.amazon.mobile.shopping");
                    fireErrorEvent(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "mshop activity not found");
                } catch (NullPointerException unused4) {
                    DtbLog.debug(LOG_TAG, "Current activity from AdRegistration not found");
                    fireErrorEvent(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "current activity from AdRegistration not found");
                }
            } else if (Utils.PLAY_STORE_SCHEME.equals(parse.getScheme()) || "amzn".equals(parse.getScheme())) {
                try {
                    try {
                        Intent intent3 = new Intent("android.intent.action.VIEW");
                        intent3.setData(parse);
                        AdRegistration.getCurrentActivity().startActivity(intent3);
                        onAdLeftApplication();
                    } catch (ActivityNotFoundException unused5) {
                        DtbLog.debug(LOG_TAG, "App stores and browsers not found");
                        fireErrorEvent(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "app stores and browsers not found");
                    } catch (NullPointerException unused6) {
                        DtbLog.debug(LOG_TAG, "Current activity from AdRegistration not found");
                        fireErrorEvent(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "current activity from AdRegistration not found");
                    }
                } catch (ActivityNotFoundException unused7) {
                    DTBAdUtil.directAppStoreLinkToBrowser(this, parse);
                } catch (NullPointerException unused8) {
                    DtbLog.debug(LOG_TAG, "Current activity from AdRegistration not found");
                    fireErrorEvent(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "current activity from AdRegistration not found");
                }
            } else {
                if (parse.getScheme() == null) {
                    parse = Uri.parse("https:" + str);
                }
                Intent intent4 = new Intent("android.intent.action.VIEW", parse);
                try {
                    intent4.addFlags(268435456);
                    getContext().startActivity(intent4);
                    onAdLeftApplication();
                } catch (Exception e2) {
                    DtbLog.error(LOG_TAG, e2.getMessage());
                    fireErrorEvent(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "invalid url " + str);
                }
            }
            commandCompleted(TtmlNode.TEXT_EMPHASIS_MARK_OPEN);
        } catch (Exception unused9) {
            fireErrorEvent(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, "invalid url " + str);
            commandCompleted(TtmlNode.TEXT_EMPHASIS_MARK_OPEN);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeCloseIndicator() {
        ViewGroup viewGroup;
        LinearLayout linearLayout = this.closeIndicatorRegion;
        if (linearLayout == null || (viewGroup = (ViewGroup) linearLayout.getParent()) == null) {
            return;
        }
        viewGroup.removeView(this.closeIndicatorRegion);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addCloseIndicator(int i, int i2) {
        removeCloseIndicator();
        addCloseIndicator(i, i2, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addCloseIndicator(int i, int i2, boolean z) {
        removeCloseIndicator();
        addCloseIndicator(i, i2, null, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCloseIndicatorContent(View.OnTouchListener onTouchListener) {
        this.closeIndicatorRegion.setBackgroundColor(0);
        this.closeIndicatorRegion.setId(R.id.mraid_close_indicator);
        ImageView imageView = new ImageView(getAdView().getContext());
        imageView.setId(R.id.mraid_close_indicator);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(DTBAdUtil.sizeToDevicePixels(24), DTBAdUtil.sizeToDevicePixels(24));
        layoutParams.setMargins(DTBAdUtil.sizeToDevicePixels(14), DTBAdUtil.sizeToDevicePixels(14), 0, 0);
        this.closeIndicatorRegion.addView(imageView, layoutParams);
        if (getDtbOmSdkSessionManager() != null) {
            getDtbOmSdkSessionManager().addFriendlyObstruction(this.closeIndicatorRegion.findViewById(R.id.mraid_close_indicator), FriendlyObstructionPurpose.CLOSE_AD);
        }
        imageView.setImageDrawable(AppCompatResources.getDrawable(getAdView().getContext(), R.drawable.mraid_close));
        if (onTouchListener != null) {
            this.closeIndicatorRegion.setOnTouchListener(onTouchListener);
        } else {
            this.closeIndicatorRegion.setOnTouchListener(new View.OnTouchListener() { // from class: com.amazon.device.ads.DTBAdMRAIDController$$ExternalSyntheticLambda1
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return DTBAdMRAIDController.this.m52x15d656ad(view, motionEvent);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setCloseIndicatorContent$3$com-amazon-device-ads-DTBAdMRAIDController  reason: not valid java name */
    public /* synthetic */ boolean m52x15d656ad(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            evaluateJavascript(MRAID_CLOSE);
            ((ViewGroup) view.getParent()).removeView(view);
            this.closeIndicatorRegion = null;
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void createContentIndicator() {
        LinearLayout linearLayout = new LinearLayout(getAdView().getContext());
        this.closeIndicatorRegion = linearLayout;
        linearLayout.setVisibility(this.useCustomClose ? 4 : 0);
        this.closeIndicatorRegion.setOrientation(1);
    }

    protected void addCloseIndicator(int i, int i2, View.OnTouchListener onTouchListener, boolean z) {
        createContentIndicator();
        DTBAdUtil.getRootView(getAdView()).addView(this.closeIndicatorRegion, DTBAdUtil.sizeToDevicePixels(50), DTBAdUtil.sizeToDevicePixels(50));
        this.closeIndicatorRegion.setX(i - DTBAdUtil.sizeToDevicePixels(50));
        this.closeIndicatorRegion.setY(i2);
        setCloseIndicatorContent(onTouchListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isTwoPartExpand() {
        return this.isTwoPartExpand;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTwoPartExpand(boolean z) {
        this.isTwoPartExpand = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void jsReady() {
        int i;
        commandCompleted("jsready");
        this.jsReady = true;
        Boolean bool = this.lastViewabilityState;
        if (bool != null) {
            fireEnforcedViewableChange(bool.booleanValue());
        }
        MraidExposure mraidExposure = this.lastReportedExposure;
        if (mraidExposure != null) {
            fireEnforcedExposureChange(mraidExposure.percent, this.lastReportedExposure.rect);
        }
        int i2 = this.lastReportedSizeChangeWidth;
        if (i2 <= 0 || (i = this.lastReportedSizeChangeHeight) <= 0) {
            return;
        }
        fireEnforcedSizeChange(i2, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onViewabilityChanged(boolean z) {
        DtbLog.debug("SET MRAID Visible " + z);
        fireViewableChange(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void impressionFired() {
        if (!getAdView().isVideo() && getDtbOmSdkSessionManager() != null) {
            getDtbOmSdkSessionManager().impressionOccured();
        }
        commandCompleted(MraidFirePixelCommand.getMraidName());
    }
}
