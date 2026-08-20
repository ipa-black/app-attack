package com.criteo.publisher.advancednative;

import com.criteo.publisher.Bid;
import com.criteo.publisher.model.NativeAdUnit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NativeLogMessage.kt */
/* loaded from: classes2.dex */
public final class m {
    static {
        new m();
    }

    private m() {
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e c(NativeAdUnit nativeAdUnit) {
        return new com.criteo.publisher.logging.e(0, "NativeLoader initialized for " + nativeAdUnit, null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e e(CriteoNativeLoader nativeLoader) {
        Intrinsics.checkParameterIsNotNull(nativeLoader, "nativeLoader");
        return new com.criteo.publisher.logging.e(0, "Native(" + nativeLoader.adUnit + ") is loading", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(CriteoNativeLoader nativeLoader, Bid bid) {
        Intrinsics.checkParameterIsNotNull(nativeLoader, "nativeLoader");
        return new com.criteo.publisher.logging.e(0, "Native(" + nativeLoader.adUnit + ") is loading with bid " + (bid != null ? com.criteo.publisher.c.a(bid) : null), null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e d(CriteoNativeLoader criteoNativeLoader) {
        return new com.criteo.publisher.logging.e(0, "Native(" + (criteoNativeLoader != null ? criteoNativeLoader.adUnit : null) + ") is loaded", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e b(CriteoNativeLoader criteoNativeLoader) {
        return new com.criteo.publisher.logging.e(0, "Native(" + (criteoNativeLoader != null ? criteoNativeLoader.adUnit : null) + ") failed to load", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e c(CriteoNativeLoader criteoNativeLoader) {
        return b(criteoNativeLoader != null ? criteoNativeLoader.adUnit : null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e b(NativeAdUnit nativeAdUnit) {
        return new com.criteo.publisher.logging.e(0, "Native(" + nativeAdUnit + ") impression registered", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(CriteoNativeLoader criteoNativeLoader) {
        return a(criteoNativeLoader != null ? criteoNativeLoader.adUnit : null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(NativeAdUnit nativeAdUnit) {
        return new com.criteo.publisher.logging.e(0, "Native(" + nativeAdUnit + ") clicked", null, null, 13, null);
    }
}
