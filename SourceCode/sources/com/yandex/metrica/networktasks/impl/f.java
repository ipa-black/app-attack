package com.yandex.metrica.networktasks.impl;

import com.yandex.metrica.networktasks.api.NetworkTask;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final NetworkTask f16282a;

    /* renamed from: b  reason: collision with root package name */
    private final c f16283b;

    /* renamed from: c  reason: collision with root package name */
    private final d f16284c;

    public f(NetworkTask networkTask, c rootThreadStateSource, d taskPerformingStrategy) {
        Intrinsics.checkNotNullParameter(networkTask, "networkTask");
        Intrinsics.checkNotNullParameter(rootThreadStateSource, "rootThreadStateSource");
        Intrinsics.checkNotNullParameter(taskPerformingStrategy, "taskPerformingStrategy");
        this.f16282a = networkTask;
        this.f16283b = rootThreadStateSource;
        this.f16284c = taskPerformingStrategy;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0074, code lost:
        r0.onAllHostsAttemptsFinished(r2.booleanValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r4 = this;
            com.yandex.metrica.networktasks.api.NetworkTask r0 = r4.f16282a
            com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy r0 = r0.getExponentialBackoffPolicy()
            java.lang.String r1 = "networkTask.exponentialBackoffPolicy"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r4.f16282a
            com.yandex.metrica.networktasks.api.IExecutionPolicy r1 = r1.getConnectionExecutionPolicy()
            java.lang.String r2 = "networkTask.connectionExecutionPolicy"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            com.yandex.metrica.networktasks.impl.c r2 = r4.f16283b
            boolean r2 = r2.isRunning()
            if (r2 == 0) goto L7c
            boolean r1 = r1.canBeExecuted()
            if (r1 == 0) goto L7c
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r4.f16282a
            com.yandex.metrica.networktasks.api.RetryPolicyConfig r1 = r1.getRetryPolicyConfig()
            boolean r1 = r0.canBeExecuted(r1)
            if (r1 == 0) goto L7c
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r4.f16282a
            boolean r1 = r1.onCreateNetworkTask()
            r2 = 0
        L37:
            com.yandex.metrica.networktasks.impl.c r3 = r4.f16283b
            boolean r3 = r3.isRunning()
            if (r3 == 0) goto L72
            if (r1 == 0) goto L72
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r4.f16282a
            com.yandex.metrica.networktasks.api.RetryPolicyConfig r1 = r1.getRetryPolicyConfig()
            boolean r1 = r0.canBeExecuted(r1)
            if (r1 == 0) goto L72
            com.yandex.metrica.networktasks.impl.d r1 = r4.f16284c
            com.yandex.metrica.networktasks.api.NetworkTask r2 = r4.f16282a
            boolean r1 = r1.a(r2)
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r1)
            boolean r1 = r2.booleanValue()
            if (r1 != 0) goto L69
            com.yandex.metrica.networktasks.api.NetworkTask r1 = r4.f16282a
            boolean r1 = r1.shouldTryNextHost()
            if (r1 == 0) goto L69
            r1 = 1
            goto L6a
        L69:
            r1 = 0
        L6a:
            boolean r3 = r2.booleanValue()
            r0.onHostAttemptFinished(r3)
            goto L37
        L72:
            if (r2 == 0) goto L81
            boolean r1 = r2.booleanValue()
            r0.onAllHostsAttemptsFinished(r1)
            goto L81
        L7c:
            com.yandex.metrica.networktasks.api.NetworkTask r0 = r4.f16282a
            r0.onShouldNotExecute()
        L81:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.networktasks.impl.f.run():void");
    }
}
