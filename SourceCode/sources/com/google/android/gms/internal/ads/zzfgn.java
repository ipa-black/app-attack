package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfgn implements zzgen {
    final /* synthetic */ zzesq zza;
    final /* synthetic */ zzfow zzb;
    final /* synthetic */ zzfol zzc;
    final /* synthetic */ zzdnw zzd;
    final /* synthetic */ zzfgo zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfgn(zzfgo zzfgoVar, zzesq zzesqVar, zzfow zzfowVar, zzfol zzfolVar, zzdnw zzdnwVar) {
        this.zze = zzfgoVar;
        this.zza = zzesqVar;
        this.zzb = zzfowVar;
        this.zzc = zzfolVar;
        this.zzd = zzdnwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzfoy zzfoyVar;
        zzfow zzfowVar;
        Executor executor;
        Executor executor2;
        final com.google.android.gms.ads.internal.client.zze zza = this.zzd.zza().zza(th);
        synchronized (this.zze) {
            this.zze.zzi = null;
            this.zzd.zzb().zza(zza);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhs)).booleanValue()) {
                executor = this.zze.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfgl
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzesb zzesbVar;
                        zzfgn zzfgnVar = zzfgn.this;
                        com.google.android.gms.ads.internal.client.zze zzeVar = zza;
                        zzesbVar = zzfgnVar.zze.zzd;
                        zzesbVar.zza(zzeVar);
                    }
                });
                executor2 = this.zze.zzb;
                executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfgm
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfho zzfhoVar;
                        zzfgn zzfgnVar = zzfgn.this;
                        com.google.android.gms.ads.internal.client.zze zzeVar = zza;
                        zzfhoVar = zzfgnVar.zze.zze;
                        zzfhoVar.zza(zzeVar);
                    }
                });
            }
            zzfka.zzb(zza.zza, th, "InterstitialAdLoader.onFailure");
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
        zzfoy zzfoyVar;
        zzfow zzfowVar;
        Executor executor;
        Executor executor2;
        zzesb zzesbVar;
        zzfho zzfhoVar;
        zzdmv zzdmvVar = (zzdmv) obj;
        synchronized (this.zze) {
            this.zze.zzi = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhs)).booleanValue()) {
                zzdis zzn = zzdmvVar.zzn();
                zzesbVar = this.zze.zzd;
                zzn.zza(zzesbVar);
                zzfhoVar = this.zze.zze;
                zzn.zzd(zzfhoVar);
            }
            this.zza.zzb(zzdmvVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhs)).booleanValue()) {
                executor = this.zze.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfgj
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzesb zzesbVar2;
                        zzesbVar2 = zzfgn.this.zze.zzd;
                        zzesbVar2.zzn();
                    }
                });
                executor2 = this.zze.zzb;
                executor2.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfgk
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfho zzfhoVar2;
                        zzfhoVar2 = zzfgn.this.zze.zze;
                        zzfhoVar2.zzn();
                    }
                });
            }
            if (((Boolean) zzbks.zzc.zze()).booleanValue() && (zzfowVar = this.zzb) != null) {
                zzfowVar.zzf(zzdmvVar.zzp().zzb);
                zzfowVar.zze(zzdmvVar.zzl().zzg());
                zzfol zzfolVar = this.zzc;
                zzfolVar.zzf(true);
                zzfowVar.zza(zzfolVar);
                zzfowVar.zzg();
            } else {
                zzfoyVar = this.zze.zzg;
                zzfol zzfolVar2 = this.zzc;
                zzfolVar2.zzb(zzdmvVar.zzp().zzb);
                zzfolVar2.zzd(zzdmvVar.zzl().zzg());
                zzfolVar2.zzf(true);
                zzfoyVar.zzb(zzfolVar2.zzl());
            }
        }
    }
}
