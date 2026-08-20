package com.criteo.publisher.k0;

import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.i;
import com.criteo.publisher.model.n;
import com.criteo.publisher.model.p;
import com.criteo.publisher.model.t;
import com.criteo.publisher.w;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LiveBidRequestSender.kt */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final g f8908a;

    /* renamed from: b  reason: collision with root package name */
    private final p f8909b;

    /* renamed from: c  reason: collision with root package name */
    private final i f8910c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f8911d;

    /* renamed from: e  reason: collision with root package name */
    private final ScheduledExecutorService f8912e;

    /* renamed from: f  reason: collision with root package name */
    private final t f8913f;

    public e(g pubSdkApi, p cdbRequestFactory, i clock, Executor executor, ScheduledExecutorService scheduledExecutorService, t config) {
        Intrinsics.checkParameterIsNotNull(pubSdkApi, "pubSdkApi");
        Intrinsics.checkParameterIsNotNull(cdbRequestFactory, "cdbRequestFactory");
        Intrinsics.checkParameterIsNotNull(clock, "clock");
        Intrinsics.checkParameterIsNotNull(executor, "executor");
        Intrinsics.checkParameterIsNotNull(scheduledExecutorService, "scheduledExecutorService");
        Intrinsics.checkParameterIsNotNull(config, "config");
        this.f8908a = pubSdkApi;
        this.f8909b = cdbRequestFactory;
        this.f8910c = clock;
        this.f8911d = executor;
        this.f8912e = scheduledExecutorService;
        this.f8913f = config;
    }

    public void a(n cacheAdUnit, ContextData contextData, w liveCdbCallListener) {
        Intrinsics.checkParameterIsNotNull(cacheAdUnit, "cacheAdUnit");
        Intrinsics.checkParameterIsNotNull(contextData, "contextData");
        Intrinsics.checkParameterIsNotNull(liveCdbCallListener, "liveCdbCallListener");
        a(liveCdbCallListener);
        this.f8911d.execute(new c(this.f8908a, this.f8909b, this.f8910c, CollectionsKt.listOf(cacheAdUnit), contextData, liveCdbCallListener));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LiveBidRequestSender.kt */
    /* loaded from: classes2.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ w f8914a;

        a(w wVar) {
            this.f8914a = wVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f8914a.a();
        }
    }

    public void a(w liveCdbCallListener) {
        Intrinsics.checkParameterIsNotNull(liveCdbCallListener, "liveCdbCallListener");
        this.f8912e.schedule(new a(liveCdbCallListener), this.f8913f.e(), TimeUnit.MILLISECONDS);
    }
}
