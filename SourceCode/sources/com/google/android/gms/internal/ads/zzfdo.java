package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfdo implements zzgen {
    final /* synthetic */ zzesq zza;
    final /* synthetic */ zzfow zzb;
    final /* synthetic */ zzfol zzc;
    final /* synthetic */ zzfdq zzd;
    final /* synthetic */ zzfdr zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfdo(zzfdr zzfdrVar, zzesq zzesqVar, zzfow zzfowVar, zzfol zzfolVar, zzfdq zzfdqVar) {
        this.zze = zzfdrVar;
        this.zza = zzesqVar;
        this.zzb = zzfowVar;
        this.zzc = zzfolVar;
        this.zzd = zzfdqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzfga zzfgaVar;
        final com.google.android.gms.ads.internal.client.zze zza;
        zzfeh zzfehVar;
        zzddv zzm;
        zzfoy zzfoyVar;
        zzfow zzfowVar;
        Executor executor;
        zzfgaVar = this.zze.zze;
        zzcxs zzcxsVar = (zzcxs) zzfgaVar.zzd();
        if (zzcxsVar == null) {
            zza = zzfkg.zzb(th, null);
        } else {
            zza = zzcxsVar.zzb().zza(th);
        }
        synchronized (this.zze) {
            this.zze.zzj = null;
            if (zzcxsVar != null) {
                zzcxsVar.zzc().zza(zza);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhr)).booleanValue()) {
                    executor = this.zze.zzc;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfdn
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzfeh zzfehVar2;
                            zzfdo zzfdoVar = zzfdo.this;
                            com.google.android.gms.ads.internal.client.zze zzeVar = zza;
                            zzfehVar2 = zzfdoVar.zze.zzd;
                            zzfehVar2.zza(zzeVar);
                        }
                    });
                }
            } else {
                zzfehVar = this.zze.zzd;
                zzfehVar.zza(zza);
                zzm = this.zze.zzm(this.zzd);
                ((zzcxs) zzm.zzh()).zzb().zzc().zzd();
            }
            zzfka.zzb(zza.zza, th, "AppOpenAdLoader.onFailure");
            this.zza.zza();
            if (((Boolean) zzbks.zzc.zze()).booleanValue() && (zzfowVar = this.zzb) != null) {
                zzfowVar.zzc(zza);
                zzfol zzfolVar = this.zzc;
                zzfolVar.zzg(th);
                zzfolVar.zzf(false);
                zzfowVar.zza(zzfolVar);
                zzfowVar.zzg();
            } else {
                zzfoyVar = this.zze.zzh;
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
        zzfeh zzfehVar;
        zzdan zzdanVar = (zzdan) obj;
        synchronized (this.zze) {
            this.zze.zzj = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhr)).booleanValue()) {
                zzdis zzn = zzdanVar.zzn();
                zzfehVar = this.zze.zzd;
                zzn.zzb(zzfehVar);
            }
            this.zza.zzb(zzdanVar);
            if (((Boolean) zzbks.zzc.zze()).booleanValue() && (zzfowVar = this.zzb) != null) {
                zzfowVar.zzf(zzdanVar.zzp().zzb);
                zzfowVar.zze(zzdanVar.zzl().zzg());
                zzfol zzfolVar = this.zzc;
                zzfolVar.zzf(true);
                zzfowVar.zza(zzfolVar);
                zzfowVar.zzg();
            } else {
                zzfoyVar = this.zze.zzh;
                zzfol zzfolVar2 = this.zzc;
                zzfolVar2.zzb(zzdanVar.zzp().zzb);
                zzfolVar2.zzd(zzdanVar.zzl().zzg());
                zzfolVar2.zzf(true);
                zzfoyVar.zzb(zzfolVar2.zzl());
            }
        }
    }
}
