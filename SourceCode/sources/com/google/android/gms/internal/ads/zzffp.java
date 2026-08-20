package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzffp implements zzfga {
    private zzddw zza;

    @Override // com.google.android.gms.internal.ads.zzfga
    /* renamed from: zza */
    public final synchronized zzddw zzd() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfga
    public final /* bridge */ /* synthetic */ zzgfb zzc(zzfgb zzfgbVar, zzffz zzffzVar, Object obj) {
        return zzb(zzfgbVar, zzffzVar, null);
    }

    public final synchronized zzgfb zzb(zzfgb zzfgbVar, zzffz zzffzVar, zzddw zzddwVar) {
        zzdbu zzb;
        if (zzddwVar == null) {
            this.zza = (zzddw) zzffzVar.zza(zzfgbVar.zzb).zzh();
        } else {
            this.zza = zzddwVar;
        }
        zzb = this.zza.zzb();
        return zzb.zzi(zzb.zzj());
    }
}
