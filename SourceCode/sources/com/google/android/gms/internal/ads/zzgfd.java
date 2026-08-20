package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgfd implements Executor {
    final /* synthetic */ Executor zza;
    final /* synthetic */ zzgdf zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgfd(Executor executor, zzgdf zzgdfVar) {
        this.zza = executor;
        this.zzb = zzgdfVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.zza.execute(runnable);
        } catch (RejectedExecutionException e2) {
            this.zzb.zze(e2);
        }
    }
}
