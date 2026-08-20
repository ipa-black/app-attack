package com.applovin.impl.mediation.nativeAds.a;

import android.content.Context;
import com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl;
import com.applovin.impl.mediation.d;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import java.util.LinkedList;
import java.util.Queue;
/* loaded from: classes.dex */
public class b extends MaxNativeAdListener implements MaxAdRevenueListener {

    /* renamed from: a  reason: collision with root package name */
    private final int f5332a;

    /* renamed from: b  reason: collision with root package name */
    private final MaxNativeAdLoader f5333b;

    /* renamed from: c  reason: collision with root package name */
    private final Queue<MaxAd> f5334c = new LinkedList();

    /* renamed from: d  reason: collision with root package name */
    private boolean f5335d = false;

    /* renamed from: e  reason: collision with root package name */
    private final Object f5336e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private a f5337f;

    /* loaded from: classes.dex */
    public interface a {
        void onAdRevenuePaid(MaxAd maxAd);

        void onNativeAdClicked(MaxAd maxAd);

        void onNativeAdLoadFailed(String str, MaxError maxError);

        void onNativeAdLoaded();
    }

    public b(String str, int i, Context context, a aVar) {
        this.f5332a = i;
        this.f5337f = aVar;
        MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader(str, context);
        this.f5333b = maxNativeAdLoader;
        maxNativeAdLoader.setNativeAdListener(this);
        maxNativeAdLoader.setRevenueListener(this);
        maxNativeAdLoader.setLocalExtraParameter(MaxNativeAdLoaderImpl.KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE, d.a.NATIVE_AD_PLACER);
    }

    public void a() {
        this.f5337f = null;
        e();
        this.f5333b.destroy();
    }

    public void a(MaxAd maxAd) {
        this.f5333b.destroy(maxAd);
    }

    public boolean a(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        return this.f5333b.render(maxNativeAdView, maxAd);
    }

    public boolean b() {
        boolean z;
        synchronized (this.f5336e) {
            z = !this.f5334c.isEmpty();
        }
        return z;
    }

    public void c() {
        synchronized (this.f5336e) {
            if (!this.f5335d && this.f5334c.size() < this.f5332a) {
                this.f5335d = true;
                this.f5333b.loadAd();
            }
        }
    }

    public MaxAd d() {
        MaxAd maxAd;
        synchronized (this.f5336e) {
            maxAd = null;
            while (!this.f5334c.isEmpty() && (maxAd == null || maxAd.getNativeAd().isExpired())) {
                maxAd = this.f5334c.remove();
            }
            c();
        }
        return maxAd;
    }

    public void e() {
        synchronized (this.f5336e) {
            for (MaxAd maxAd : this.f5334c) {
                a(maxAd);
            }
            this.f5334c.clear();
        }
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(MaxAd maxAd) {
        a aVar = this.f5337f;
        if (aVar != null) {
            aVar.onAdRevenuePaid(maxAd);
        }
    }

    @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
    public void onNativeAdClicked(MaxAd maxAd) {
        a aVar = this.f5337f;
        if (aVar != null) {
            aVar.onNativeAdClicked(maxAd);
        }
    }

    @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
    public void onNativeAdLoadFailed(String str, MaxError maxError) {
        a aVar = this.f5337f;
        if (aVar != null) {
            aVar.onNativeAdLoadFailed(str, maxError);
        }
    }

    @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
    public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        synchronized (this.f5336e) {
            this.f5334c.add(maxAd);
            this.f5335d = false;
            c();
        }
        a aVar = this.f5337f;
        if (aVar != null) {
            aVar.onNativeAdLoaded();
        }
    }
}
