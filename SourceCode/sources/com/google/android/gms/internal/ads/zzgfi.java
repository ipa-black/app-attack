package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgfi {
    public static zzgfc zza(ExecutorService executorService) {
        zzgfc zzgfeVar;
        if (executorService instanceof zzgfc) {
            return (zzgfc) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            zzgfeVar = new zzgfh((ScheduledExecutorService) executorService);
        } else {
            zzgfeVar = new zzgfe(executorService);
        }
        return zzgfeVar;
    }

    public static Executor zzb() {
        return zzgef.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor zzc(Executor executor, zzgdf zzgdfVar) {
        executor.getClass();
        return executor == zzgef.INSTANCE ? executor : new zzgfd(executor, zzgdfVar);
    }
}
