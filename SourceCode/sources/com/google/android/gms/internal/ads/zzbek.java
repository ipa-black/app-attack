package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbek extends zzasg implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbek(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    public final long zze(zzbei zzbeiVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzbeiVar);
        Parcel zzbk = zzbk(3, zza);
        long readLong = zzbk.readLong();
        zzbk.recycle();
        return readLong;
    }

    public final zzbef zzf(zzbei zzbeiVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzbeiVar);
        Parcel zzbk = zzbk(1, zza);
        zzbef zzbefVar = (zzbef) zzasi.zza(zzbk, zzbef.CREATOR);
        zzbk.recycle();
        return zzbefVar;
    }

    public final zzbef zzg(zzbei zzbeiVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzbeiVar);
        Parcel zzbk = zzbk(2, zza);
        zzbef zzbefVar = (zzbef) zzasi.zza(zzbk, zzbef.CREATOR);
        zzbk.recycle();
        return zzbefVar;
    }
}
