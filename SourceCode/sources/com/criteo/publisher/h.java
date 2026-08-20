package com.criteo.publisher;

import com.criteo.publisher.c0.a;
import com.criteo.publisher.model.r;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CdbCallListener.kt */
/* loaded from: classes2.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private final a f8845a;

    /* renamed from: b  reason: collision with root package name */
    private final e f8846b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.l0.a f8847c;

    public h(a bidLifecycleListener, e bidManager, com.criteo.publisher.l0.a consentData) {
        Intrinsics.checkParameterIsNotNull(bidLifecycleListener, "bidLifecycleListener");
        Intrinsics.checkParameterIsNotNull(bidManager, "bidManager");
        Intrinsics.checkParameterIsNotNull(consentData, "consentData");
        this.f8845a = bidLifecycleListener;
        this.f8846b = bidManager;
        this.f8847c = consentData;
    }

    public void a(com.criteo.publisher.model.o cdbRequest) {
        Intrinsics.checkParameterIsNotNull(cdbRequest, "cdbRequest");
        this.f8845a.a(cdbRequest);
    }

    public void a(com.criteo.publisher.model.o cdbRequest, Exception exception) {
        Intrinsics.checkParameterIsNotNull(cdbRequest, "cdbRequest");
        Intrinsics.checkParameterIsNotNull(exception, "exception");
        this.f8845a.a(cdbRequest, exception);
    }

    public void a(com.criteo.publisher.model.o cdbRequest, r cdbResponse) {
        Intrinsics.checkParameterIsNotNull(cdbRequest, "cdbRequest");
        Intrinsics.checkParameterIsNotNull(cdbResponse, "cdbResponse");
        Boolean it = cdbResponse.a();
        if (it != null) {
            com.criteo.publisher.l0.a aVar = this.f8847c;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            aVar.a(it.booleanValue());
        }
        this.f8846b.a(cdbResponse.c());
        this.f8845a.a(cdbRequest, cdbResponse);
    }
}
