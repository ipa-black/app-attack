package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzenz extends zzeob {
    private final zzcpj zza;
    private final zzdon zzb;
    private final zzddx zzc;
    private final zzdka zzd;

    public zzenz(zzcpj zzcpjVar, zzdon zzdonVar, zzddx zzddxVar, zzdka zzdkaVar) {
        this.zza = zzcpjVar;
        this.zzb = zzdonVar;
        this.zzc = zzddxVar;
        this.zzd = zzdkaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    protected final zzgfb zzc(zzfjg zzfjgVar, Bundle bundle) {
        zzdor zzh = this.zza.zzh();
        zzddx zzddxVar = this.zzc;
        zzddxVar.zzf(zzfjgVar);
        zzddxVar.zzd(bundle);
        zzh.zzf(zzddxVar.zzg());
        zzh.zze(this.zzd);
        zzh.zzd(this.zzb);
        zzh.zzc(new zzcyi(null));
        zzdbu zza = zzh.zzg().zza();
        return zza.zzi(zza.zzj());
    }
}
