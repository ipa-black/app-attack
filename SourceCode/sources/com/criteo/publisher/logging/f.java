package com.criteo.publisher.logging;

import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: LogTag.kt */
/* loaded from: classes2.dex */
public final class f {
    static {
        new f();
    }

    private f() {
    }

    @JvmStatic
    public static final String a(String str) {
        Intrinsics.checkParameterIsNotNull(str, "str");
        return StringsKt.take("CriteoSdk" + str, 23);
    }
}
