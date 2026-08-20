package com.criteo.publisher.j0;

import com.criteo.publisher.Bid;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.c;
import com.criteo.publisher.logging.a;
import com.criteo.publisher.logging.e;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.criteo.publisher.o;
import java.lang.reflect.Method;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
/* compiled from: InterstitialLogMessage.kt */
/* loaded from: classes2.dex */
public final class b {
    static {
        new b();
    }

    private b() {
    }

    @JvmStatic
    public static final e a(InterstitialAdUnit interstitialAdUnit) {
        return new e(0, "Interstitial initialized for " + interstitialAdUnit, null, null, 13, null);
    }

    @JvmStatic
    public static final e c(CriteoInterstitial interstitial) {
        Intrinsics.checkParameterIsNotNull(interstitial, "interstitial");
        return new e(0, "Interstitial(" + o.a(interstitial) + ") is loading", null, null, 13, null);
    }

    @JvmStatic
    public static final e a(CriteoInterstitial interstitial, Bid bid) {
        Intrinsics.checkParameterIsNotNull(interstitial, "interstitial");
        return new e(0, "Interstitial(" + o.a(interstitial) + ") is loading with bid " + (bid != null ? c.a(bid) : null), null, null, 13, null);
    }

    @JvmStatic
    public static final e b(CriteoInterstitial criteoInterstitial) {
        return new e(0, "Interstitial(" + (criteoInterstitial != null ? o.a(criteoInterstitial) : null) + ") is loaded", null, null, 13, null);
    }

    @JvmStatic
    public static final e a(CriteoInterstitial criteoInterstitial) {
        return new e(0, "Interstitial(" + (criteoInterstitial != null ? o.a(criteoInterstitial) : null) + ") failed to load", null, null, 13, null);
    }

    @JvmStatic
    public static final e a(CriteoInterstitial interstitial, boolean z) {
        Intrinsics.checkParameterIsNotNull(interstitial, "interstitial");
        return new e(0, "Interstitial(" + o.a(interstitial) + ") is isAdLoaded=" + z, null, null, 13, null);
    }

    @JvmStatic
    public static final e d(CriteoInterstitial interstitial) {
        Intrinsics.checkParameterIsNotNull(interstitial, "interstitial");
        return new e(0, "Interstitial(" + o.a(interstitial) + ") is showing", null, null, 13, null);
    }

    @JvmStatic
    @a.InterfaceC0251a
    public static final e a() {
        String className;
        StringBuilder sb = new StringBuilder("Calling ");
        Method enclosingMethod = new com.criteo.publisher.logging.b().getClass().getEnclosingMethod();
        String str = null;
        if (enclosingMethod != null) {
            if (enclosingMethod.isAnnotationPresent(a.InterfaceC0251a.class)) {
                com.criteo.publisher.logging.a aVar = com.criteo.publisher.logging.a.f8956a;
                StackTraceElement stackTraceElement = (StackTraceElement) SequencesKt.elementAtOrNull(SequencesKt.asSequence(ArrayIteratorKt.iterator(new Exception().getStackTrace())), 1);
                if (stackTraceElement != null) {
                    Intrinsics.checkExpressionValueIsNotNull(stackTraceElement.getClassName(), "stackTraceElement.className");
                    str = StringsKt.removePrefix(className, (CharSequence) "com.criteo.publisher.") + '#' + stackTraceElement.getMethodName() + ':' + stackTraceElement.getLineNumber();
                }
            } else {
                str = com.criteo.publisher.logging.a.a(com.criteo.publisher.logging.a.f8956a, enclosingMethod);
            }
        }
        return new e(5, sb.append(str).append(" with a null application").toString(), null, "onMethodCalledWithNullApplication", 4, null);
    }
}
