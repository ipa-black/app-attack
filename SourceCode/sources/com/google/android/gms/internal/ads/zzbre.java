package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbre extends zzasg implements zzbrg {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbre(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbrg
    public final zzbrd zze(IObjectWrapper iObjectWrapper, zzbvt zzbvtVar, int i, zzbra zzbraVar) throws RemoteException {
        zzbrd zzbrbVar;
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbvtVar);
        zza.writeInt(224400000);
        zzasi.zzg(zza, zzbraVar);
        Parcel zzbk = zzbk(1, zza);
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzbrbVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            zzbrbVar = queryLocalInterface instanceof zzbrd ? (zzbrd) queryLocalInterface : new zzbrb(readStrongBinder);
        }
        zzbk.recycle();
        return zzbrbVar;
    }
}
