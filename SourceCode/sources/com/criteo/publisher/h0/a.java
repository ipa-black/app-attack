package com.criteo.publisher.h0;

import com.criteo.publisher.Bid;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppBiddingLogMessage.kt */
/* loaded from: classes2.dex */
public final class a {
    static {
        new a();
    }

    private a() {
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(Bid bid) {
        return new com.criteo.publisher.logging.e(0, "Attempting to set bids as AppBidding from bid " + (bid != null ? com.criteo.publisher.c.a(bid) : null), null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(com.criteo.publisher.i0.a integration) {
        Intrinsics.checkParameterIsNotNull(integration, "integration");
        return new com.criteo.publisher.logging.e(0, "Failed to set bids as " + integration + ": No bid found", null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(com.criteo.publisher.i0.a integration, String enrichment) {
        Intrinsics.checkParameterIsNotNull(integration, "integration");
        Intrinsics.checkParameterIsNotNull(enrichment, "enrichment");
        return new com.criteo.publisher.logging.e(0, integration + " bid set as targeting: " + enrichment, null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(Object obj) {
        return new com.criteo.publisher.logging.e(6, "Failed to set bids: unknown '" + (obj != null ? obj.getClass() : null) + "' object given", null, "onUnknownAdObjectEnriched", 4, null);
    }
}
