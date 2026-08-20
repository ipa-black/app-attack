package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class G6 {

    /* renamed from: a  reason: collision with root package name */
    public static final G6 f12972a = new G6();

    private G6() {
    }

    @JvmStatic
    public static final F6 a(Throwable th) {
        return f12972a.a(th, 1, 0);
    }

    private final F6 a(Throwable th, int i, int i2) {
        StackTraceElement[] stackTraceElementArr;
        F6 f6;
        ArrayList arrayList;
        String name = th.getClass().getName();
        String message = th.getMessage();
        try {
            stackTraceElementArr = th.getStackTrace();
        } catch (Throwable unused) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        Intrinsics.checkNotNullExpressionValue(stackTraceElementArr, "Utils.getStackTraceSafely(throwable)");
        ArrayList arrayList2 = new ArrayList(stackTraceElementArr.length);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList2.add(new D6(stackTraceElement));
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            if (i2 >= i) {
                cause = null;
            }
            if (cause != null) {
                f6 = f12972a.a(cause, 30, i2 + 1);
                if (A2.a(19) || i2 >= i) {
                    arrayList = null;
                } else {
                    Throwable[] suppressed = th.getSuppressed();
                    Intrinsics.checkNotNullExpressionValue(suppressed, "throwable.suppressed");
                    arrayList = new ArrayList(suppressed.length);
                    for (Throwable it : suppressed) {
                        G6 g6 = f12972a;
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        arrayList.add(g6.a(it, 1, i2));
                    }
                }
                return new F6(name, message, arrayList2, f6, arrayList);
            }
        }
        f6 = null;
        if (A2.a(19)) {
        }
        arrayList = null;
        return new F6(name, message, arrayList2, f6, arrayList);
    }
}
