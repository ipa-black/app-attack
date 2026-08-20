package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzesx implements zzgen {
    final /* synthetic */ zzesq zza;
    final /* synthetic */ zzfow zzb;
    final /* synthetic */ zzfol zzc;
    final /* synthetic */ zzdos zzd;
    final /* synthetic */ zzesy zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzesx(zzesy zzesyVar, zzesq zzesqVar, zzfow zzfowVar, zzfol zzfolVar, zzdos zzdosVar) {
        this.zze = zzesyVar;
        this.zza = zzesqVar;
        this.zzb = zzfowVar;
        this.zzc = zzfolVar;
        this.zzd = zzdosVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzcpj zzcpjVar;
        zzfoy zzfoyVar;
        zzfow zzfowVar;
        final com.google.android.gms.ads.internal.client.zze zza = this.zzd.zza().zza(th);
        this.zzd.zzb().zza(zza);
        zzcpjVar = this.zze.zzb;
        zzcpjVar.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzesw
            @Override // java.lang.Runnable
            public final void run() {
                zzeso zzesoVar;
                zzesx zzesxVar = zzesx.this;
                com.google.android.gms.ads.internal.client.zze zzeVar = zza;
                zzesoVar = zzesxVar.zze.zzd;
                zzesoVar.zza().zza(zzeVar);
            }
        });
        zzfka.zzb(zza.zza, th, "NativeAdLoader.onFailure");
        this.zza.zza();
        if (!((Boolean) zzbks.zzc.zze()).booleanValue() || (zzfowVar = this.zzb) == null) {
            zzfoyVar = this.zze.zze;
            zzfol zzfolVar = this.zzc;
            zzfolVar.zza(zza);
            zzfolVar.zzg(th);
            zzfolVar.zzf(false);
            zzfoyVar.zzb(zzfolVar.zzl());
            return;
        }
        zzfowVar.zzc(zza);
        zzfol zzfolVar2 = this.zzc;
        zzfolVar2.zzg(th);
        zzfolVar2.zzf(false);
        zzfowVar.zza(zzfolVar2);
        zzfowVar.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzeso zzesoVar;
        zzcpj zzcpjVar;
        zzfoy zzfoyVar;
        zzfow zzfowVar;
        zzdan zzdanVar = (zzdan) obj;
        synchronized (this.zze) {
            zzdis zzn = zzdanVar.zzn();
            zzesoVar = this.zze.zzd;
            zzn.zza(zzesoVar.zzd());
            this.zza.zzb(zzdanVar);
            zzcpjVar = this.zze.zzb;
            zzcpjVar.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzesv
                @Override // java.lang.Runnable
                public final void run() {
                    zzeso zzesoVar2;
                    zzesoVar2 = zzesx.this.zze.zzd;
                    zzesoVar2.zzb().zzn();
                }
            });
            if (((Boolean) zzbks.zzc.zze()).booleanValue() && (zzfowVar = this.zzb) != null) {
                zzfowVar.zzf(zzdanVar.zzp().zzb);
                zzfowVar.zze(zzdanVar.zzl().zzg());
                zzfol zzfolVar = this.zzc;
                zzfolVar.zzf(true);
                zzfowVar.zza(zzfolVar);
                zzfowVar.zzg();
            } else {
                zzfoyVar = this.zze.zze;
                zzfol zzfolVar2 = this.zzc;
                zzfolVar2.zzb(zzdanVar.zzp().zzb);
                zzfolVar2.zzd(zzdanVar.zzl().zzg());
                zzfolVar2.zzf(true);
                zzfoyVar.zzb(zzfolVar2.zzl());
            }
        }
    }
}
