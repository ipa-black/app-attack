package com.yandex.metrica.impl.ob;

import java.math.BigDecimal;
import java.math.BigInteger;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Ol {

    /* renamed from: a  reason: collision with root package name */
    private static final BigInteger f13650a = BigInteger.valueOf(Long.MAX_VALUE);

    /* renamed from: b  reason: collision with root package name */
    private static final BigInteger f13651b = BigInteger.valueOf(Long.MIN_VALUE);

    public static final Pair a(BigDecimal bigDecimal) {
        int i = -bigDecimal.scale();
        BigInteger unscaledValue = bigDecimal.unscaledValue();
        Intrinsics.checkNotNullExpressionValue(unscaledValue, "value.unscaledValue()");
        while (true) {
            if (unscaledValue.compareTo(f13650a) <= 0 && unscaledValue.compareTo(f13651b) >= 0) {
                return TuplesKt.to(Long.valueOf(unscaledValue.longValue()), Integer.valueOf(i));
            }
            unscaledValue = unscaledValue.divide(BigInteger.TEN);
            Intrinsics.checkNotNullExpressionValue(unscaledValue, "bigIntMantissa.divide(BigInteger.TEN)");
            i++;
        }
    }
}
