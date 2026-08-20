package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbog extends zzasg implements zzboi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbog(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzA() throws RemoteException {
        zzbl(28, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzB(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, bundle);
        zzbl(17, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzC() throws RemoteException {
        zzbl(27, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzD(com.google.android.gms.ads.internal.client.zzcs zzcsVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzcsVar);
        zzbl(26, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzE(com.google.android.gms.ads.internal.client.zzdg zzdgVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzdgVar);
        zzbl(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzF(zzbof zzbofVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzbofVar);
        zzbl(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final boolean zzG() throws RemoteException {
        Parcel zzbk = zzbk(30, zza());
        boolean zzh = zzasi.zzh(zzbk);
        zzbk.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final boolean zzH() throws RemoteException {
        Parcel zzbk = zzbk(24, zza());
        boolean zzh = zzasi.zzh(zzbk);
        zzbk.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final boolean zzI(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, bundle);
        Parcel zzbk = zzbk(16, zza);
        boolean zzh = zzasi.zzh(zzbk);
        zzbk.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final double zze() throws RemoteException {
        Parcel zzbk = zzbk(8, zza());
        double readDouble = zzbk.readDouble();
        zzbk.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final Bundle zzf() throws RemoteException {
        Parcel zzbk = zzbk(20, zza());
        Bundle bundle = (Bundle) zzasi.zza(zzbk, Bundle.CREATOR);
        zzbk.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final com.google.android.gms.ads.internal.client.zzdn zzg() throws RemoteException {
        Parcel zzbk = zzbk(31, zza());
        com.google.android.gms.ads.internal.client.zzdn zzb = com.google.android.gms.ads.internal.client.zzdm.zzb(zzbk.readStrongBinder());
        zzbk.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final com.google.android.gms.ads.internal.client.zzdq zzh() throws RemoteException {
        Parcel zzbk = zzbk(11, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbk.readStrongBinder());
        zzbk.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final zzbmd zzi() throws RemoteException {
        zzbmd zzbmbVar;
        Parcel zzbk = zzbk(14, zza());
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzbmbVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzbmbVar = queryLocalInterface instanceof zzbmd ? (zzbmd) queryLocalInterface : new zzbmb(readStrongBinder);
        }
        zzbk.recycle();
        return zzbmbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final zzbmi zzj() throws RemoteException {
        zzbmi zzbmgVar;
        Parcel zzbk = zzbk(29, zza());
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzbmgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            zzbmgVar = queryLocalInterface instanceof zzbmi ? (zzbmi) queryLocalInterface : new zzbmg(readStrongBinder);
        }
        zzbk.recycle();
        return zzbmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final zzbml zzk() throws RemoteException {
        zzbml zzbmjVar;
        Parcel zzbk = zzbk(5, zza());
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzbmjVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbmjVar = queryLocalInterface instanceof zzbml ? (zzbml) queryLocalInterface : new zzbmj(readStrongBinder);
        }
        zzbk.recycle();
        return zzbmjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final IObjectWrapper zzl() throws RemoteException {
        Parcel zzbk = zzbk(19, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzbk.readStrongBinder());
        zzbk.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final IObjectWrapper zzm() throws RemoteException {
        Parcel zzbk = zzbk(18, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzbk.readStrongBinder());
        zzbk.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzn() throws RemoteException {
        Parcel zzbk = zzbk(7, zza());
        String readString = zzbk.readString();
        zzbk.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzo() throws RemoteException {
        Parcel zzbk = zzbk(4, zza());
        String readString = zzbk.readString();
        zzbk.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzp() throws RemoteException {
        Parcel zzbk = zzbk(6, zza());
        String readString = zzbk.readString();
        zzbk.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzq() throws RemoteException {
        Parcel zzbk = zzbk(2, zza());
        String readString = zzbk.readString();
        zzbk.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzr() throws RemoteException {
        Parcel zzbk = zzbk(12, zza());
        String readString = zzbk.readString();
        zzbk.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzs() throws RemoteException {
        Parcel zzbk = zzbk(10, zza());
        String readString = zzbk.readString();
        zzbk.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final String zzt() throws RemoteException {
        Parcel zzbk = zzbk(9, zza());
        String readString = zzbk.readString();
        zzbk.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final List zzu() throws RemoteException {
        Parcel zzbk = zzbk(3, zza());
        ArrayList zzb = zzasi.zzb(zzbk);
        zzbk.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final List zzv() throws RemoteException {
        Parcel zzbk = zzbk(23, zza());
        ArrayList zzb = zzasi.zzb(zzbk);
        zzbk.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzw() throws RemoteException {
        zzbl(22, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzx() throws RemoteException {
        zzbl(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzy(com.google.android.gms.ads.internal.client.zzcw zzcwVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzcwVar);
        zzbl(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzboi
    public final void zzz(Bundle bundle) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, bundle);
        zzbl(15, zza);
    }
}
