package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcgd extends zzasg implements zzcgf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcgd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zze(IObjectWrapper iObjectWrapper, zzcgj zzcgjVar, zzcgc zzcgcVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zze(zza, zzcgjVar);
        zzasi.zzg(zza, zzcgcVar);
        zzbl(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzf(zzcao zzcaoVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzcaoVar);
        zzbl(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzg(List list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzcafVar);
        zzbl(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzcafVar);
        zzbl(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzi(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzbl(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzbl(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzk(List list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzcafVar);
        zzbl(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcgf
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzcafVar);
        zzbl(5, zza);
    }
}
