package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbtu implements zzcik {
    final /* synthetic */ zzbue zza;
    final /* synthetic */ zzfol zzb;
    final /* synthetic */ zzbuf zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbtu(zzbuf zzbufVar, zzbue zzbueVar, zzfol zzfolVar) {
        this.zzc = zzbufVar;
        this.zza = zzbueVar;
        this.zzb = zzfolVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcik
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Object obj2;
        zzbue zzbueVar;
        zzfoy zzfoyVar;
        zzfoy zzfoyVar2;
        zzbue zzbueVar2;
        zzbue zzbueVar3;
        zzbta zzbtaVar = (zzbta) obj;
        obj2 = this.zzc.zza;
        synchronized (obj2) {
            this.zzc.zzi = 0;
            zzbuf zzbufVar = this.zzc;
            zzbueVar = zzbufVar.zzh;
            if (zzbueVar != null) {
                zzbue zzbueVar4 = this.zza;
                zzbueVar2 = zzbufVar.zzh;
                if (zzbueVar4 != zzbueVar2) {
                    com.google.android.gms.ads.internal.util.zze.zza("New JS engine is loaded, marking previous one as destroyable.");
                    zzbueVar3 = this.zzc.zzh;
                    zzbueVar3.zzb();
                }
            }
            this.zzc.zzh = this.zza;
            if (((Boolean) zzbks.zzd.zze()).booleanValue()) {
                zzbuf zzbufVar2 = this.zzc;
                zzfoyVar = zzbufVar2.zze;
                if (zzfoyVar != null) {
                    zzfoyVar2 = zzbufVar2.zze;
                    zzfol zzfolVar = this.zzb;
                    zzfolVar.zzf(true);
                    zzfoyVar2.zzb(zzfolVar.zzl());
                }
            }
        }
    }
}
