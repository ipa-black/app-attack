package com.amazon.device.ads;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.LinearLayout;
import com.amazon.aps.shared.APSAnalytics;
import com.amazon.aps.shared.analytics.APSEventSeverity;
import com.amazon.aps.shared.analytics.APSEventType;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import io.bidmachine.utils.IabUtils;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DTBAdMRAIDBannerController extends DTBAdMRAIDController implements DTBMRAIDCloseButtonListener {
    private static final int ANIMATION_DURATION = 500;
    private static List<WeakReference<DTBAdMRAIDBannerController>> bannerControllers = new ArrayList();
    private static AtomicInteger indexDispencer = new AtomicInteger(100);
    private ObjectAnimator animater;
    private float animationProgress;
    DTBAdBannerListener bannerListener;
    private ViewGroup defaultParent;
    private AnimationPoint endAnimation;
    private ViewGroup expandedBackground;
    private int index;
    private int originalHeight;
    private ViewGroup.LayoutParams originalParams;
    private int originalWidth;
    private float originalX;
    private int originalXPos;
    private float originalY;
    private int originalYPos;
    private AnimationPoint startAnimation;

    protected boolean onBackPressed() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AnimationPoint {
        int height;
        int width;
        int xPos;
        int yPos;

        AnimationPoint(int i, int i2, int i3, int i4) {
            this.xPos = i;
            this.yPos = i2;
            this.width = i3;
            this.height = i4;
        }
    }

    public void setAnimationProgress(float f2) {
        this.animationProgress = f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DTBAdMRAIDBannerController(DTBAdView dTBAdView, DTBAdBannerListener dTBAdBannerListener) {
        super(dTBAdView);
        this.index = indexDispencer.incrementAndGet();
        this.bannerListener = dTBAdBannerListener;
        this.customButtonListener = this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onPageLoad() {
        try {
            if (!this.pageLoaded) {
                prepareMraid();
                this.bannerListener.onAdLoaded(getAdView());
                if (!getAdView().isVideo() && getDtbOmSdkSessionManager() != null) {
                    getDtbOmSdkSessionManager().displayAdEventLoaded();
                }
                if (DTBMetricsConfiguration.getInstance().isFeatureEnabled("additional_webview_metric")) {
                    StringBuilder sb = new StringBuilder("Creative Rendering finish");
                    if (!DtbCommonUtils.isNullOrEmpty(getAdView().getBidId())) {
                        sb = sb.append(String.format(" bannerCreativeBidId = %s", getAdView().getBidId()));
                    }
                    APSAnalytics.logEvent(APSEventSeverity.FATAL, APSEventType.LOG, sb.toString());
                }
            }
        } catch (JSONException e2) {
            DtbLog.error("Error:" + e2.getMessage());
        }
        this.originalParams = getAdView().getLayoutParams();
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController
    protected String getPlacementType() {
        return "inline";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onMRAIDClose() {
        if (this.state == MraidStateType.RESIZED) {
            moveResizedToDefault();
        } else if (this.state == MraidStateType.EXPANDED) {
            moveExpandedToDefault();
        } else if (this.state == MraidStateType.DEFAULT) {
            setState(MraidStateType.HIDDEN);
            commandCompleted("close");
        } else {
            fireErrorEvent("close", "Command is not allowed in a given ad state:" + this.state.toString());
            commandCompleted("close");
        }
    }

    private void moveResizedToDefault() {
        moveResizedToDefault(500, false);
    }

    private void moveResizedToDefault(final int i, final boolean z) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m38x95f8c355(i, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: moveResizedToDefaultImpl */
    public void m38x95f8c355(int i, final boolean z) {
        AnimationPoint animationPoint = this.startAnimation;
        this.startAnimation = this.endAnimation;
        this.endAnimation = animationPoint;
        animationPoint.height = this.originalHeight;
        this.endAnimation.width = this.originalWidth;
        this.endAnimation.xPos = this.originalXPos;
        this.endAnimation.yPos = this.originalYPos;
        final ViewGroup viewGroup = (ViewGroup) getAdView().getParent();
        if (this.closeIndicatorRegion != null) {
            viewGroup.removeView(this.closeIndicatorRegion);
            this.closeIndicatorRegion = null;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", 0.0f, 1.0f);
        this.animater = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda13
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DTBAdMRAIDBannerController.this.m39x542b1d34(viewGroup, z, valueAnimator);
            }
        });
        this.animater.setDuration(i);
        this.animater.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$moveResizedToDefaultImpl$1$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m39x542b1d34(ViewGroup viewGroup, boolean z, ValueAnimator valueAnimator) {
        if (updateAdViewLayout(valueAnimator).floatValue() == 1.0f) {
            updateResizedToDefaultListener(viewGroup, z);
        }
    }

    private void moveExpandedToDefault() {
        moveExpandedToDefault(500, false);
    }

    private void moveExpandedToDefault(final int i, final boolean z) {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m36x70d963b8(i, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: moveExpandedToDefaultImpl */
    public void m36x70d963b8(int i, final boolean z) {
        ViewGroup viewGroup;
        AnimationPoint animationPoint = this.startAnimation;
        this.startAnimation = this.endAnimation;
        this.endAnimation = animationPoint;
        final ViewGroup viewGroup2 = (ViewGroup) getAdView().getParent();
        if (this.closeIndicatorRegion != null && (viewGroup = (ViewGroup) this.closeIndicatorRegion.getParent()) != null) {
            viewGroup.removeView(this.closeIndicatorRegion);
            this.closeIndicatorRegion = null;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", 0.0f, 1.0f);
        this.animater = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DTBAdMRAIDBannerController.this.m37x424b2317(viewGroup2, z, valueAnimator);
            }
        });
        this.animater.setDuration(i);
        this.animater.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$moveExpandedToDefaultImpl$3$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m37x424b2317(ViewGroup viewGroup, boolean z, ValueAnimator valueAnimator) {
        if (updateAdViewLayout(valueAnimator).floatValue() == 1.0f) {
            updateExpandedToDefaultListener(viewGroup, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onMRAIDUnload() {
        if (this.state == MraidStateType.RESIZED) {
            moveResizedToDefault(10, true);
        } else if (this.state == MraidStateType.EXPANDED) {
            moveExpandedToDefault(10, true);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda15
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m42x86d5afdb();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onMRAIDUnload$4$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m42x86d5afdb() {
        getAdView().loadUrl("about:blank");
        commandCompleted("unload");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onResize(Map<String, Object> map) {
        if (this.state != MraidStateType.DEFAULT && this.state != MraidStateType.RESIZED) {
            fireErrorEvent("resize", "invalid current state");
            commandCompleted("resize");
            return;
        }
        try {
            final int intValue = map.containsKey("offsetX") ? ((Integer) map.get("offsetX")).intValue() : 0;
            final int intValue2 = map.containsKey("offsetY") ? ((Integer) map.get("offsetY")).intValue() : 0;
            final int intValue3 = ((Integer) map.get(IabUtils.KEY_WIDTH)).intValue();
            final int intValue4 = ((Integer) map.get(IabUtils.KEY_HEIGHT)).intValue();
            final boolean booleanValue = ((Boolean) map.get("allowOffscreen")).booleanValue();
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m43x765d2064(intValue, intValue2, intValue3, intValue4, booleanValue);
                }
            });
        } catch (Exception unused) {
            fireErrorEvent("resize", "invalid input parameters");
            commandCompleted("resize");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0106  */
    /* renamed from: onResizeImpl */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m43x765d2064(int r16, int r17, int r18, int r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DTBAdMRAIDBannerController.m43x765d2064(int, int, int, int, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onResizeImpl$6$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m44xb7b32043(int i, int i2, int i3, int i4, ValueAnimator valueAnimator) {
        if (updateAdViewLayout(valueAnimator).floatValue() == 1.0f) {
            fireSizeChange(DTBAdUtil.pixelsToDeviceIndependenPixels(i), DTBAdUtil.pixelsToDeviceIndependenPixels(i2));
            addCloseIndicator(i3 + i, i4);
            commandCompleted("resize");
            setState(MraidStateType.RESIZED);
            this.animater = null;
            getAdView().computeExposure(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void expand(final Map<String, Object> map) {
        if (!this.state.equals(MraidStateType.DEFAULT)) {
            fireErrorEvent("expand", "current state does not allow transition to expand");
            commandCompleted("expand");
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m35lambda$expand$7$comamazondeviceadsDTBAdMRAIDBannerController(map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$expand$7$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m35lambda$expand$7$comamazondeviceadsDTBAdMRAIDBannerController(Map map) {
        if (((String) map.get("url")) != null) {
            executeTwoPartsExpand(map);
        } else {
            executeOnePartExpand(map);
        }
    }

    private void executeTwoPartsExpand(Map<String, Object> map) {
        String str = (String) map.get("url");
        Activity activity = DTBAdUtil.getActivity(getAdView());
        Intent intent = new Intent(activity, DTBAdActivity.class);
        if (str != null) {
            intent.putExtra("url", str);
        }
        intent.putExtra("ad_state", "expanded");
        intent.putExtra("cntrl_index", this.index);
        intent.putExtra("two_part_expand", true);
        if (map.get(AdUnitActivity.EXTRA_ORIENTATION) != null) {
            intent.putExtra(AdUnitActivity.EXTRA_ORIENTATION, (Serializable) map.get(AdUnitActivity.EXTRA_ORIENTATION));
        }
        activity.startActivity(intent);
        commandCompleted("expand");
        setState(MraidStateType.EXPANDED);
        bannerControllers.add(new WeakReference<>(this));
    }

    private void executeOnePartExpand(Map<String, Object> map) {
        int i;
        final boolean z;
        int intValue;
        int intValue2;
        this.originalX = getAdView().getX();
        this.originalY = getAdView().getY();
        ViewGroup rootView = DTBAdUtil.getRootView(getAdView());
        if (rootView == null) {
            fireErrorEvent("expand", "rootview doesn't exist in one part expand");
            commandCompleted("expand");
            return;
        }
        int[] iArr = new int[2];
        getAdView().getLocationInWindow(iArr);
        this.defaultParent = (ViewGroup) getAdView().getParent();
        this.originalParams = getAdView().getLayoutParams();
        getAdView().setIgnoreDetachment();
        this.defaultParent.removeView(getAdView());
        int[] iArr2 = new int[2];
        rootView.getLocationInWindow(iArr2);
        int height = rootView.getHeight();
        final int width = rootView.getWidth();
        this.startAnimation = new AnimationPoint(iArr[0] - iArr2[0], iArr[1] - iArr2[1], getAdView().getWidth(), getAdView().getHeight());
        if (map.containsKey("position") && (map.get("position") instanceof Map)) {
            Map map2 = (Map) map.get("position");
            i = (!map2.containsKey(IabUtils.KEY_WIDTH) || (intValue2 = ((Integer) map2.get(IabUtils.KEY_WIDTH)).intValue()) <= 0) ? width : DTBAdUtil.sizeToDevicePixels(intValue2);
            if (map2.containsKey(IabUtils.KEY_HEIGHT) && (intValue = ((Integer) map2.get(IabUtils.KEY_HEIGHT)).intValue()) > 0) {
                height = DTBAdUtil.sizeToDevicePixels(intValue);
            }
            if (map2.containsKey("useCustomClose")) {
                z = ((Boolean) map2.get("useCustomClose")).booleanValue();
                BackgroundView backgroundView = new BackgroundView(getAdView().getContext());
                this.expandedBackground = backgroundView;
                backgroundView.setBackgroundColor(0);
                rootView.addView(backgroundView, -1, -1);
                ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(getAdView().getWidth(), getAdView().getHeight());
                marginLayoutParams.leftMargin = this.startAnimation.xPos;
                marginLayoutParams.topMargin = this.startAnimation.yPos;
                rootView.bringChildToFront(backgroundView);
                backgroundView.addView(getAdView(), marginLayoutParams);
                getAdView().setX(this.startAnimation.xPos);
                getAdView().setY(this.startAnimation.yPos);
                this.endAnimation = new AnimationPoint(0, 0, i, height);
                setCurrentPositionProperty(DTBAdUtil.pixelsToDeviceIndependenPixels(i), DTBAdUtil.pixelsToDeviceIndependenPixels(height));
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", 0.0f, 1.0f);
                this.animater = ofFloat;
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda6
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        DTBAdMRAIDBannerController.this.m34xeb530dd6(width, z, valueAnimator);
                    }
                });
                this.animater.setDuration(500L);
                this.animater.start();
            }
        } else {
            i = width;
        }
        z = false;
        BackgroundView backgroundView2 = new BackgroundView(getAdView().getContext());
        this.expandedBackground = backgroundView2;
        backgroundView2.setBackgroundColor(0);
        rootView.addView(backgroundView2, -1, -1);
        ViewGroup.MarginLayoutParams marginLayoutParams2 = new ViewGroup.MarginLayoutParams(getAdView().getWidth(), getAdView().getHeight());
        marginLayoutParams2.leftMargin = this.startAnimation.xPos;
        marginLayoutParams2.topMargin = this.startAnimation.yPos;
        rootView.bringChildToFront(backgroundView2);
        backgroundView2.addView(getAdView(), marginLayoutParams2);
        getAdView().setX(this.startAnimation.xPos);
        getAdView().setY(this.startAnimation.yPos);
        this.endAnimation = new AnimationPoint(0, 0, i, height);
        setCurrentPositionProperty(DTBAdUtil.pixelsToDeviceIndependenPixels(i), DTBAdUtil.pixelsToDeviceIndependenPixels(height));
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "animationProgress", 0.0f, 1.0f);
        this.animater = ofFloat2;
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DTBAdMRAIDBannerController.this.m34xeb530dd6(width, z, valueAnimator);
            }
        });
        this.animater.setDuration(500L);
        this.animater.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$executeOnePartExpand$8$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m34xeb530dd6(int i, boolean z, ValueAnimator valueAnimator) {
        if (updateAdViewLayout(valueAnimator).floatValue() == 1.0f) {
            addCloseIndicator(i, 0, z);
            fireSizeChange(DTBAdUtil.pixelsToDeviceIndependenPixels(this.endAnimation.width), DTBAdUtil.pixelsToDeviceIndependenPixels(this.endAnimation.height));
            setState(MraidStateType.EXPANDED);
            commandCompleted("expand");
            this.animater = null;
            getAdView().computeExposure(true);
        }
    }

    private Float updateAdViewLayout(ValueAnimator valueAnimator) {
        Float f2 = (Float) valueAnimator.getAnimatedValue();
        ViewGroup.LayoutParams layoutParams = getAdView().getLayoutParams();
        getAdView().setX(this.startAnimation.xPos + ((this.endAnimation.xPos - this.startAnimation.xPos) * f2.floatValue()));
        getAdView().setY(this.startAnimation.yPos + ((this.endAnimation.yPos - this.startAnimation.yPos) * f2.floatValue()));
        layoutParams.width = (int) (this.startAnimation.width + ((this.endAnimation.width - this.startAnimation.width) * f2.floatValue()));
        layoutParams.height = (int) (this.startAnimation.height + ((this.endAnimation.height - this.startAnimation.height) * f2.floatValue()));
        getAdView().setLayoutParams(layoutParams);
        getAdView().invalidate();
        return f2;
    }

    private void updateResizedToDefaultListener(ViewGroup viewGroup, boolean z) {
        getAdView().setIgnoreDetachment();
        viewGroup.removeView(getAdView());
        this.startAnimation = this.endAnimation;
        if (this.originalParams != null) {
            this.defaultParent.addView(getAdView(), this.originalParams);
            this.defaultParent.requestLayout();
        }
        getAdView().invalidate();
        setCurrentPositionProperty();
        this.defaultParent = null;
        fireSizeChange(DTBAdUtil.pixelsToDeviceIndependenPixels(this.endAnimation.width), DTBAdUtil.pixelsToDeviceIndependenPixels(this.endAnimation.height));
        setState(MraidStateType.DEFAULT);
        this.animater = null;
        commandCompleted("close");
        if (z) {
            new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m48x77b56860();
                }
            }, 500L);
        }
        new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m47x6887b7d2();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateResizedToDefaultListener$9$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m48x77b56860() {
        getAdView().loadUrl("about:blank");
        commandCompleted("unload");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateResizedToDefaultListener$10$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m47x6887b7d2() {
        getAdView().computeExposure(true);
    }

    private void updateExpandedToDefaultListener(ViewGroup viewGroup, boolean z) {
        getAdView().setIgnoreDetachment();
        viewGroup.removeView(getAdView());
        this.startAnimation = this.endAnimation;
        ViewGroup viewGroup2 = this.expandedBackground;
        if (viewGroup2 != null) {
            ((ViewGroup) viewGroup2.getParent()).removeView(this.expandedBackground);
            this.expandedBackground = null;
            fireSizeChange(DTBAdUtil.pixelsToDeviceIndependenPixels(this.startAnimation.width), DTBAdUtil.pixelsToDeviceIndependenPixels(this.startAnimation.height));
        }
        if (this.originalParams != null) {
            this.defaultParent.addView(getAdView(), this.originalParams);
            this.defaultParent.requestLayout();
        }
        setCurrentPositionProperty();
        setState(MraidStateType.DEFAULT);
        commandCompleted("close");
        this.defaultParent = null;
        this.animater = null;
        if (z) {
            new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m45xd1b23efc();
                }
            }, 500L);
        }
        new Handler().postDelayed(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m46xc35be51b();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateExpandedToDefaultListener$11$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m45xd1b23efc() {
        getAdView().loadUrl("about:blank");
        commandCompleted("unload");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateExpandedToDefaultListener$12$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m46xc35be51b() {
        getAdView().computeExposure(true);
    }

    /* loaded from: classes.dex */
    class ExpandedBannerListener implements DTBAdExpandedListener {
        @Override // com.amazon.device.ads.DTBAdExpandedListener
        public void onAdLoaded(DTBAdView dTBAdView) {
        }

        ExpandedBannerListener() {
        }

        @Override // com.amazon.device.ads.DTBAdExpandedListener
        public void onCreateExpandedController(DTBAdMRAIDExpandedController dTBAdMRAIDExpandedController) {
            dTBAdMRAIDExpandedController.setMasterController(DTBAdMRAIDBannerController.this);
        }
    }

    void openExpanded() {
        setState(MraidStateType.EXPANDED);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DTBAdMRAIDBannerController findControllerByIndex(int i) {
        for (WeakReference<DTBAdMRAIDBannerController> weakReference : bannerControllers) {
            DTBAdMRAIDBannerController dTBAdMRAIDBannerController = weakReference.get();
            if (dTBAdMRAIDBannerController != null && dTBAdMRAIDBannerController.index == i) {
                return dTBAdMRAIDBannerController;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void closeExpandedPartTwo() {
        setState(MraidStateType.DEFAULT);
    }

    @Override // com.amazon.device.ads.DTBMRAIDCloseButtonListener
    public void useCustomButtonUpdated() {
        if (this.state != MraidStateType.EXPANDED || this.closeIndicatorRegion == null) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m49x40888cad();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$useCustomButtonUpdated$13$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m49x40888cad() {
        this.closeIndicatorRegion.setVisibility(this.useCustomClose ? 4 : 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onAdClicked() {
        final DTBAdView dTBAdView = this.adView;
        if (this.bannerListener != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    DTBAdMRAIDBannerController.this.m40x6b82626(dTBAdView);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onAdClicked$14$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m40x6b82626(View view) {
        this.bannerListener.onAdClicked(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class BackgroundView extends LinearLayout {
        BackgroundView(Context context) {
            super(context);
            setOrientation(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onAdLeftApplication() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.amazon.device.ads.DTBAdMRAIDBannerController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                DTBAdMRAIDBannerController.this.m41x19e030e7();
            }
        });
        ActivityMonitor.getInstance().setActivityListener(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onAdLeftApplication$15$com-amazon-device-ads-DTBAdMRAIDBannerController  reason: not valid java name */
    public /* synthetic */ void m41x19e030e7() {
        this.bannerListener.onAdOpen(this.adView);
        this.bannerListener.onAdLeftApplication(this.adView);
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    public void onActivityResumed(Activity activity) {
        this.bannerListener.onAdClosed(this.adView);
    }

    @Override // com.amazon.device.ads.DTBAdMRAIDController, com.amazon.device.ads.DTBActivityListener
    public void onActivityDestroyed(Activity activity) {
        if (getDtbOmSdkSessionManager() != null) {
            getDtbOmSdkSessionManager().stopOmAdSession();
        }
        ActivityMonitor.getInstance().setActivityListener(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void onAdRemoved() {
        ViewGroup viewGroup;
        if (this.adView == null) {
            return;
        }
        super.onAdRemoved();
        removeCloseIndicator();
        ObjectAnimator objectAnimator = this.animater;
        if (objectAnimator != null) {
            objectAnimator.end();
        }
        if (!isVisibleRecyclerOrListView(this.adView.getParent())) {
            this.adView.setVisibility(8);
        }
        if (this.state == MraidStateType.RESIZED) {
            ViewParent parent = this.adView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.adView);
            }
        } else if (this.state == MraidStateType.EXPANDED && (viewGroup = this.expandedBackground) != null && (viewGroup.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.expandedBackground.getParent()).removeView(this.expandedBackground);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void passLoadError() {
        if (getDtbOmSdkSessionManager() != null) {
            getDtbOmSdkSessionManager().stopOmAdSession();
        }
        this.bannerListener.onAdFailed(this.adView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.amazon.device.ads.DTBAdMRAIDController
    public void impressionFired() {
        this.bannerListener.onImpressionFired(this.adView);
        super.impressionFired();
    }

    private boolean isVisibleRecyclerOrListView(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        if (viewParent.toString().toLowerCase().contains("recyclerview") || viewParent.toString().toLowerCase().contains("listview")) {
            return true;
        }
        return isVisibleRecyclerOrListView(viewParent.getParent());
    }
}
