package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbds extends zzash implements zzbdt {
    public zzbds() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    public static zzbdt zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        return queryLocalInterface instanceof zzbdt ? (zzbdt) queryLocalInterface : new zzbdr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzash
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbdq zzbdoVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbdoVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                zzbdoVar = queryLocalInterface instanceof zzbdq ? (zzbdq) queryLocalInterface : new zzbdo(readStrongBinder);
            }
            zzasi.zzc(parcel);
            zzd(zzbdoVar);
        } else if (i == 2) {
            parcel.readInt();
            zzasi.zzc(parcel);
        } else if (i != 3) {
            return false;
        } else {
            zzasi.zzc(parcel);
            zzc((com.google.android.gms.ads.internal.client.zze) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
