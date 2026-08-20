package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcbp extends zzasg implements zzcbr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcbp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdsService");
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zze(zzcbj zzcbjVar, zzcbu zzcbuVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzcbjVar);
        zzasi.zzg(zza, zzcbuVar);
        zzbl(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcbr
    public final void zzf(zzcbf zzcbfVar, zzcbu zzcbuVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzcbfVar);
        zzasi.zzg(zza, zzcbuVar);
        zzbl(1, zza);
    }
}
