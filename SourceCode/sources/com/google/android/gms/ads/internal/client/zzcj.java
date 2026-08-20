package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzasg;
import com.google.android.gms.internal.ads.zzasi;
import com.google.android.gms.internal.ads.zzbvs;
import com.google.android.gms.internal.ads.zzbvt;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzcj extends zzasg implements zzcl {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcl
    public final zzbvt getAdapterCreator() throws RemoteException {
        Parcel zzbk = zzbk(2, zza());
        zzbvt zzf = zzbvs.zzf(zzbk.readStrongBinder());
        zzbk.recycle();
        return zzf;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcl
    public final zzen getLiteSdkVersion() throws RemoteException {
        Parcel zzbk = zzbk(1, zza());
        zzen zzenVar = (zzen) zzasi.zza(zzbk, zzen.CREATOR);
        zzbk.recycle();
        return zzenVar;
    }
}
