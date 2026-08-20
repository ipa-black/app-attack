package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfgo implements zzesr {
    private final Context zza;
    private final Executor zzb;
    private final zzcpj zzc;
    private final zzesb zzd;
    private final zzfho zze;
    private zzbke zzf;
    private final zzfoy zzg;
    private final zzfje zzh;
    private zzgfb zzi;

    public zzfgo(Context context, Executor executor, zzcpj zzcpjVar, zzesb zzesbVar, zzfho zzfhoVar, zzfje zzfjeVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcpjVar;
        this.zzd = zzesbVar;
        this.zzh = zzfjeVar;
        this.zze = zzfhoVar;
        this.zzg = zzcpjVar.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzesr
    public final boolean zza() {
        zzgfb zzgfbVar = this.zzi;
        return (zzgfbVar == null || zzgfbVar.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzesr
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzesp zzespVar, zzesq zzesqVar) {
        zzdnw zzf;
        zzfow zzfowVar;
        if (str == null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Ad unit ID should not be null for interstitial ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfgi
                @Override // java.lang.Runnable
                public final void run() {
                    zzfgo.this.zzh();
                }
            });
            return false;
        } else if (zza()) {
            return false;
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue() && zzlVar.zzf) {
                this.zzc.zzk().zzm(true);
            }
            com.google.android.gms.ads.internal.client.zzq zzqVar = ((zzfgh) zzespVar).zza;
            zzfje zzfjeVar = this.zzh;
            zzfjeVar.zzs(str);
            zzfjeVar.zzr(zzqVar);
            zzfjeVar.zzE(zzlVar);
            zzfjg zzG = zzfjeVar.zzG();
            zzfol zzb = zzfok.zzb(this.zza, zzfov.zzf(zzG), 4, zzlVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhs)).booleanValue()) {
                zzdnv zzg = this.zzc.zzg();
                zzddx zzddxVar = new zzddx();
                zzddxVar.zzc(this.zza);
                zzddxVar.zzf(zzG);
                zzg.zze(zzddxVar.zzg());
                zzdjy zzdjyVar = new zzdjy();
                zzdjyVar.zzj(this.zzd, this.zzb);
                zzdjyVar.zzk(this.zzd, this.zzb);
                zzg.zzd(zzdjyVar.zzn());
                zzg.zzc(new zzeqk(this.zzf));
                zzf = zzg.zzf();
            } else {
                zzdjy zzdjyVar2 = new zzdjy();
                zzfho zzfhoVar = this.zze;
                if (zzfhoVar != null) {
                    zzdjyVar2.zze(zzfhoVar, this.zzb);
                    zzdjyVar2.zzf(this.zze, this.zzb);
                    zzdjyVar2.zzb(this.zze, this.zzb);
                }
                zzdnv zzg2 = this.zzc.zzg();
                zzddx zzddxVar2 = new zzddx();
                zzddxVar2.zzc(this.zza);
                zzddxVar2.zzf(zzG);
                zzg2.zze(zzddxVar2.zzg());
                zzdjyVar2.zzj(this.zzd, this.zzb);
                zzdjyVar2.zze(this.zzd, this.zzb);
                zzdjyVar2.zzf(this.zzd, this.zzb);
                zzdjyVar2.zzb(this.zzd, this.zzb);
                zzdjyVar2.zza(this.zzd, this.zzb);
                zzdjyVar2.zzl(this.zzd, this.zzb);
                zzdjyVar2.zzk(this.zzd, this.zzb);
                zzdjyVar2.zzi(this.zzd, this.zzb);
                zzdjyVar2.zzc(this.zzd, this.zzb);
                zzg2.zzd(zzdjyVar2.zzn());
                zzg2.zzc(new zzeqk(this.zzf));
                zzf = zzg2.zzf();
            }
            zzdnw zzdnwVar = zzf;
            if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
                zzfow zzf2 = zzdnwVar.zzf();
                zzf2.zzh(4);
                zzf2.zzb(zzlVar.zzp);
                zzfowVar = zzf2;
            } else {
                zzfowVar = null;
            }
            zzdbu zza = zzdnwVar.zza();
            zzgfb zzi = zza.zzi(zza.zzj());
            this.zzi = zzi;
            zzger.zzr(zzi, new zzfgn(this, zzesqVar, zzfowVar, zzb, zzdnwVar), this.zzb);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzh() {
        this.zzd.zza(zzfkg.zzd(6, null, null));
    }

    public final void zzi(zzbke zzbkeVar) {
        this.zzf = zzbkeVar;
    }
}
