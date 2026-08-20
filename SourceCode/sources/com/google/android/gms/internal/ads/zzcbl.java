package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcbl extends zzasg implements zzcbn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcbl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zze(zzccb zzccbVar, zzcbx zzcbxVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzccbVar);
        zzasi.zzg(zza, zzcbxVar);
        zzbl(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzf(zzccb zzccbVar, zzcbx zzcbxVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzccbVar);
        zzasi.zzg(zza, zzcbxVar);
        zzbl(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzg(zzccb zzccbVar, zzcbx zzcbxVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzccbVar);
        zzasi.zzg(zza, zzcbxVar);
        zzbl(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcbn
    public final void zzh(String str, zzcbx zzcbxVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzasi.zzg(zza, zzcbxVar);
        zzbl(7, zza);
    }
}
