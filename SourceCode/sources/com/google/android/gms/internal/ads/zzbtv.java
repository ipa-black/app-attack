package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbtv implements zzcii {
    final /* synthetic */ zzbue zza;
    final /* synthetic */ zzfol zzb;
    final /* synthetic */ zzbuf zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbtv(zzbuf zzbufVar, zzbue zzbueVar, zzfol zzfolVar) {
        this.zzc = zzbufVar;
        this.zza = zzbueVar;
        this.zzb = zzfolVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zza() {
        Object obj;
        zzfoy zzfoyVar;
        zzfoy zzfoyVar2;
        obj = this.zzc.zza;
        synchronized (obj) {
            this.zzc.zzi = 1;
            com.google.android.gms.ads.internal.util.zze.zza("Failed loading new engine. Marking new engine destroyable.");
            this.zza.zzb();
            if (((Boolean) zzbks.zzd.zze()).booleanValue()) {
                zzbuf zzbufVar = this.zzc;
                zzfoyVar = zzbufVar.zze;
                if (zzfoyVar != null) {
                    zzfoyVar2 = zzbufVar.zze;
                    zzfol zzfolVar = this.zzb;
                    zzfolVar.zzf(false);
                    zzfoyVar2.zzb(zzfolVar.zzl());
                }
            }
        }
    }
}
