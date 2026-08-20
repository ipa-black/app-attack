package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfib implements zzesq {
    final /* synthetic */ zzfic zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfib(zzfic zzficVar) {
        this.zza = zzficVar;
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzg = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdvt zzdvtVar;
        zzfiy zzfiyVar;
        zzdvt zzdvtVar2 = (zzdvt) obj;
        synchronized (this.zza) {
            this.zza.zzg = zzdvtVar2;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzda)).booleanValue()) {
                zzfiz zzd = zzdvtVar2.zzd();
                zzfiyVar = this.zza.zzd;
                zzd.zza = zzfiyVar;
            }
            zzdvtVar = this.zza.zzg;
            zzdvtVar.zzab();
        }
    }
}
