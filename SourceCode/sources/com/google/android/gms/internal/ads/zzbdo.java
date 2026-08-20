package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbdo extends zzasg implements zzbdq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbdo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final com.google.android.gms.ads.internal.client.zzbu zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final com.google.android.gms.ads.internal.client.zzdn zzf() throws RemoteException {
        Parcel zzbk = zzbk(5, zza());
        com.google.android.gms.ads.internal.client.zzdn zzb = com.google.android.gms.ads.internal.client.zzdm.zzb(zzbk.readStrongBinder());
        zzbk.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final void zzg(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzd(zza, z);
        zzbl(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final void zzh(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzdgVar);
        zzbl(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final void zzi(IObjectWrapper iObjectWrapper, zzbdx zzbdxVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbdxVar);
        zzbl(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbdq
    public final void zzj(zzbdu zzbduVar) throws RemoteException {
        throw null;
    }
}
