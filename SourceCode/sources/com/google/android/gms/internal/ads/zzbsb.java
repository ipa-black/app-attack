package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbsb extends zzasg implements zzbsd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbsb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzbsd
    public final void zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbl(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbsd
    public final void zzf() throws RemoteException {
        zzbl(2, zza());
    }
}
