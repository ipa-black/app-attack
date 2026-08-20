package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzcdm extends zzash implements zzcdn {
    public zzcdm() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzash
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzcdh zzcdfVar;
        switch (i) {
            case 1:
                zzj();
                break;
            case 2:
                zzg();
                break;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzcdfVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    zzcdfVar = queryLocalInterface instanceof zzcdh ? (zzcdh) queryLocalInterface : new zzcdf(readStrongBinder);
                }
                zzasi.zzc(parcel);
                zzk(zzcdfVar);
                break;
            case 4:
                int readInt = parcel.readInt();
                zzasi.zzc(parcel);
                zzh(readInt);
                break;
            case 5:
                zzasi.zzc(parcel);
                zzi((com.google.android.gms.ads.internal.client.zze) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR));
                break;
            case 6:
                zzf();
                break;
            case 7:
                zze();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
