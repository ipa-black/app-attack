package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzccv extends zzasg implements zzccx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzccv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzccx
    public final void zze(zzccr zzccrVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzccrVar);
        zzbl(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccx
    public final void zzf() throws RemoteException {
        zzbl(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccx
    public final void zzg(int i) throws RemoteException {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbl(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccx
    public final void zzh() throws RemoteException {
        zzbl(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccx
    public final void zzi() throws RemoteException {
        zzbl(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccx
    public final void zzj() throws RemoteException {
        zzbl(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccx
    public final void zzk() throws RemoteException {
        zzbl(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzccx
    public final void zzl() throws RemoteException {
        zzbl(3, zza());
    }
}
