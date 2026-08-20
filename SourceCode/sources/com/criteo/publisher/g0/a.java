package com.criteo.publisher.g0;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LazyDependency.kt */
/* loaded from: classes2.dex */
public final class a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Lazy f8843a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8844b;

    private final T b() {
        return (T) this.f8843a.getValue();
    }

    public a(String str, Function0<? extends T> supplier) {
        Intrinsics.checkParameterIsNotNull(supplier, "supplier");
        this.f8844b = str;
        this.f8843a = LazyKt.lazy(supplier);
    }

    public final T a() {
        return b();
    }

    public String toString() {
        String sb;
        String str = this.f8844b;
        return (str == null || (sb = new StringBuilder("LazyDependency(").append(str).append(')').toString()) == null) ? super.toString() : sb;
    }
}
