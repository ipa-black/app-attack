package com.criteo.publisher.logging;

import com.criteo.publisher.f0.a0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteLogSendingQueueConfiguration.kt */
/* loaded from: classes2.dex */
public final class m implements a0<RemoteLogRecords> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<RemoteLogRecords> f8992a;

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f8993b;

    public m(com.criteo.publisher.n0.g buildConfigWrapper) {
        Intrinsics.checkParameterIsNotNull(buildConfigWrapper, "buildConfigWrapper");
        this.f8993b = buildConfigWrapper;
        this.f8992a = RemoteLogRecords.class;
    }

    @Override // com.criteo.publisher.f0.a0
    public int c() {
        return this.f8993b.m();
    }

    @Override // com.criteo.publisher.f0.a0
    public String d() {
        String p = this.f8993b.p();
        Intrinsics.checkExpressionValueIsNotNull(p, "buildConfigWrapper.remoteLogQueueFilename");
        return p;
    }

    @Override // com.criteo.publisher.f0.a0
    public Class<RemoteLogRecords> b() {
        return this.f8992a;
    }

    @Override // com.criteo.publisher.f0.a0
    public int a() {
        return this.f8993b.i();
    }
}
