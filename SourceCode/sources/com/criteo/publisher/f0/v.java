package com.criteo.publisher.f0;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: MetricSendingQueueConfiguration.kt */
/* loaded from: classes2.dex */
public class v implements a0<n> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<n> f8824a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8825b;

    public v(com.criteo.publisher.n0.g buildConfigWrapper) {
        Intrinsics.checkParameterIsNotNull(buildConfigWrapper, "buildConfigWrapper");
        this.f8825b = buildConfigWrapper;
        this.f8824a = n.class;
    }

    @Override // com.criteo.publisher.f0.a0
    public int c() {
        return this.f8825b.k();
    }

    @Override // com.criteo.publisher.f0.a0
    public String d() {
        String f2 = this.f8825b.f();
        Intrinsics.checkExpressionValueIsNotNull(f2, "buildConfigWrapper.csmQueueFilename");
        return f2;
    }

    @Override // com.criteo.publisher.f0.a0
    public Class<n> b() {
        return this.f8824a;
    }

    @Override // com.criteo.publisher.f0.a0
    public int a() {
        return this.f8825b.h();
    }
}
