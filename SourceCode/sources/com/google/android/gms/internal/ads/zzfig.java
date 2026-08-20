package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfig implements zzesq {
    final /* synthetic */ zzfii zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfig(zzfii zzfiiVar) {
        this.zza = zzfiiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzd = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdvt zzdvtVar;
        zzfiy zzfiyVar;
        zzdvt zzdvtVar2 = (zzdvt) obj;
        synchronized (this.zza) {
            this.zza.zzd = zzdvtVar2;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzda)).booleanValue()) {
                zzfiz zzd = zzdvtVar2.zzd();
                zzfiyVar = this.zza.zzc;
                zzd.zza = zzfiyVar;
            }
            zzdvtVar = this.zza.zzd;
            zzdvtVar.zzab();
        }
    }
}
