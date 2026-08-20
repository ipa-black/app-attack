package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzeau extends zzcdq {
    final /* synthetic */ zzeaw zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeau(zzeaw zzeawVar) {
        this.zza = zzeawVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zze(int i) throws RemoteException {
        zzeal zzealVar;
        long j;
        zzeaw zzeawVar = this.zza;
        zzealVar = zzeawVar.zzb;
        j = zzeawVar.zza;
        zzealVar.zzm(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        zzeal zzealVar;
        long j;
        zzeaw zzeawVar = this.zza;
        zzealVar = zzeawVar.zzb;
        j = zzeawVar.zza;
        zzealVar.zzm(j, zzeVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdr
    public final void zzg() throws RemoteException {
        zzeal zzealVar;
        long j;
        zzeaw zzeawVar = this.zza;
        zzealVar = zzeawVar.zzb;
        j = zzeawVar.zza;
        zzealVar.zzp(j);
    }
}
