package com.criteo.publisher.advancednative;

import com.criteo.publisher.CriteoErrorCode;
import java.lang.ref.Reference;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LoggingCriteoNativeAdListener.kt */
/* loaded from: classes2.dex */
public final class k implements CriteoNativeAdListener {

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f8668a;

    /* renamed from: b  reason: collision with root package name */
    private final CriteoNativeAdListener f8669b;

    /* renamed from: c  reason: collision with root package name */
    private final Reference<CriteoNativeLoader> f8670c;

    public k(CriteoNativeAdListener delegate, Reference<CriteoNativeLoader> nativeLoaderRef) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        Intrinsics.checkParameterIsNotNull(nativeLoaderRef, "nativeLoaderRef");
        this.f8669b = delegate;
        this.f8670c = nativeLoaderRef;
        com.criteo.publisher.logging.g b2 = com.criteo.publisher.logging.h.b(getClass());
        Intrinsics.checkExpressionValueIsNotNull(b2, "LoggerFactory.getLogger(javaClass)");
        this.f8668a = b2;
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdReceived(CriteoNativeAd nativeAd) {
        Intrinsics.checkParameterIsNotNull(nativeAd, "nativeAd");
        this.f8668a.a(m.d(this.f8670c.get()));
        this.f8669b.onAdReceived(nativeAd);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdFailedToReceive(CriteoErrorCode errorCode) {
        Intrinsics.checkParameterIsNotNull(errorCode, "errorCode");
        this.f8668a.a(m.b(this.f8670c.get()));
        this.f8669b.onAdFailedToReceive(errorCode);
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdImpression() {
        this.f8668a.a(m.c(this.f8670c.get()));
        this.f8669b.onAdImpression();
    }

    @Override // com.criteo.publisher.advancednative.CriteoNativeAdListener
    public void onAdClicked() {
        this.f8668a.a(m.a(this.f8670c.get()));
        this.f8669b.onAdClicked();
    }
}
