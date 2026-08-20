package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbxo extends zzasg implements zzbxq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbxo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final com.google.android.gms.ads.internal.client.zzdq zze() throws RemoteException {
        Parcel zzbk = zzbk(5, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbk.readStrongBinder());
        zzbk.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final zzbye zzf() throws RemoteException {
        Parcel zzbk = zzbk(2, zza());
        zzbye zzbyeVar = (zzbye) zzasi.zza(zzbk, zzbye.CREATOR);
        zzbk.recycle();
        return zzbyeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final zzbye zzg() throws RemoteException {
        Parcel zzbk = zzbk(3, zza());
        zzbye zzbyeVar = (zzbye) zzasi.zza(zzbk, zzbye.CREATOR);
        zzbk.recycle();
        return zzbyeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzh(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzq zzqVar, zzbxt zzbxtVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zza.writeString(str);
        zzasi.zze(zza, bundle);
        zzasi.zze(zza, bundle2);
        zzasi.zze(zza, zzqVar);
        zzasi.zzg(zza, zzbxtVar);
        zzbl(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzi(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbxb zzbxbVar, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbxbVar);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzj(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbxe zzbxeVar, zzbvz zzbvzVar, com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbxeVar);
        zzasi.zzg(zza, zzbvzVar);
        zzasi.zze(zza, zzqVar);
        zzbl(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzk(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbxe zzbxeVar, zzbvz zzbvzVar, com.google.android.gms.ads.internal.client.zzq zzqVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbxeVar);
        zzasi.zzg(zza, zzbvzVar);
        zzasi.zze(zza, zzqVar);
        zzbl(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzl(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbxhVar);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzm(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbxk zzbxkVar, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbxkVar);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(18, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzn(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbxk zzbxkVar, zzbvz zzbvzVar, zzblz zzblzVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbxkVar);
        zzasi.zzg(zza, zzbvzVar);
        zzasi.zze(zza, zzblzVar);
        zzbl(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzo(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbxn zzbxnVar, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbxnVar);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzp(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbxn zzbxnVar, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zze(zza, zzlVar);
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbxnVar);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final void zzq(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbl(19, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        Parcel zzbk = zzbk(24, zza);
        boolean zzh = zzasi.zzh(zzbk);
        zzbk.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final boolean zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        Parcel zzbk = zzbk(15, zza);
        boolean zzh = zzasi.zzh(zzbk);
        zzbk.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzbxq
    public final boolean zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        Parcel zzbk = zzbk(17, zza);
        boolean zzh = zzasi.zzh(zzbk);
        zzbk.recycle();
        return zzh;
    }
}
