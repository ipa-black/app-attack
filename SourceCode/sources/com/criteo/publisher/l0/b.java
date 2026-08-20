package com.criteo.publisher.l0;

import com.criteo.publisher.logging.e;
import kotlin.jvm.JvmStatic;
/* compiled from: PrivacyLogMessage.kt */
/* loaded from: classes2.dex */
public final class b {
    static {
        new b();
    }

    private b() {
    }

    @JvmStatic
    public static final e a(String str) {
        return new e(0, "MoPub consent set: " + str, null, null, 13, null);
    }

    @JvmStatic
    public static final e a(boolean z) {
        return new e(0, "CCPA opt-out set: " + z, null, null, 13, null);
    }
}
