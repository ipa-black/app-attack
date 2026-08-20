package com.google.common.base;

import javax.annotation.CheckForNull;
@FunctionalInterface
@ElementTypesAreNonnullByDefault
/* loaded from: classes4.dex */
public interface Function<F, T> extends java.util.function.Function<F, T> {
    @Override // java.util.function.Function
    @ParametricNullness
    T apply(@ParametricNullness F f2);

    boolean equals(@CheckForNull Object obj);
}
