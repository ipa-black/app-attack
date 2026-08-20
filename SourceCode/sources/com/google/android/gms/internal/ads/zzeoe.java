package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeoe extends zzeob {
    private final zzcpj zza;
    private final zzddx zzb;
    private final zzeqk zzc;
    private final zzdka zzd;

    public zzeoe(zzcpj zzcpjVar, zzddx zzddxVar, zzeqk zzeqkVar, zzdka zzdkaVar) {
        this.zza = zzcpjVar;
        this.zzb = zzddxVar;
        this.zzc = zzeqkVar;
        this.zzd = zzdkaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    protected final zzgfb zzc(zzfjg zzfjgVar, Bundle bundle) {
        zzdnv zzg = this.zza.zzg();
        zzddx zzddxVar = this.zzb;
        zzddxVar.zzf(zzfjgVar);
        zzddxVar.zzd(bundle);
        zzg.zze(zzddxVar.zzg());
        zzg.zzd(this.zzd);
        zzg.zzc(this.zzc);
        zzdbu zza = zzg.zzf().zza();
        return zza.zzi(zza.zzj());
    }
}
