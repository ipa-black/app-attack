package com.criteo.publisher;

import com.criteo.publisher.i0.a;
import com.criteo.publisher.model.AdUnit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BiddingLogMessage.kt */
/* loaded from: classes2.dex */
public final class f {
    static {
        new f();
    }

    private f() {
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(AdUnit adUnit, Bid bid) {
        Intrinsics.checkParameterIsNotNull(adUnit, "adUnit");
        return new com.criteo.publisher.logging.e(0, "Getting bid response for " + adUnit + ". Bid: " + (bid != null ? c.a(bid) : null) + ", price: " + (bid != null ? Double.valueOf(bid.getPrice()) : null), null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(int i) {
        return new com.criteo.publisher.logging.e(0, "Silent mode is enabled, no requests will be fired for the next " + i + " seconds", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(com.criteo.publisher.model.n adUnit) {
        Intrinsics.checkParameterIsNotNull(adUnit, "adUnit");
        return new com.criteo.publisher.logging.e(5, "Found an invalid AdUnit: " + adUnit, null, "onInvalidAdUnit", 4, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(com.criteo.publisher.model.n cacheAdUnit, a integration) {
        Intrinsics.checkParameterIsNotNull(cacheAdUnit, "cacheAdUnit");
        Intrinsics.checkParameterIsNotNull(integration, "integration");
        return new com.criteo.publisher.logging.e(6, cacheAdUnit + " requested but it is not supported for " + integration, null, "onUnsupportedAdFormat", 4, null);
    }
}
