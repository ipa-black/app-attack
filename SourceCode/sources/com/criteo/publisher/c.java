package com.criteo.publisher;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BidExt.kt */
/* loaded from: classes2.dex */
public final class c {
    public static final String a(Bid loggingId) {
        Intrinsics.checkParameterIsNotNull(loggingId, "$this$loggingId");
        String hexString = Integer.toHexString(loggingId.hashCode());
        Intrinsics.checkExpressionValueIsNotNull(hexString, "Integer.toHexString(hashCode())");
        return hexString;
    }
}
