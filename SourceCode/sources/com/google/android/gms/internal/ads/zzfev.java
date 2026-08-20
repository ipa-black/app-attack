package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfev implements zzesr {
    private final Context zza;
    private final Executor zzb;
    private final zzcpj zzc;
    private final zzesb zzd;
    private final zzesf zze;
    private final ViewGroup zzf;
    private zzbke zzg;
    private final zzdhc zzh;
    private final zzfoy zzi;
    private final zzdjj zzj;
    private final zzfje zzk;
    private zzgfb zzl;

    public zzfev(Context context, Executor executor, com.google.android.gms.ads.internal.client.zzq zzqVar, zzcpj zzcpjVar, zzesb zzesbVar, zzesf zzesfVar, zzfje zzfjeVar, zzdjj zzdjjVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzcpjVar;
        this.zzd = zzesbVar;
        this.zze = zzesfVar;
        this.zzk = zzfjeVar;
        this.zzh = zzcpjVar.zzf();
        this.zzi = zzcpjVar.zzz();
        this.zzf = new FrameLayout(context);
        this.zzj = zzdjjVar;
        zzfjeVar.zzr(zzqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzesr
    public final boolean zza() {
        zzgfb zzgfbVar = this.zzl;
        return (zzgfbVar == null || zzgfbVar.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzesr
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzesp zzespVar, zzesq zzesqVar) throws RemoteException {
        zzczi zzj;
        zzfow zzfowVar;
        if (str == null) {
            com.google.android.gms.ads.internal.util.zze.zzg("Ad unit ID should not be null for banner ad.");
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfer
                @Override // java.lang.Runnable
                public final void run() {
                    zzfev.this.zzm();
                }
            });
            return false;
        } else if (zza()) {
            return false;
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhX)).booleanValue() && zzlVar.zzf) {
                this.zzc.zzk().zzm(true);
            }
            zzfje zzfjeVar = this.zzk;
            zzfjeVar.zzs(str);
            zzfjeVar.zzE(zzlVar);
            zzfjg zzG = zzfjeVar.zzG();
            zzfol zzb = zzfok.zzb(this.zza, zzfov.zzf(zzG), 3, zzlVar);
            if (((Boolean) zzble.zzd.zze()).booleanValue() && this.zzk.zzg().zzk) {
                zzesb zzesbVar = this.zzd;
                if (zzesbVar != null) {
                    zzesbVar.zza(zzfkg.zzd(7, null, null));
                }
                return false;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhq)).booleanValue()) {
                zzczh zze = this.zzc.zze();
                zzddx zzddxVar = new zzddx();
                zzddxVar.zzc(this.zza);
                zzddxVar.zzf(zzG);
                zze.zzi(zzddxVar.zzg());
                zzdjy zzdjyVar = new zzdjy();
                zzdjyVar.zzj(this.zzd, this.zzb);
                zzdjyVar.zzk(this.zzd, this.zzb);
                zze.zzf(zzdjyVar.zzn());
                zze.zze(new zzeqk(this.zzg));
                zze.zzd(new zzdon(zzdqr.zza, null));
                zze.zzg(new zzdaf(this.zzh, this.zzj));
                zze.zzc(new zzcyi(this.zzf));
                zzj = zze.zzj();
            } else {
                zzczh zze2 = this.zzc.zze();
                zzddx zzddxVar2 = new zzddx();
                zzddxVar2.zzc(this.zza);
                zzddxVar2.zzf(zzG);
                zze2.zzi(zzddxVar2.zzg());
                zzdjy zzdjyVar2 = new zzdjy();
                zzdjyVar2.zzj(this.zzd, this.zzb);
                zzdjyVar2.zza(this.zzd, this.zzb);
                zzdjyVar2.zza(this.zze, this.zzb);
                zzdjyVar2.zzl(this.zzd, this.zzb);
                zzdjyVar2.zzd(this.zzd, this.zzb);
                zzdjyVar2.zze(this.zzd, this.zzb);
                zzdjyVar2.zzf(this.zzd, this.zzb);
                zzdjyVar2.zzb(this.zzd, this.zzb);
                zzdjyVar2.zzk(this.zzd, this.zzb);
                zzdjyVar2.zzi(this.zzd, this.zzb);
                zze2.zzf(zzdjyVar2.zzn());
                zze2.zze(new zzeqk(this.zzg));
                zze2.zzd(new zzdon(zzdqr.zza, null));
                zze2.zzg(new zzdaf(this.zzh, this.zzj));
                zze2.zzc(new zzcyi(this.zzf));
                zzj = zze2.zzj();
            }
            zzczi zzcziVar = zzj;
            if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
                zzfow zzj2 = zzcziVar.zzj();
                zzj2.zzh(3);
                zzj2.zzb(zzlVar.zzp);
                zzfowVar = zzj2;
            } else {
                zzfowVar = null;
            }
            zzdbu zzd = zzcziVar.zzd();
            zzgfb zzi = zzd.zzi(zzd.zzj());
            this.zzl = zzi;
            zzger.zzr(zzi, new zzfeu(this, zzesqVar, zzfowVar, zzb, zzcziVar), this.zzb);
            return true;
        }
    }

    public final ViewGroup zzd() {
        return this.zzf;
    }

    public final zzfje zzi() {
        return this.zzk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzm() {
        this.zzd.zza(zzfkg.zzd(6, null, null));
    }

    public final void zzn() {
        this.zzh.zzd(this.zzj.zzc());
    }

    public final void zzo(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
        this.zze.zza(zzbeVar);
    }

    public final void zzp(zzdhd zzdhdVar) {
        this.zzh.zzj(zzdhdVar, this.zzb);
    }

    public final void zzq(zzbke zzbkeVar) {
        this.zzg = zzbkeVar;
    }

    public final boolean zzr() {
        ViewParent parent = this.zzf.getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            com.google.android.gms.ads.internal.zzt.zzp();
            return com.google.android.gms.ads.internal.util.zzs.zzT(view, view.getContext());
        }
        return false;
    }
}
