package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzesi implements zzesq {
    final /* synthetic */ zzesj zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzesi(zzesj zzesjVar) {
        this.zza = zzesjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzh = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdmv zzdmvVar;
        zzdmv zzdmvVar2 = (zzdmv) obj;
        synchronized (this.zza) {
            this.zza.zzh = zzdmvVar2;
            zzdmvVar = this.zza.zzh;
            zzdmvVar.zzab();
        }
    }
}
