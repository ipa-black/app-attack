package com.criteo.publisher.f0;

import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendingQueueLogMessage.kt */
/* loaded from: classes2.dex */
public final class c0 {
    static {
        new c0();
    }

    private c0() {
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(Throwable exception) {
        Intrinsics.checkParameterIsNotNull(exception, "exception");
        return new com.criteo.publisher.logging.e(5, "Error while reading queue file. Recovering by recreating it or using in-memory queue", exception, "onRecoveringFromStaleQueueFile");
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(Exception exception) {
        Intrinsics.checkParameterIsNotNull(exception, "exception");
        return new com.criteo.publisher.logging.e(5, "Error when polling element from queue file", exception, "onErrorWhenPollingQueueFile");
    }
}
