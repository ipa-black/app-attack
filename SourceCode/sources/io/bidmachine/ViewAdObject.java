package io.bidmachine;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import io.bidmachine.AdObjectImpl;
import io.bidmachine.AdRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.core.VisibilityTracker;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.unified.UnifiedViewAd;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ViewHelper;
import java.lang.ref.WeakReference;
/* loaded from: classes5.dex */
public final class ViewAdObject<AdRequestType extends AdRequest<AdRequestType, ?, UnifiedAdRequestParamsType>, UnifiedAdType extends UnifiedViewAd<UnifiedBannerAdCallback, UnifiedAdRequestParamsType>, UnifiedAdRequestParamsType extends UnifiedAdRequestParams> extends AdObjectImpl<AdRequestType, AdObjectParams, UnifiedAdType, UnifiedBannerAdCallback, UnifiedAdRequestParamsType> {
    private View adView;
    private int height;
    private MeasureMode heightMeasureMode;
    private int width;
    private MeasureMode widthMeasureMode;

    public ViewAdObject(ContextProvider contextProvider, AdProcessCallback adProcessCallback, AdRequestType adrequesttype, AdObjectParams adObjectParams, UnifiedAdType unifiedadtype) {
        super(contextProvider, adProcessCallback, adrequesttype, adObjectParams, unifiedadtype);
        this.widthMeasureMode = MeasureMode.Direct;
        this.heightMeasureMode = MeasureMode.Direct;
    }

    @Override // io.bidmachine.models.AdObject
    public UnifiedBannerAdCallback createUnifiedCallback(AdProcessCallback adProcessCallback) {
        return new UnifiedViewAdCallbackImpl(this, adProcessCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void show(ViewGroup viewGroup) {
        ViewGroup.LayoutParams layoutParams;
        if (viewGroup == null) {
            getUnifiedAdCallback().onAdShowFailed(BMError.notFound("Target container"));
        } else if ((getWidthMeasureMode() == MeasureMode.Direct && getWidth() == 0) || (getHeightMeasureMode() == MeasureMode.Direct && getHeight() == 0)) {
            getUnifiedAdCallback().onAdShowFailed(BMError.incorrectContent("Width or height are not provided"));
        } else {
            Context context = viewGroup.getContext();
            View view = this.adView;
            if (view != null) {
                VisibilityTracker.stopTracking(view);
            }
            if (viewGroup instanceof FrameLayout) {
                layoutParams = new FrameLayout.LayoutParams(getScaledWidth(context), getScaledHeight(context), 17);
            } else {
                layoutParams = new ViewGroup.LayoutParams(getScaledWidth(context), getScaledHeight(context));
            }
            getProcessCallback().processBeforeStartVisibilityTracker();
            VisibilityTracker.startTracking(this.adView, getParams().getViewabilityTimeThresholdMs(), getParams().getViewabilityPixelThreshold(), getParams().isViewabilityIgnoreWindowFocus(), new VisibilityTracker.VisibilityChangeCallback() { // from class: io.bidmachine.ViewAdObject.1
                @Override // io.bidmachine.core.VisibilityTracker.VisibilityChangeCallback
                public boolean onViewShown() {
                    return ViewAdObject.this.getProcessCallback().processVisibilityTrackerShown(ViewAdObject.this.getUnifiedAd());
                }

                @Override // io.bidmachine.core.VisibilityTracker.VisibilityChangeCallback
                public void onViewTrackingFinished() {
                    ViewAdObject.this.getProcessCallback().processVisibilityTrackerImpression();
                }
            });
            ViewHelper.safeAddSingleView(viewGroup, this.adView, layoutParams);
            getProcessCallback().processFillAd();
            try {
                ((UnifiedViewAd) getUnifiedAd()).prepareToShow();
            } catch (Throwable th) {
                Logger.log(th);
            }
        }
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public void onImpression() {
        super.onImpression();
        VisibilityTracker.stopTracking(this.adView);
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public void hide() {
        super.hide();
        View view = this.adView;
        if (view != null) {
            ViewHelper.removeViewFromParent(view);
            VisibilityTracker.stopTracking(this.adView);
        }
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public void onDestroy() {
        hide();
        super.onDestroy();
    }

    public MeasureMode getWidthMeasureMode() {
        return this.widthMeasureMode;
    }

    public void setWidthMeasureMode(MeasureMode measureMode) {
        this.widthMeasureMode = measureMode;
    }

    public MeasureMode getHeightMeasureMode() {
        return this.heightMeasureMode;
    }

    public void setHeightMeasureMode(MeasureMode measureMode) {
        this.heightMeasureMode = measureMode;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    private int getWidth() {
        return this.width;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    private int getHeight() {
        return this.height;
    }

    private int getScaledWidth(Context context) {
        return this.widthMeasureMode.getSize(context, getWidth());
    }

    private int getScaledHeight(Context context) {
        return this.heightMeasureMode.getSize(context, getHeight());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.ViewAdObject$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$ViewAdObject$MeasureMode;

        static {
            int[] iArr = new int[MeasureMode.values().length];
            $SwitchMap$io$bidmachine$ViewAdObject$MeasureMode = iArr;
            try {
                iArr[MeasureMode.Direct.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$bidmachine$ViewAdObject$MeasureMode[MeasureMode.Wrap.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public enum MeasureMode {
        Match,
        Wrap,
        Direct;

        int getSize(Context context, int i) {
            int i2 = AnonymousClass2.$SwitchMap$io$bidmachine$ViewAdObject$MeasureMode[ordinal()];
            if (i2 != 1) {
                return i2 != 2 ? -1 : -2;
            }
            return Math.round(i * Utils.getScreenDensity(context));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static final class UnifiedViewAdCallbackImpl extends AdObjectImpl.BaseUnifiedAdCallback implements UnifiedBannerAdCallback {
        private final WeakReference<ViewAdObject<?, ?, ?>> weakAdObject;

        UnifiedViewAdCallbackImpl(ViewAdObject<?, ?, ?> viewAdObject, AdProcessCallback adProcessCallback) {
            super(adProcessCallback);
            this.weakAdObject = new WeakReference<>(viewAdObject);
        }

        @Override // io.bidmachine.unified.UnifiedBannerAdCallback
        public void onAdLoaded(View view) {
            ViewAdObject<?, ?, ?> viewAdObject = this.weakAdObject.get();
            if (viewAdObject != null) {
                if (((ViewAdObject) viewAdObject).adView != null) {
                    VisibilityTracker.stopTracking(((ViewAdObject) viewAdObject).adView);
                }
                ((ViewAdObject) viewAdObject).adView = view;
                this.processCallback.processLoadSuccess();
                return;
            }
            this.processCallback.processLoadFail(BMError.internal("ViewAdObject is null"));
        }
    }
}
