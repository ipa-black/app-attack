package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgdl extends zzgdn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgdl(zzgfb zzgfbVar, zzgdy zzgdyVar) {
        super(zzgfbVar, zzgdyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgdn
    final /* bridge */ /* synthetic */ Object zzf(Object obj, Object obj2) throws Exception {
        zzgdy zzgdyVar = (zzgdy) obj;
        zzgfb zza = zzgdyVar.zza(obj2);
        zzfye.zzd(zza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgdyVar);
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgdn
    final /* synthetic */ void zzg(Object obj) {
        zzt((zzgfb) obj);
    }
}
