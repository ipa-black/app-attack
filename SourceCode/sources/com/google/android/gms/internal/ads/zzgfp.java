package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgfp extends zzgfa {
    final /* synthetic */ zzgfr zza;
    private final zzgdx zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgfp(zzgfr zzgfrVar, zzgdx zzgdxVar) {
        this.zza = zzgfrVar;
        zzgdxVar.getClass();
        this.zzb = zzgdxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgfa
    final /* bridge */ /* synthetic */ Object zza() throws Exception {
        zzgfb zza = this.zzb.zza();
        zzfye.zzd(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.zzb);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgfa
    final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgfa
    final void zzd(Throwable th) {
        this.zza.zze(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgfa
    final /* synthetic */ void zze(Object obj) {
        this.zza.zzt((zzgfb) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgfa
    final boolean zzg() {
        return this.zza.isDone();
    }
}
