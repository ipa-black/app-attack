package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcgg extends zzasg implements zzcgi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcgg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzcgi
    public final zzcgf zze(IObjectWrapper iObjectWrapper, zzbvt zzbvtVar, int i) throws RemoteException {
        zzcgf zzcgdVar;
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbvtVar);
        zza.writeInt(224400000);
        Parcel zzbk = zzbk(2, zza);
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzcgdVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzcgdVar = queryLocalInterface instanceof zzcgf ? (zzcgf) queryLocalInterface : new zzcgd(readStrongBinder);
        }
        zzbk.recycle();
        return zzcgdVar;
    }
}
