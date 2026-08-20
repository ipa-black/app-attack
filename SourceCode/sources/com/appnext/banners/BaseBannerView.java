package com.appnext.banners;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.appnext.core.AppnextAdCreativeType;
import com.appnext.core.AppnextError;
import com.appnext.core.callbacks.OnECPMLoaded;
import com.appnext.core.p;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
/* loaded from: classes.dex */
public abstract class BaseBannerView extends ViewGroup {
    protected e bannerAdapter;
    private BannerListener bannerListener;
    private String language;
    ViewTreeObserver.OnScrollChangedListener onScrollChangedListener;

    protected abstract e getBannerAdapter();

    public BaseBannerView(Context context) {
        super(context);
        this.onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.appnext.banners.BaseBannerView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                BaseBannerView.this.impression();
                BaseBannerView.this.onScrollChanged();
            }
        };
        if (context == null) {
            throw new IllegalArgumentException("The context cannot be null.");
        }
        parseAttributeSet(null);
    }

    public BaseBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.appnext.banners.BaseBannerView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                BaseBannerView.this.impression();
                BaseBannerView.this.onScrollChanged();
            }
        };
        parseAttributeSet(attributeSet);
    }

    public BaseBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.appnext.banners.BaseBannerView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                BaseBannerView.this.impression();
                BaseBannerView.this.onScrollChanged();
            }
        };
        parseAttributeSet(attributeSet);
    }

    public BaseBannerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.onScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.appnext.banners.BaseBannerView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                BaseBannerView.this.impression();
                BaseBannerView.this.onScrollChanged();
            }
        };
        parseAttributeSet(attributeSet);
    }

    private void parseAttributeSet(AttributeSet attributeSet) {
        if (isInEditMode()) {
            return;
        }
        getBannerAdapter().init(this);
        d.S().r(ScarConstants.TOKEN_ID_KEY, "301");
        d.S().a(getContext(), (p.a) null);
        getViewTreeObserver().addOnScrollChangedListener(this.onScrollChangedListener);
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainAttributes = getResources().obtainAttributes(attributeSet, R.styleable.BannersAttrs);
        String string = obtainAttributes.getString(R.styleable.BannersAttrs_bannerSize);
        if (string != null) {
            string.hashCode();
            char c2 = 65535;
            switch (string.hashCode()) {
                case -1966536496:
                    if (string.equals("LARGE_BANNER")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -96588539:
                    if (string.equals("MEDIUM_RECTANGLE")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1951953708:
                    if (string.equals("BANNER")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    setBannerSize(BannerSize.LARGE_BANNER);
                    break;
                case 1:
                    setBannerSize(BannerSize.MEDIUM_RECTANGLE);
                    break;
                case 2:
                    setBannerSize(BannerSize.BANNER);
                    break;
                default:
                    throw new IllegalArgumentException("Wrong banner size " + string);
            }
        }
        String string2 = obtainAttributes.getString(R.styleable.BannersAttrs_placementId);
        if (string2 != null) {
            setPlacementId(string2);
        }
        obtainAttributes.recycle();
        getBannerAdapter().setBannerListener(new BannerListener() { // from class: com.appnext.banners.BaseBannerView.2
            @Override // com.appnext.banners.BannerListener
            public final void onAdLoaded(String str, AppnextAdCreativeType appnextAdCreativeType) {
                if (BaseBannerView.this.getBannerListener() != null) {
                    BaseBannerView.this.getBannerListener().onAdLoaded(str, appnextAdCreativeType);
                }
                BaseBannerView.this.impression();
            }

            @Override // com.appnext.banners.BannerListener
            public final void onAdClicked() {
                if (BaseBannerView.this.getBannerListener() != null) {
                    BaseBannerView.this.getBannerListener().onAdClicked();
                }
            }

            @Override // com.appnext.banners.BannerListener
            public final void onError(AppnextError appnextError) {
                if (BaseBannerView.this.getBannerListener() != null) {
                    BaseBannerView.this.getBannerListener().onError(appnextError);
                }
            }

            @Override // com.appnext.banners.BannerListener
            public final void adImpression() {
                if (BaseBannerView.this.getBannerListener() != null) {
                    BaseBannerView.this.getBannerListener().adImpression();
                }
            }
        });
        getBannerAdapter().parseAttributeSet(attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            if (getBannerAdapter().getBannerSize() != null) {
                Context context = getContext();
                int width = (int) (getBannerAdapter().getBannerSize().getWidth() * context.getResources().getDisplayMetrics().scaledDensity);
                i3 = (int) (getBannerAdapter().getBannerSize().getHeight() * context.getResources().getDisplayMetrics().scaledDensity);
                i4 = width;
            } else {
                i3 = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            i4 = childAt.getMeasuredWidth();
            i3 = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(i4, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(i3, getSuggestedMinimumHeight()), i2));
    }

    public void setPlacementId(String str) {
        getBannerAdapter().setPlacementId(str);
    }

    public void setBannerSize(BannerSize bannerSize) {
        getBannerAdapter().setBannerSize(bannerSize);
    }

    public void setBannerListener(BannerListener bannerListener) {
        getBannerAdapter().setBannerListener(bannerListener);
    }

    public void loadAd(BannerAdRequest bannerAdRequest) {
        getBannerAdapter().loadAd(bannerAdRequest);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void getECPM(BannerAdRequest bannerAdRequest, OnECPMLoaded onECPMLoaded) {
        getBannerAdapter().getECPM(bannerAdRequest, onECPMLoaded);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void impression() {
        getBannerAdapter().impression();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onScrollChanged() {
        getBannerAdapter().onScrollChanged(getVisiblePercent(this));
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        try {
            getBannerAdapter().onWindowVisibilityChanged(i);
        } catch (Throwable unused) {
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        impression();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        impression();
    }

    private boolean isViewPartiallyVisible(View view) {
        try {
            if (getParent() == null) {
                return false;
            }
            Rect rect = new Rect();
            ((ViewGroup) getParent()).getHitRect(rect);
            return view.getLocalVisibleRect(rect);
        } catch (Throwable unused) {
            return false;
        }
    }

    public int getVisiblePercent(View view) {
        if (!isViewPartiallyVisible(this) || getWindowVisibility() == 8 || getWindowVisibility() == 4) {
            return 0;
        }
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return (int) (((rect.width() * rect.height()) * 100.0d) / (view.getWidth() * view.getHeight()));
    }

    String getPlacementId() {
        return getBannerAdapter().getPlacementId();
    }

    BannerListener getBannerListener() {
        return this.bannerListener;
    }

    public void destroy() {
        getBannerAdapter().destroy();
        this.bannerAdapter = null;
        try {
            getViewTreeObserver().removeOnScrollChangedListener(this.onScrollChangedListener);
        } catch (Throwable unused) {
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        destroy();
    }

    private void play() {
        try {
            getBannerAdapter().play();
        } catch (Throwable unused) {
        }
    }

    private void pause() {
        try {
            getBannerAdapter().pause();
        } catch (Throwable unused) {
        }
    }

    public boolean isClickEnabled() {
        return getBannerAdapter().isClickEnabled();
    }

    public void setClickEnabled(boolean z) {
        getBannerAdapter().setClickEnabled(z);
    }

    public void setParams(String str, String str2) {
        d.S().s(str, str2);
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String str) {
        this.language = str;
        this.bannerAdapter.setLanguage(str);
    }
}
