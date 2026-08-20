package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzemp implements zzgen {
    final /* synthetic */ zzemq zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzemp(zzemq zzemqVar) {
        this.zza = zzemqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        zzczi zzcziVar;
        zzdep zzdepVar;
        zzcziVar = this.zza.zza;
        com.google.android.gms.ads.internal.client.zze zza = zzcziVar.zzd().zza(th);
        zzdepVar = this.zza.zzd;
        zzdepVar.zza(zza);
        zzfka.zzb(zza.zza, th, "DelayedBannerAd.onFailure");
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* synthetic */ void zzb(Object obj) {
        ((zzcyl) obj).zzab();
    }
}
