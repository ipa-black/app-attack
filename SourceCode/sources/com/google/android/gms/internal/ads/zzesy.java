package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzesy implements zzesr {
    private final zzfje zza;
    private final zzcpj zzb;
    private final Context zzc;
    private final zzeso zzd;
    private final zzfoy zze;
    private zzdbb zzf;

    public zzesy(zzcpj zzcpjVar, Context context, zzeso zzesoVar, zzfje zzfjeVar) {
        this.zzb = zzcpjVar;
        this.zzc = context;
        this.zzd = zzesoVar;
        this.zza = zzfjeVar;
        this.zze = zzcpjVar.zzz();
        zzfjeVar.zzu(zzesoVar.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzesr
    public final boolean zza() {
        zzdbb zzdbbVar = this.zzf;
        return zzdbbVar != null && zzdbbVar.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzesr
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzesp zzespVar, zzesq zzesqVar) throws RemoteException {
        zzfow zzfowVar;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzs.zzD(this.zzc) && zzlVar.zzs == null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Failed to load the ad because app ID is missing.");
            this.zzb.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzest
                @Override // java.lang.Runnable
                public final void run() {
                    zzesy.this.zzf();
                }
            });
            return false;
        } else if (str == null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Ad unit ID should not be null for NativeAdLoader.");
            this.zzb.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzesu
                @Override // java.lang.Runnable
                public final void run() {
                    zzesy.this.zzg();
                }
            });
            return false;
        } else {
            zzfka.zza(this.zzc, zzlVar.zzf);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue() && zzlVar.zzf) {
                this.zzb.zzk().zzm(true);
            }
            int i = ((zzess) zzespVar).zza;
            zzfje zzfjeVar = this.zza;
            zzfjeVar.zzE(zzlVar);
            zzfjeVar.zzz(i);
            zzfjg zzG = zzfjeVar.zzG();
            zzfol zzb = zzfok.zzb(this.zzc, zzfov.zzf(zzG), 8, zzlVar);
            com.google.android.gms.ads.internal.client.zzcb zzcbVar = zzG.zzn;
            if (zzcbVar != null) {
                this.zzd.zzd().zzi(zzcbVar);
            }
            zzdor zzh = this.zzb.zzh();
            zzddx zzddxVar = new zzddx();
            zzddxVar.zzc(this.zzc);
            zzddxVar.zzf(zzG);
            zzh.zzf(zzddxVar.zzg());
            zzdjy zzdjyVar = new zzdjy();
            zzdjyVar.zzk(this.zzd.zzd(), this.zzb.zzB());
            zzh.zze(zzdjyVar.zzn());
            zzh.zzd(this.zzd.zzc());
            zzh.zzc(new zzcyi(null));
            zzdos zzg = zzh.zzg();
            if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
                zzfow zzf = zzg.zzf();
                zzf.zzh(8);
                zzf.zzb(zzlVar.zzp);
                zzfowVar = zzf;
            } else {
                zzfowVar = null;
            }
            this.zzb.zzx().zzc(1);
            zzgfc zzgfcVar = zzcib.zza;
            zzhex.zzb(zzgfcVar);
            ScheduledExecutorService zzC = this.zzb.zzC();
            zzdbu zza = zzg.zza();
            zzdbb zzdbbVar = new zzdbb(zzgfcVar, zzC, zza.zzi(zza.zzj()));
            this.zzf = zzdbbVar;
            zzdbbVar.zze(new zzesx(this, zzesqVar, zzfowVar, zzb, zzg));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf() {
        this.zzd.zza().zza(zzfkg.zzd(4, null, null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzg() {
        this.zzd.zza().zza(zzfkg.zzd(6, null, null));
    }
}
