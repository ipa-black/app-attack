package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfhv implements zzgen {
    final /* synthetic */ zzesq zza;
    final /* synthetic */ zzfow zzb;
    final /* synthetic */ zzfol zzc;
    final /* synthetic */ zzfhx zzd;
    final /* synthetic */ zzfhy zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfhv(zzfhy zzfhyVar, zzesq zzesqVar, zzfow zzfowVar, zzfol zzfolVar, zzfhx zzfhxVar) {
        this.zze = zzfhyVar;
        this.zza = zzesqVar;
        this.zzb = zzfowVar;
        this.zzc = zzfolVar;
        this.zzd = zzfhxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzfga zzfgaVar;
        final com.google.android.gms.ads.internal.client.zze zza;
        zzfho zzfhoVar;
        zzdvx zzk;
        zzfoy zzfoyVar;
        zzfow zzfowVar;
        Executor executor;
        zzfgaVar = this.zze.zze;
        zzdvy zzdvyVar = (zzdvy) zzfgaVar.zzd();
        if (zzdvyVar == null) {
            zza = zzfkg.zzb(th, null);
        } else {
            zza = zzdvyVar.zzb().zza(th);
        }
        synchronized (this.zze) {
            if (zzdvyVar != null) {
                zzdvyVar.zza().zza(zza);
                executor = this.zze.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfhu
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfho zzfhoVar2;
                        zzfhv zzfhvVar = zzfhv.this;
                        com.google.android.gms.ads.internal.client.zze zzeVar = zza;
                        zzfhoVar2 = zzfhvVar.zze.zzd;
                        zzfhoVar2.zza(zzeVar);
                    }
                });
            } else {
                zzfhoVar = this.zze.zzd;
                zzfhoVar.zza(zza);
                zzk = this.zze.zzk(this.zzd);
                zzk.zze().zzb().zzc().zzd();
            }
            zzfka.zzb(zza.zza, th, "RewardedAdLoader.onFailure");
            this.zza.zza();
            if (((Boolean) zzbks.zzc.zze()).booleanValue() && (zzfowVar = this.zzb) != null) {
                zzfowVar.zzc(zza);
                zzfol zzfolVar = this.zzc;
                zzfolVar.zzg(th);
                zzfolVar.zzf(false);
                zzfowVar.zza(zzfolVar);
                zzfowVar.zzg();
            } else {
                zzfoyVar = this.zze.zzg;
                zzfol zzfolVar2 = this.zzc;
                zzfolVar2.zza(zza);
                zzfolVar2.zzg(th);
                zzfolVar2.zzf(false);
                zzfoyVar.zzb(zzfolVar2.zzl());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfho zzfhoVar;
        Executor executor;
        final zzfho zzfhoVar2;
        zzfho zzfhoVar3;
        zzfoy zzfoyVar;
        zzfow zzfowVar;
        zzdvt zzdvtVar = (zzdvt) obj;
        synchronized (this.zze) {
            zzdis zzn = zzdvtVar.zzn();
            zzfhoVar = this.zze.zzd;
            zzn.zzd(zzfhoVar);
            this.zza.zzb(zzdvtVar);
            zzfhy zzfhyVar = this.zze;
            executor = zzfhyVar.zzb;
            zzfhoVar2 = zzfhyVar.zzd;
            zzfhoVar2.getClass();
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfht
                @Override // java.lang.Runnable
                public final void run() {
                    zzfho.this.zzn();
                }
            });
            zzfhoVar3 = this.zze.zzd;
            zzfhoVar3.zzv();
            if (((Boolean) zzbks.zzc.zze()).booleanValue() && (zzfowVar = this.zzb) != null) {
                zzfowVar.zzf(zzdvtVar.zzp().zzb);
                zzfowVar.zze(zzdvtVar.zzl().zzg());
                zzfol zzfolVar = this.zzc;
                zzfolVar.zzf(true);
                zzfowVar.zza(zzfolVar);
                zzfowVar.zzg();
            } else {
                zzfoyVar = this.zze.zzg;
                zzfol zzfolVar2 = this.zzc;
                zzfolVar2.zzb(zzdvtVar.zzp().zzb);
                zzfolVar2.zzd(zzdvtVar.zzl().zzg());
                zzfolVar2.zzf(true);
                zzfoyVar.zzb(zzfolVar2.zzl());
            }
        }
    }
}
