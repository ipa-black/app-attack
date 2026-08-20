package com.criteo.publisher.k0;

import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NetworkLogMessage.kt */
/* loaded from: classes2.dex */
public final class f {
    static {
        new f();
    }

    private f() {
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e b(String requestPayload) {
        Intrinsics.checkParameterIsNotNull(requestPayload, "requestPayload");
        return new com.criteo.publisher.logging.e(0, "CDB Request initiated: " + requestPayload, null, null, 13, null);
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(String responsePayload) {
        Intrinsics.checkParameterIsNotNull(responsePayload, "responsePayload");
        return new com.criteo.publisher.logging.e(0, "CDB Response received: " + responsePayload, null, null, 13, null);
    }
}
