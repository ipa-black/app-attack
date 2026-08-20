package com.applovin.mediation.nativeAds.adPlacer;

import android.content.Context;
import android.view.View;
import com.applovin.impl.mediation.a.d;
import com.applovin.impl.mediation.nativeAds.a.a;
import com.applovin.impl.mediation.nativeAds.a.b;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes.dex */
public class MaxAdPlacer implements b.a {

    /* renamed from: a  reason: collision with root package name */
    private AppLovinSdkUtils.Size f6305a;

    /* renamed from: b  reason: collision with root package name */
    private MaxNativeAdViewBinder f6306b;

    /* renamed from: c  reason: collision with root package name */
    private final a f6307c;

    /* renamed from: d  reason: collision with root package name */
    private final b f6308d;

    /* renamed from: e  reason: collision with root package name */
    private Listener f6309e;
    protected final v logger;
    protected final n sdk;

    /* loaded from: classes.dex */
    public interface Listener {
        void onAdClicked(MaxAd maxAd);

        void onAdLoaded(int i);

        void onAdRemoved(int i);

        void onAdRevenuePaid(MaxAd maxAd);
    }

    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, Context context) {
        this(maxAdPlacerSettings, AppLovinSdk.getInstance(context), context);
    }

    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, AppLovinSdk appLovinSdk, Context context) {
        this.f6305a = AppLovinSdkUtils.Size.ZERO;
        n nVar = appLovinSdk.coreSdk;
        this.sdk = nVar;
        v D = nVar.D();
        this.logger = D;
        this.f6307c = new a(maxAdPlacerSettings);
        this.f6308d = new b(maxAdPlacerSettings.getAdUnitId(), maxAdPlacerSettings.getMaxPreloadedAdCount(), context, this);
        if (v.a()) {
            D.b("MaxAdPlacer", "Initializing ad placer with settings: " + maxAdPlacerSettings);
        }
    }

    private void a() {
        int a2;
        while (this.f6308d.b() && (a2 = this.f6307c.a()) != -1) {
            if (v.a()) {
                this.logger.b("MaxAdPlacer", "Placing ad at position: " + a2);
            }
            this.f6307c.a(this.f6308d.d(), a2);
            Listener listener = this.f6309e;
            if (listener != null) {
                listener.onAdLoaded(a2);
            }
        }
    }

    private void a(Collection<Integer> collection, Runnable runnable) {
        for (Integer num : collection) {
            this.f6308d.a(this.f6307c.c(num.intValue()));
        }
        runnable.run();
        if (collection.isEmpty()) {
            return;
        }
        if (v.a()) {
            this.logger.b("MaxAdPlacer", "Removed " + collection.size() + " ads from stream: " + collection);
        }
        if (this.f6309e != null) {
            for (Integer num2 : collection) {
                this.f6309e.onAdRemoved(num2.intValue());
            }
        }
    }

    public void clearAds() {
        a(this.f6307c.b(), new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.1
            @Override // java.lang.Runnable
            public void run() {
                v vVar = MaxAdPlacer.this.logger;
                if (v.a()) {
                    MaxAdPlacer.this.logger.b("MaxAdPlacer", "Clearing all cached ads");
                }
                MaxAdPlacer.this.f6307c.c();
                MaxAdPlacer.this.f6308d.e();
            }
        });
    }

    public Collection<Integer> clearTrailingAds(final int i) {
        final Collection<Integer> d2 = this.f6307c.d(i);
        if (!d2.isEmpty()) {
            a(d2, new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.2
                @Override // java.lang.Runnable
                public void run() {
                    v vVar = MaxAdPlacer.this.logger;
                    if (v.a()) {
                        MaxAdPlacer.this.logger.b("MaxAdPlacer", "Clearing trailing ads after position " + i);
                    }
                    MaxAdPlacer.this.f6307c.a(d2);
                }
            });
        }
        return d2;
    }

    public void destroy() {
        if (v.a()) {
            this.logger.b("MaxAdPlacer", "Destroying ad placer");
        }
        clearAds();
        this.f6308d.a();
    }

    public long getAdItemId(int i) {
        if (isFilledPosition(i)) {
            return -System.identityHashCode(this.f6307c.c(i));
        }
        return 0L;
    }

    public AppLovinSdkUtils.Size getAdSize(int i, int i2) {
        if (isFilledPosition(i)) {
            boolean z = this.f6305a != AppLovinSdkUtils.Size.ZERO;
            int min = Math.min(z ? this.f6305a.getWidth() : 360, i2);
            d dVar = (d) this.f6307c.c(i);
            if ("small_template_1".equalsIgnoreCase(dVar.A())) {
                return new AppLovinSdkUtils.Size(min, z ? this.f6305a.getHeight() : 120);
            } else if (MaxNativeAdView.MEDIUM_TEMPLATE_1.equalsIgnoreCase(dVar.A())) {
                return new AppLovinSdkUtils.Size(min, (int) (min / (z ? this.f6305a.getWidth() / this.f6305a.getHeight() : 1.2d)));
            } else if (z) {
                return this.f6305a;
            } else {
                if (dVar.z() != null) {
                    View mainView = dVar.z().getMainView();
                    return new AppLovinSdkUtils.Size(mainView.getMeasuredWidth(), mainView.getMeasuredHeight());
                }
            }
        }
        return AppLovinSdkUtils.Size.ZERO;
    }

    public int getAdjustedCount(int i) {
        return this.f6307c.e(i);
    }

    public int getAdjustedPosition(int i) {
        return this.f6307c.f(i);
    }

    public int getOriginalPosition(int i) {
        return this.f6307c.g(i);
    }

    public void insertItem(int i) {
        if (v.a()) {
            this.logger.b("MaxAdPlacer", "Inserting item at position: " + i);
        }
        this.f6307c.h(i);
    }

    public boolean isAdPosition(int i) {
        return this.f6307c.a(i);
    }

    public boolean isFilledPosition(int i) {
        return this.f6307c.b(i);
    }

    public void loadAds() {
        if (v.a()) {
            this.logger.b("MaxAdPlacer", "Loading ads");
        }
        this.f6308d.c();
    }

    public void moveItem(int i, int i2) {
        this.f6307c.b(i, i2);
    }

    @Override // com.applovin.impl.mediation.nativeAds.a.b.a
    public void onAdRevenuePaid(MaxAd maxAd) {
        Listener listener = this.f6309e;
        if (listener != null) {
            listener.onAdRevenuePaid(maxAd);
        }
    }

    @Override // com.applovin.impl.mediation.nativeAds.a.b.a
    public void onNativeAdClicked(MaxAd maxAd) {
        Listener listener = this.f6309e;
        if (listener != null) {
            listener.onAdClicked(maxAd);
        }
    }

    @Override // com.applovin.impl.mediation.nativeAds.a.b.a
    public void onNativeAdLoadFailed(String str, MaxError maxError) {
        if (v.a()) {
            this.logger.e("MaxAdPlacer", "Native ad failed to load: " + maxError);
        }
    }

    @Override // com.applovin.impl.mediation.nativeAds.a.b.a
    public void onNativeAdLoaded() {
        if (v.a()) {
            this.logger.b("MaxAdPlacer", "Native ad enqueued");
        }
        a();
    }

    public void removeItem(final int i) {
        a(isFilledPosition(i) ? Collections.singletonList(Integer.valueOf(i)) : Collections.emptyList(), new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.3
            @Override // java.lang.Runnable
            public void run() {
                v vVar = MaxAdPlacer.this.logger;
                if (v.a()) {
                    MaxAdPlacer.this.logger.b("MaxAdPlacer", "Removing item at position: " + i);
                }
                MaxAdPlacer.this.f6307c.i(i);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void renderAd(int r7, android.view.ViewGroup r8) {
        /*
            r6 = this;
            com.applovin.impl.mediation.nativeAds.a.a r0 = r6.f6307c
            com.applovin.mediation.MaxAd r0 = r0.c(r7)
            java.lang.String r1 = "MaxAdPlacer"
            if (r0 != 0) goto L25
            boolean r8 = com.applovin.impl.sdk.v.a()
            if (r8 == 0) goto L24
            com.applovin.impl.sdk.v r8 = r6.logger
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "An ad is not available for position: "
            r0.<init>(r2)
            java.lang.StringBuilder r7 = r0.append(r7)
            java.lang.String r7 = r7.toString()
            r8.b(r1, r7)
        L24:
            return
        L25:
            r2 = r0
            com.applovin.impl.mediation.a.d r2 = (com.applovin.impl.mediation.a.d) r2
            com.applovin.mediation.nativeAds.MaxNativeAdView r2 = r2.z()
            if (r2 == 0) goto L49
            boolean r0 = com.applovin.impl.sdk.v.a()
            if (r0 == 0) goto L8a
            com.applovin.impl.sdk.v r0 = r6.logger
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Using pre-rendered ad at position: "
            r3.<init>(r4)
        L3d:
            java.lang.StringBuilder r7 = r3.append(r7)
            java.lang.String r7 = r7.toString()
            r0.b(r1, r7)
            goto L8a
        L49:
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder r2 = r6.f6306b
            java.lang.String r3 = "Unable to render ad at position: "
            if (r2 == 0) goto Lb2
            com.applovin.mediation.nativeAds.MaxNativeAdView r2 = new com.applovin.mediation.nativeAds.MaxNativeAdView
            com.applovin.mediation.nativeAds.MaxNativeAdViewBinder r4 = r6.f6306b
            android.content.Context r5 = r8.getContext()
            r2.<init>(r4, r5)
            com.applovin.impl.mediation.nativeAds.a.b r4 = r6.f6308d
            boolean r0 = r4.a(r2, r0)
            if (r0 == 0) goto L72
            boolean r0 = com.applovin.impl.sdk.v.a()
            if (r0 == 0) goto L8a
            com.applovin.impl.sdk.v r0 = r6.logger
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Rendered ad at position: "
            r3.<init>(r4)
            goto L3d
        L72:
            boolean r0 = com.applovin.impl.sdk.v.a()
            if (r0 == 0) goto L8a
            com.applovin.impl.sdk.v r0 = r6.logger
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r3)
            java.lang.StringBuilder r7 = r4.append(r7)
            java.lang.String r7 = r7.toString()
            r0.e(r1, r7)
        L8a:
            int r7 = r8.getChildCount()
        L8e:
            if (r7 < 0) goto L9e
            android.view.View r0 = r8.getChildAt(r7)
            boolean r0 = r0 instanceof com.applovin.mediation.nativeAds.MaxNativeAdView
            if (r0 == 0) goto L9b
            r8.removeViewAt(r7)
        L9b:
            int r7 = r7 + (-1)
            goto L8e
        L9e:
            android.view.ViewParent r7 = r2.getParent()
            if (r7 == 0) goto Lad
            android.view.ViewParent r7 = r2.getParent()
            android.view.ViewGroup r7 = (android.view.ViewGroup) r7
            r7.removeView(r2)
        Lad:
            r7 = -1
            r8.addView(r2, r7, r7)
            return
        Lb2:
            boolean r8 = com.applovin.impl.sdk.v.a()
            if (r8 == 0) goto Ld0
            com.applovin.impl.sdk.v r8 = r6.logger
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r3)
            java.lang.StringBuilder r7 = r0.append(r7)
            java.lang.String r0 = ". If you're using a custom ad template, check that nativeAdViewBinder is set."
            java.lang.StringBuilder r7 = r7.append(r0)
            java.lang.String r7 = r7.toString()
            r8.e(r1, r7)
        Ld0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacer.renderAd(int, android.view.ViewGroup):void");
    }

    public void setAdSize(int i, int i2) {
        this.f6305a = new AppLovinSdkUtils.Size(i, i2);
    }

    public void setListener(Listener listener) {
        this.f6309e = listener;
    }

    public void setNativeAdViewBinder(MaxNativeAdViewBinder maxNativeAdViewBinder) {
        this.f6306b = maxNativeAdViewBinder;
    }

    public void updateFillablePositions(int i, int i2) {
        this.f6307c.a(i, i2);
        if (i == -1 || i2 == -1) {
            return;
        }
        a();
    }
}
