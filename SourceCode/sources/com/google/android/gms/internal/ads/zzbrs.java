package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbrs extends zzasg implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbrs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    public final void zze(zzbrm zzbrmVar, zzbrr zzbrrVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzbrmVar);
        zzasi.zzg(zza, zzbrrVar);
        zzbm(2, zza);
    }
}
