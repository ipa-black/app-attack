package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfhy implements zzesr {
    private final Context zza;
    private final Executor zzb;
    private final zzcpj zzc;
    private final zzfho zzd;
    private final zzfga zze;
    private final zzfiy zzf;
    private final zzfoy zzg;
    private final zzfje zzh;
    private zzgfb zzi;

    public zzfhy(Context context, Executor executor, zzcpj zzcpjVar, zzfga zzfgaVar, zzfho zzfhoVar, zzfje zzfjeVar, zzfiy zzfiyVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcpjVar;
        this.zze = zzfgaVar;
        this.zzd = zzfhoVar;
        this.zzh = zzfjeVar;
        this.zzf = zzfiyVar;
        this.zzg = zzcpjVar.zzz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzdvx zzk(zzffy zzffyVar) {
        zzfhx zzfhxVar = (zzfhx) zzffyVar;
        zzdvx zzi = this.zzc.zzi();
        zzddx zzddxVar = new zzddx();
        zzddxVar.zzc(this.zza);
        zzddxVar.zzf(zzfhxVar.zza);
        String str = zzfhxVar.zzb;
        zzddxVar.zze(this.zzf);
        zzi.zzd(zzddxVar.zzg());
        zzi.zzc(new zzdjy().zzn());
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzesr
    public final boolean zza() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzesr
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzesp zzespVar, zzesq zzesqVar) throws RemoteException {
        zzfow zzfowVar;
        zzccy zzccyVar = new zzccy(zzlVar, str);
        if (zzccyVar.zzb == null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Ad unit ID should not be null for rewarded video ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfhr
                @Override // java.lang.Runnable
                public final void run() {
                    zzfhy.this.zzi();
                }
            });
            return false;
        }
        zzgfb zzgfbVar = this.zzi;
        if (zzgfbVar == null || zzgfbVar.isDone()) {
            if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
                zzfga zzfgaVar = this.zze;
                if (zzfgaVar.zzd() != null) {
                    zzfow zzh = ((zzdvy) zzfgaVar.zzd()).zzh();
                    zzh.zzh(5);
                    zzh.zzb(zzccyVar.zza.zzp);
                    zzfowVar = zzh;
                    zzfka.zza(this.zza, zzccyVar.zza.zzf);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue() && zzccyVar.zza.zzf) {
                        this.zzc.zzk().zzm(true);
                    }
                    zzfje zzfjeVar = this.zzh;
                    zzfjeVar.zzs(zzccyVar.zzb);
                    zzfjeVar.zzr(com.google.android.gms.ads.internal.client.zzq.zzd());
                    zzfjeVar.zzE(zzccyVar.zza);
                    zzfjg zzG = zzfjeVar.zzG();
                    zzfol zzb = zzfok.zzb(this.zza, zzfov.zzf(zzG), 5, zzccyVar.zza);
                    zzfhx zzfhxVar = new zzfhx(null);
                    zzfhxVar.zza = zzG;
                    zzfhxVar.zzb = null;
                    zzgfb zzc = this.zze.zzc(new zzfgb(zzfhxVar, null), new zzffz() { // from class: com.google.android.gms.internal.ads.zzfhs
                        @Override // com.google.android.gms.internal.ads.zzffz
                        public final zzddv zza(zzffy zzffyVar) {
                            zzdvx zzk;
                            zzk = zzfhy.this.zzk(zzffyVar);
                            return zzk;
                        }
                    }, null);
                    this.zzi = zzc;
                    zzger.zzr(zzc, new zzfhv(this, zzesqVar, zzfowVar, zzb, zzfhxVar), this.zzb);
                    return true;
                }
            }
            zzfowVar = null;
            zzfka.zza(this.zza, zzccyVar.zza.zzf);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue()) {
                this.zzc.zzk().zzm(true);
            }
            zzfje zzfjeVar2 = this.zzh;
            zzfjeVar2.zzs(zzccyVar.zzb);
            zzfjeVar2.zzr(com.google.android.gms.ads.internal.client.zzq.zzd());
            zzfjeVar2.zzE(zzccyVar.zza);
            zzfjg zzG2 = zzfjeVar2.zzG();
            zzfol zzb2 = zzfok.zzb(this.zza, zzfov.zzf(zzG2), 5, zzccyVar.zza);
            zzfhx zzfhxVar2 = new zzfhx(null);
            zzfhxVar2.zza = zzG2;
            zzfhxVar2.zzb = null;
            zzgfb zzc2 = this.zze.zzc(new zzfgb(zzfhxVar2, null), new zzffz() { // from class: com.google.android.gms.internal.ads.zzfhs
                @Override // com.google.android.gms.internal.ads.zzffz
                public final zzddv zza(zzffy zzffyVar) {
                    zzdvx zzk;
                    zzk = zzfhy.this.zzk(zzffyVar);
                    return zzk;
                }
            }, null);
            this.zzi = zzc2;
            zzger.zzr(zzc2, new zzfhv(this, zzesqVar, zzfowVar, zzb2, zzfhxVar2), this.zzb);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzi() {
        this.zzd.zza(zzfkg.zzd(6, null, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(int i) {
        this.zzh.zzo().zza(i);
    }
}
