package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzenv extends zzbxj {
    final /* synthetic */ zzenw zza;
    private final zzekt zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzenv(zzenw zzenwVar, zzekt zzektVar, zzenu zzenuVar) {
        this.zza = zzenwVar;
        this.zzb = zzektVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zze(String str) throws RemoteException {
        ((zzems) this.zzb.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        ((zzems) this.zzb.zzc).zzh(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzg(zzbwi zzbwiVar) throws RemoteException {
        zzenw.zzc(this.zza, zzbwiVar);
        ((zzems) this.zzb.zzc).zzo();
    }
}
