package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzeou extends zzbxm {
    private final zzekt zza;

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zze(String str) throws RemoteException {
        ((zzems) this.zza.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) throws RemoteException {
        ((zzems) this.zza.zzc).zzh(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxn
    public final void zzg() throws RemoteException {
        ((zzems) this.zza.zzc).zzo();
    }
}
