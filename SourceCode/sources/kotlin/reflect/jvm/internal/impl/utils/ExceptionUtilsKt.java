package kotlin.reflect.jvm.internal.impl.utils;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: exceptionUtils.kt */
/* loaded from: classes5.dex */
public final class ExceptionUtilsKt {
    public static final RuntimeException rethrow(Throwable e2) {
        Intrinsics.checkNotNullParameter(e2, "e");
        throw e2;
    }

    public static final boolean isProcessCanceledException(Throwable th) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Class<?> cls = th.getClass();
        while (!Intrinsics.areEqual(cls.getCanonicalName(), "com.intellij.openapi.progress.ProcessCanceledException")) {
            cls = cls.getSuperclass();
            if (cls == null) {
                return false;
            }
        }
        return true;
    }
}
