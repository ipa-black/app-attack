package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzerg implements zzesq {
    final /* synthetic */ zzerh zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzerg(zzerh zzerhVar) {
        this.zza = zzerhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzh = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzesq
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcyl zzcylVar;
        zzcyl zzcylVar2;
        zzcyl zzcylVar3;
        zzcyl zzcylVar4 = (zzcyl) obj;
        synchronized (this.zza) {
            zzerh zzerhVar = this.zza;
            zzcylVar = zzerhVar.zzh;
            if (zzcylVar != null) {
                zzcylVar3 = zzerhVar.zzh;
                zzcylVar3.zzaa();
            }
            this.zza.zzh = zzcylVar4;
            zzcylVar2 = this.zza.zzh;
            zzcylVar2.zzab();
        }
    }
}
