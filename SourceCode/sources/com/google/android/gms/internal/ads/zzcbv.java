package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcbv extends zzasg implements zzcbx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzcbx
    public final void zze(com.google.android.gms.ads.internal.util.zzaz zzazVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzazVar);
        zzbl(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcbx
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, parcelFileDescriptor);
        zzbl(1, zza);
    }
}
