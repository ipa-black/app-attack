package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgdb extends zzgdd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdb(zzgfb zzgfbVar, Class cls, zzgdy zzgdyVar) {
        super(zzgfbVar, cls, zzgdyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgdd
    final /* bridge */ /* synthetic */ Object zzf(Object obj, Throwable th) throws Exception {
        zzgdy zzgdyVar = (zzgdy) obj;
        zzgfb zza = zzgdyVar.zza(th);
        zzfye.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgdyVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgdd
    final /* synthetic */ void zzg(Object obj) {
        zzt((zzgfb) obj);
    }
}
