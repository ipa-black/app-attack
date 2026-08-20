package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgeq {
    private final boolean zza;
    private final zzgau zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgeq(boolean z, zzgau zzgauVar, zzgep zzgepVar) {
        this.zza = z;
        this.zzb = zzgauVar;
    }

    public final zzgfb zza(Callable callable, Executor executor) {
        return new zzgee(this.zzb, this.zza, executor, callable);
    }
}
