package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzftl extends zzasg implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzftl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    public final zzftj zze(zzfth zzfthVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzfthVar);
        Parcel zzbk = zzbk(1, zza);
        zzftj zzftjVar = (zzftj) zzasi.zza(zzbk, zzftj.CREATOR);
        zzbk.recycle();
        return zzftjVar;
    }

    public final zzfts zzf(zzftq zzftqVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzftqVar);
        Parcel zzbk = zzbk(3, zza);
        zzfts zzftsVar = (zzfts) zzasi.zza(zzbk, zzfts.CREATOR);
        zzbk.recycle();
        return zzftsVar;
    }

    public final void zzg(zzfte zzfteVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzfteVar);
        zzbl(2, zza);
    }
}
