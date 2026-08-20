package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcdi extends zzasg implements zzcdk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcdi(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final Bundle zzb() throws RemoteException {
        Parcel zzbk = zzbk(9, zza());
        Bundle bundle = (Bundle) zzasi.zza(zzbk, Bundle.CREATOR);
        zzbk.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final com.google.android.gms.ads.internal.client.zzdn zzc() throws RemoteException {
        Parcel zzbk = zzbk(12, zza());
        com.google.android.gms.ads.internal.client.zzdn zzb = com.google.android.gms.ads.internal.client.zzdm.zzb(zzbk.readStrongBinder());
        zzbk.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final zzcdh zzd() throws RemoteException {
        zzcdh zzcdfVar;
        Parcel zzbk = zzbk(11, zza());
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzcdfVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzcdfVar = queryLocalInterface instanceof zzcdh ? (zzcdh) queryLocalInterface : new zzcdf(readStrongBinder);
        }
        zzbk.recycle();
        return zzcdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final String zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzf(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcdr zzcdrVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, zzcdrVar);
        zzbl(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzg(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcdr zzcdrVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, zzcdrVar);
        zzbl(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzh(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzd(zza, z);
        zzbl(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzi(com.google.android.gms.ads.internal.client.zzdd zzddVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzddVar);
        zzbl(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzj(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzdgVar);
        zzbl(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzk(zzcdn zzcdnVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzcdnVar);
        zzbl(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzl(zzcdy zzcdyVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzcdyVar);
        zzbl(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzbl(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzn(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final boolean zzo() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdk
    public final void zzp(zzcds zzcdsVar) throws RemoteException {
        throw null;
    }
}
