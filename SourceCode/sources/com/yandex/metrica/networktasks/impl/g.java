package com.yandex.metrica.networktasks.impl;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final h f16285a;

    public g() {
        this(new h());
    }

    public g(h timeProvider) {
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        this.f16285a = timeProvider;
    }

    public final boolean a(long j, long j2, String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.f16285a.getClass();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        return currentTimeMillis < j || currentTimeMillis - j >= j2;
    }
}
