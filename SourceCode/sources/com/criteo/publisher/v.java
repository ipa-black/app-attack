package com.criteo.publisher;

import com.criteo.publisher.logging.a;
import java.lang.reflect.Method;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
/* compiled from: ErrorLogMessage.kt */
/* loaded from: classes2.dex */
public final class v {
    static {
        new v();
    }

    private v() {
    }

    @JvmStatic
    @a.InterfaceC0251a
    public static final com.criteo.publisher.logging.e b(Throwable throwable) {
        String className;
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        StringBuilder sb = new StringBuilder("Internal error in ");
        Method enclosingMethod = new com.criteo.publisher.logging.b().getClass().getEnclosingMethod();
        String str = null;
        if (enclosingMethod != null) {
            if (enclosingMethod.isAnnotationPresent(a.InterfaceC0251a.class)) {
                a aVar = a.f8956a;
                StackTraceElement stackTraceElement = (StackTraceElement) SequencesKt.elementAtOrNull(SequencesKt.asSequence(ArrayIteratorKt.iterator(new Exception().getStackTrace())), 1);
                if (stackTraceElement != null) {
                    Intrinsics.checkExpressionValueIsNotNull(stackTraceElement.getClassName(), "stackTraceElement.className");
                    str = StringsKt.removePrefix(className, (CharSequence) "com.criteo.publisher.") + '#' + stackTraceElement.getMethodName() + ':' + stackTraceElement.getLineNumber();
                }
            } else {
                str = a.a(a.f8956a, enclosingMethod);
            }
        }
        return new com.criteo.publisher.logging.e(6, sb.append(str).toString(), throwable, "onUncaughtErrorAtPublicApi");
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e c(Throwable throwable) {
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        return new com.criteo.publisher.logging.e(6, "Uncaught error in thread", throwable, "onUncaughtErrorInThread");
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e a(Throwable throwable) {
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        return new com.criteo.publisher.logging.e(6, "Assertion failed", throwable, "onAssertFailed");
    }

    @JvmStatic
    public static final com.criteo.publisher.logging.e d(Throwable throwable) {
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        return new com.criteo.publisher.logging.e(4, "Uncaught expected exception in thread", throwable, "onUncaughtExpectedExceptionInThread");
    }
}
