package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfeo implements zzesq {
    final /* synthetic */ zzfep zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfeo(zzfep zzfepVar) {
        this.zza = zzfepVar;
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zza = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfeh zzfehVar;
        zzfeh zzfehVar2;
        zzcye zzcyeVar = (zzcye) obj;
        synchronized (this.zza) {
            zzcye zzcyeVar2 = this.zza.zza;
            if (zzcyeVar2 != null) {
                zzcyeVar2.zzaa();
            }
            zzfep zzfepVar = this.zza;
            zzfepVar.zza = zzcyeVar;
            zzcyeVar.zzc(zzfepVar);
            zzfep zzfepVar2 = this.zza;
            zzfehVar = zzfepVar2.zzg;
            zzfehVar2 = zzfepVar2.zzg;
            zzfehVar.zzl(new zzcyf(zzcyeVar, zzfepVar2, zzfehVar2));
            zzcyeVar.zzab();
        }
    }
}
