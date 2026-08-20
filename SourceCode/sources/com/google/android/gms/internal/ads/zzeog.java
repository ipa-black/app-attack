package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeog extends zzeob {
    private final zzcpj zza;
    private final zzddx zzb;
    private final zzdka zzc;

    public zzeog(zzcpj zzcpjVar, zzddx zzddxVar, zzdka zzdkaVar) {
        this.zza = zzcpjVar;
        this.zzb = zzddxVar;
        this.zzc = zzdkaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    protected final zzgfb zzc(zzfjg zzfjgVar, Bundle bundle) {
        zzdvx zzi = this.zza.zzi();
        zzddx zzddxVar = this.zzb;
        zzddxVar.zzf(zzfjgVar);
        zzddxVar.zzd(bundle);
        zzi.zzd(zzddxVar.zzg());
        zzi.zzc(this.zzc);
        zzdbu zzb = zzi.zze().zzb();
        return zzb.zzi(zzb.zzj());
    }
}
