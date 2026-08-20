package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.ViewGroup;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeoc extends zzeob {
    private final zzcpj zza;
    private final zzddx zzb;
    private final zzeqk zzc;
    private final zzdka zzd;
    private final zzdon zze;
    private final zzdhc zzf;
    private final ViewGroup zzg;
    private final zzdjj zzh;

    public zzeoc(zzcpj zzcpjVar, zzddx zzddxVar, zzeqk zzeqkVar, zzdka zzdkaVar, zzdon zzdonVar, zzdhc zzdhcVar, ViewGroup viewGroup, zzdjj zzdjjVar) {
        this.zza = zzcpjVar;
        this.zzb = zzddxVar;
        this.zzc = zzeqkVar;
        this.zzd = zzdkaVar;
        this.zze = zzdonVar;
        this.zzf = zzdhcVar;
        this.zzg = viewGroup;
        this.zzh = zzdjjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeob
    protected final zzgfb zzc(zzfjg zzfjgVar, Bundle bundle) {
        zzczh zze = this.zza.zze();
        zzddx zzddxVar = this.zzb;
        zzddxVar.zzf(zzfjgVar);
        zzddxVar.zzd(bundle);
        zze.zzi(zzddxVar.zzg());
        zze.zzf(this.zzd);
        zze.zze(this.zzc);
        zze.zzd(this.zze);
        zze.zzg(new zzdaf(this.zzf, this.zzh));
        zze.zzc(new zzcyi(this.zzg));
        zzdbu zzd = zze.zzj().zzd();
        return zzd.zzi(zzd.zzj());
    }
}
