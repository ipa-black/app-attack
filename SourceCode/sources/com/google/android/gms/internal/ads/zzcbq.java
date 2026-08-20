package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzcbq extends zzash implements zzcbr {
    public zzcbq() {
        super("com.google.android.gms.ads.internal.request.IAdsService");
    }

    @Override // com.google.android.gms.internal.ads.zzash
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzcbu zzcbuVar = null;
        if (i == 1) {
            zzcbf zzcbfVar = (zzcbf) zzasi.zza(parcel, zzcbf.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                zzcbuVar = queryLocalInterface instanceof zzcbu ? (zzcbu) queryLocalInterface : new zzcbs(readStrongBinder);
            }
            zzasi.zzc(parcel);
            zzf(zzcbfVar, zzcbuVar);
        } else if (i == 2) {
            zzcbf zzcbfVar2 = (zzcbf) zzasi.zza(parcel, zzcbf.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                if (queryLocalInterface2 instanceof zzcbu) {
                    zzcbu zzcbuVar2 = (zzcbu) queryLocalInterface2;
                }
            }
            zzasi.zzc(parcel);
        } else if (i != 3) {
            return false;
        } else {
            zzcbj zzcbjVar = (zzcbj) zzasi.zza(parcel, zzcbj.CREATOR);
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            if (readStrongBinder3 != null) {
                IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdsServiceResponseListener");
                zzcbuVar = queryLocalInterface3 instanceof zzcbu ? (zzcbu) queryLocalInterface3 : new zzcbs(readStrongBinder3);
            }
            zzasi.zzc(parcel);
            zze(zzcbjVar, zzcbuVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
