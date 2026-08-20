package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.CheckForNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgfr extends zzgeh implements RunnableFuture {
    @CheckForNull
    private volatile zzgfa zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgfr(zzgdx zzgdxVar) {
        this.zza = new zzgfp(this, zzgdxVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzgfr zzf(Runnable runnable, Object obj) {
        return new zzgfr(Executors.callable(runnable, obj));
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        zzgfa zzgfaVar = this.zza;
        if (zzgfaVar != null) {
            zzgfaVar.run();
        }
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    @CheckForNull
    protected final String zza() {
        zzgfa zzgfaVar = this.zza;
        if (zzgfaVar != null) {
            String obj = zzgfaVar.toString();
            return "task=[" + obj + "]";
        }
        return super.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgdf
    protected final void zzb() {
        zzgfa zzgfaVar;
        if (zzu() && (zzgfaVar = this.zza) != null) {
            zzgfaVar.zzh();
        }
        this.zza = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgfr(Callable callable) {
        this.zza = new zzgfq(this, callable);
    }
}
