package com.appodeal.ads;

import com.appodeal.ads.Native;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.d0;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public final class m2 implements d0.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ l2 f6868a;

    public m2(l2 l2Var) {
        this.f6868a = l2Var;
    }

    @Override // com.appodeal.ads.utils.d0.b
    public final void a() {
        l2 l2Var = this.f6868a;
        l2Var.w = true;
        l2Var.f6834b.onAdImpression(l2Var.n);
        l2Var.a(l2Var.f6834b.getImpressionNotifyUrls());
        l2 l2Var2 = this.f6868a;
        l2Var2.f6835c.onAdShown(l2Var2.f6834b);
        l2 l2Var3 = this.f6868a;
        NativeAdView nativeAdView = l2Var3.n;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (nativeAdView.getTitleView() == null) {
            arrayList2.add("Title");
        } else {
            hashMap.put(nativeAdView.getTitleView(), "Title");
        }
        if (nativeAdView.getCallToActionView() == null) {
            arrayList2.add("CallToAction");
        } else {
            hashMap.put(nativeAdView.getCallToActionView(), "CallToAction");
        }
        if (nativeAdView.getNativeIconView() == null && nativeAdView.getNativeMediaView() == null) {
            arrayList2.add("NativeIconView/NativeMediaView");
        } else {
            if (Native.f6383c != Native.MediaAssetType.IMAGE) {
                hashMap.put(nativeAdView.getNativeIconView(), "NativeIconView");
            } else if (nativeAdView.getNativeIconView() != null) {
                arrayList.add("NativeIconView");
            }
            if (Native.f6383c != Native.MediaAssetType.ICON) {
                hashMap.put(nativeAdView.getNativeMediaView(), "NativeMediaView");
            } else if (nativeAdView.getNativeMediaView() != null) {
                arrayList.add("NativeMediaView");
            }
        }
        if (l2Var3.f6834b.obtainProviderView(nativeAdView.getContext()) != null) {
            if (nativeAdView.getProviderView() == null) {
                arrayList2.add("ProviderView");
            } else {
                hashMap.put(nativeAdView.getProviderView(), "ProviderView");
            }
        }
        if (!arrayList2.isEmpty()) {
            Log.log(new com.appodeal.ads.utils.exception_handler.a(String.format("Required assets: %s are not added to NativeAdView", arrayList2)));
        }
        if (!arrayList.isEmpty()) {
            Log.log(new com.appodeal.ads.utils.exception_handler.a(String.format("Non necessary assets: %s are not added to NativeAdView", arrayList)));
        }
        HashMap hashMap2 = (HashMap) l2.a(n5.a(nativeAdView), nativeAdView, hashMap);
        if (hashMap2.isEmpty()) {
            return;
        }
        Log.log(new com.appodeal.ads.utils.exception_handler.a(String.format("Required assets: %s are not visible or not found", hashMap2.values())));
    }

    @Override // com.appodeal.ads.utils.d0.b
    public final void b() {
        l2 l2Var = this.f6868a;
        l2Var.f6834b.onAdFinish();
        l2Var.a(l2Var.f6834b.getFinishNotifyUrls());
        l2 l2Var2 = this.f6868a;
        l2Var2.f6835c.onAdFinished(l2Var2.f6834b);
    }
}
