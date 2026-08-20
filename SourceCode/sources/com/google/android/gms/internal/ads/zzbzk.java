package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbzk extends zzasg implements zzbzm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbzk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbzm
    public final zzbzj zze(IObjectWrapper iObjectWrapper, zzbvt zzbvtVar, int i) throws RemoteException {
        zzbzj zzbzhVar;
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbvtVar);
        zza.writeInt(224400000);
        Parcel zzbk = zzbk(1, zza);
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzbzhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            zzbzhVar = queryLocalInterface instanceof zzbzj ? (zzbzj) queryLocalInterface : new zzbzh(readStrongBinder);
        }
        zzbk.recycle();
        return zzbzhVar;
    }
}
