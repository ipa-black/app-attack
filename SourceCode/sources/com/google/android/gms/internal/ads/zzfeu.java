package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfeu implements zzgen {
    final /* synthetic */ zzesq zza;
    final /* synthetic */ zzfow zzb;
    final /* synthetic */ zzfol zzc;
    final /* synthetic */ zzczi zzd;
    final /* synthetic */ zzfev zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfeu(zzfev zzfevVar, zzesq zzesqVar, zzfow zzfowVar, zzfol zzfolVar, zzczi zzcziVar) {
        this.zze = zzfevVar;
        this.zza = zzesqVar;
        this.zzb = zzfowVar;
        this.zzc = zzfolVar;
        this.zzd = zzcziVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzdhc zzdhcVar;
        zzdjj zzdjjVar;
        zzfoy zzfoyVar;
        zzfow zzfowVar;
        Executor executor;
        final com.google.android.gms.ads.internal.client.zze zza = this.zzd.zzd().zza(th);
        synchronized (this.zze) {
            this.zze.zzl = null;
            this.zzd.zzf().zza(zza);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhq)).booleanValue()) {
                executor = this.zze.zzb;
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfet
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzesb zzesbVar;
                        zzfeu zzfeuVar = zzfeu.this;
                        com.google.android.gms.ads.internal.client.zze zzeVar = zza;
                        zzesbVar = zzfeuVar.zze.zzd;
                        zzesbVar.zza(zzeVar);
                    }
                });
            }
            zzfev zzfevVar = this.zze;
            zzdhcVar = zzfevVar.zzh;
            zzdjjVar = zzfevVar.zzj;
            zzdhcVar.zzd(zzdjjVar.zzc());
            zzfka.zzb(zza.zza, th, "BannerAdLoader.onFailure");
            this.zza.zza();
            if (((Boolean) zzbks.zzc.zze()).booleanValue() && (zzfowVar = this.zzb) != null) {
                zzfowVar.zzc(zza);
                zzfol zzfolVar = this.zzc;
                zzfolVar.zzg(th);
                zzfolVar.zzf(false);
                zzfowVar.zza(zzfolVar);
                zzfowVar.zzg();
            } else {
                zzfoyVar = this.zze.zzi;
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
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        zzdhc zzdhcVar;
        zzfoy zzfoyVar;
        zzfow zzfowVar;
        Executor executor;
        final zzesb zzesbVar;
        zzesb zzesbVar2;
        zzesf zzesfVar;
        zzcyl zzcylVar = (zzcyl) obj;
        synchronized (this.zze) {
            this.zze.zzl = null;
            viewGroup = this.zze.zzf;
            viewGroup.removeAllViews();
            if (zzcylVar.zzc() != null) {
                ViewParent parent = zzcylVar.zzc().getParent();
                if (parent instanceof ViewGroup) {
                    String zzg = zzcylVar.zzl() != null ? zzcylVar.zzl().zzg() : "";
                    com.google.android.gms.ads.internal.util.zze.zzj("Banner view provided from " + zzg + " already has a parent view. Removing its old parent.");
                    ((ViewGroup) parent).removeView(zzcylVar.zzc());
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhq)).booleanValue()) {
                zzdis zzn = zzcylVar.zzn();
                zzesbVar2 = this.zze.zzd;
                zzn.zza(zzesbVar2);
                zzesfVar = this.zze.zze;
                zzn.zzc(zzesfVar);
            }
            viewGroup2 = this.zze.zzf;
            viewGroup2.addView(zzcylVar.zzc());
            this.zza.zzb(zzcylVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhq)).booleanValue()) {
                zzfev zzfevVar = this.zze;
                executor = zzfevVar.zzb;
                zzesbVar = zzfevVar.zzd;
                zzesbVar.getClass();
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfes
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzesb.this.zzn();
                    }
                });
            }
            zzdhcVar = this.zze.zzh;
            zzdhcVar.zzd(zzcylVar.zza());
            if (((Boolean) zzbks.zzc.zze()).booleanValue() && (zzfowVar = this.zzb) != null) {
                zzfowVar.zzf(zzcylVar.zzp().zzb);
                zzfowVar.zze(zzcylVar.zzl().zzg());
                zzfol zzfolVar = this.zzc;
                zzfolVar.zzf(true);
                zzfowVar.zza(zzfolVar);
                zzfowVar.zzg();
            } else {
                zzfoyVar = this.zze.zzi;
                zzfol zzfolVar2 = this.zzc;
                zzfolVar2.zzb(zzcylVar.zzp().zzb);
                zzfolVar2.zzd(zzcylVar.zzl().zzg());
                zzfolVar2.zzf(true);
                zzfoyVar.zzb(zzfolVar2.zzl());
            }
        }
    }
}
