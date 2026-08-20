package com.appodeal.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.native_ad.views.NativeAdViewContainer;
import com.appodeal.ads.unified.UnifiedNativeAd;
import com.appodeal.ads.utils.d0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Timer;
/* loaded from: classes.dex */
public class NativeAdView extends NativeAdViewContainer {

    /* renamed from: c  reason: collision with root package name */
    public View f6389c;

    /* renamed from: d  reason: collision with root package name */
    public View f6390d;

    /* renamed from: e  reason: collision with root package name */
    public View f6391e;

    /* renamed from: f  reason: collision with root package name */
    public View f6392f;

    /* renamed from: g  reason: collision with root package name */
    public View f6393g;

    /* renamed from: h  reason: collision with root package name */
    public NativeIconView f6394h;
    public NativeMediaView i;
    public l2 j;

    public NativeAdView(Context context) {
        super(context);
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void destroy() {
        h1.j.a(null);
        l2 l2Var = this.j;
        if (l2Var != null) {
            l2Var.destroy();
        }
    }

    public View getCallToActionView() {
        return this.f6390d;
    }

    public List<View> getClickableViews() {
        ArrayList arrayList = new ArrayList();
        View view = this.f6389c;
        if (view != null) {
            arrayList.add(view);
        }
        View view2 = this.f6392f;
        if (view2 != null) {
            arrayList.add(view2);
        }
        View view3 = this.f6390d;
        if (view3 != null) {
            arrayList.add(view3);
        }
        View view4 = this.f6391e;
        if (view4 != null) {
            arrayList.add(view4);
        }
        NativeIconView nativeIconView = this.f6394h;
        if (nativeIconView != null) {
            arrayList.add(nativeIconView);
        }
        NativeMediaView nativeMediaView = this.i;
        if (nativeMediaView != null) {
            arrayList.add(nativeMediaView);
        }
        return arrayList;
    }

    public View getDescriptionView() {
        return this.f6392f;
    }

    public View getNativeIconView() {
        return this.f6394h;
    }

    public NativeMediaView getNativeMediaView() {
        return this.i;
    }

    public View getProviderView() {
        return this.f6393g;
    }

    public View getRatingView() {
        return this.f6391e;
    }

    public View getTitleView() {
        return this.f6389c;
    }

    public void registerView(NativeAd nativeAd) {
        registerView(nativeAd, RewardedVideo.VIDEO_MODE_DEFAULT);
    }

    public void registerView(NativeAd nativeAd, String str) {
        Timer timer;
        Timer timer2;
        h1.f6706h.a();
        NativeIconView nativeIconView = this.f6394h;
        if (nativeIconView != null) {
            nativeIconView.removeAllViews();
        }
        NativeMediaView nativeMediaView = this.i;
        if (nativeMediaView != null) {
            nativeMediaView.removeAllViews();
        }
        l2 l2Var = this.j;
        if (l2Var != null) {
            NativeAdView nativeAdView = l2Var.n;
            if (nativeAdView != null) {
                nativeAdView.setOnClickListener(null);
                for (View view : nativeAdView.getClickableViews()) {
                    if (!(view instanceof g2)) {
                        view.setOnClickListener(null);
                    }
                }
            }
            HashMap hashMap = com.appodeal.ads.utils.d0.f7759a;
            synchronized (hashMap) {
                d0.a aVar = (d0.a) hashMap.get(l2Var);
                if (aVar != null) {
                    aVar.b();
                    hashMap.remove(l2Var);
                }
            }
            g2 g2Var = l2Var.o;
            if (g2Var != null && (timer2 = g2Var.i) != null) {
                timer2.cancel();
                g2Var.i = null;
            }
            UnifiedNativeAd unifiedNativeAd = l2Var.f6834b;
            if (unifiedNativeAd != null) {
                unifiedNativeAd.onUnregisterForInteraction();
            }
        }
        l2 l2Var2 = (l2) nativeAd;
        this.j = l2Var2;
        if (l2Var2 != null) {
            NativeAdView nativeAdView2 = l2Var2.n;
            if (nativeAdView2 != null) {
                nativeAdView2.setOnClickListener(null);
                for (View view2 : nativeAdView2.getClickableViews()) {
                    if (!(view2 instanceof g2)) {
                        view2.setOnClickListener(null);
                    }
                }
            }
            HashMap hashMap2 = com.appodeal.ads.utils.d0.f7759a;
            synchronized (hashMap2) {
                d0.a aVar2 = (d0.a) hashMap2.get(l2Var2);
                if (aVar2 != null) {
                    aVar2.b();
                    hashMap2.remove(l2Var2);
                }
            }
            g2 g2Var2 = l2Var2.o;
            if (g2Var2 != null && (timer = g2Var2.i) != null) {
                timer.cancel();
                g2Var2.i = null;
            }
            UnifiedNativeAd unifiedNativeAd2 = l2Var2.f6834b;
            if (unifiedNativeAd2 != null) {
                unifiedNativeAd2.onUnregisterForInteraction();
            }
        }
        NativeIconView nativeIconView2 = this.f6394h;
        if (nativeIconView2 != null) {
            this.j.a(nativeIconView2);
        }
        NativeMediaView nativeMediaView2 = this.i;
        if (nativeMediaView2 != null) {
            this.j.a(nativeMediaView2);
        }
        this.j.a(this, str);
    }

    public void setCallToActionView(View view) {
        h1.f6700b.a(null);
        this.f6390d = view;
    }

    public void setDescriptionView(View view) {
        h1.f6702d.a(null);
        this.f6392f = view;
    }

    public void setNativeIconView(NativeIconView nativeIconView) {
        h1.f6704f.a(null);
        this.f6394h = nativeIconView;
    }

    public void setNativeMediaView(NativeMediaView nativeMediaView) {
        h1.f6705g.a(null);
        this.i = nativeMediaView;
    }

    public void setProviderView(View view) {
        h1.f6703e.a(null);
        this.f6393g = view;
    }

    public void setRatingView(View view) {
        h1.f6701c.a(null);
        this.f6391e = view;
    }

    public void setTitleView(View view) {
        h1.f6699a.a(null);
        this.f6389c = view;
    }

    public void unregisterViewForInteraction() {
        Timer timer;
        h1.i.a(null);
        l2 l2Var = this.j;
        if (l2Var != null) {
            NativeAdView nativeAdView = l2Var.n;
            if (nativeAdView != null) {
                nativeAdView.setOnClickListener(null);
                for (View view : nativeAdView.getClickableViews()) {
                    if (!(view instanceof g2)) {
                        view.setOnClickListener(null);
                    }
                }
            }
            HashMap hashMap = com.appodeal.ads.utils.d0.f7759a;
            synchronized (hashMap) {
                d0.a aVar = (d0.a) hashMap.get(l2Var);
                if (aVar != null) {
                    aVar.b();
                    hashMap.remove(l2Var);
                }
            }
            g2 g2Var = l2Var.o;
            if (g2Var != null && (timer = g2Var.i) != null) {
                timer.cancel();
                g2Var.i = null;
            }
            UnifiedNativeAd unifiedNativeAd = l2Var.f6834b;
            if (unifiedNativeAd != null) {
                unifiedNativeAd.onUnregisterForInteraction();
            }
        }
    }
}
