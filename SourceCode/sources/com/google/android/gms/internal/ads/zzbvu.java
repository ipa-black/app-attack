package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbvu extends zzasg implements zzbvw {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbvu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzA(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zze(zza, zzlVar);
        zza.writeString(str);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(28, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzB(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzC(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zze(zza, zzlVar);
        zza.writeString(str);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzD(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzbl(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzE() throws RemoteException {
        zzbl(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzF() throws RemoteException {
        zzbl(9, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzG(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzd(zza, z);
        zzbl(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzH(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzbl(39, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzI() throws RemoteException {
        zzbl(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzJ(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzbl(37, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzK(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzbl(30, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzL() throws RemoteException {
        zzbl(12, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final boolean zzM() throws RemoteException {
        Parcel zzbk = zzbk(22, zza());
        boolean zzh = zzasi.zzh(zzbk);
        zzbk.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final boolean zzN() throws RemoteException {
        Parcel zzbk = zzbk(13, zza());
        boolean zzh = zzasi.zzh(zzbk);
        zzbk.recycle();
        return zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final zzbwe zzO() throws RemoteException {
        zzbwe zzbweVar;
        Parcel zzbk = zzbk(15, zza());
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzbweVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzbweVar = queryLocalInterface instanceof zzbwe ? (zzbwe) queryLocalInterface : new zzbwe(readStrongBinder);
        }
        zzbk.recycle();
        return zzbweVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final zzbwf zzP() throws RemoteException {
        zzbwf zzbwfVar;
        Parcel zzbk = zzbk(16, zza());
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwfVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzbwfVar = queryLocalInterface instanceof zzbwf ? (zzbwf) queryLocalInterface : new zzbwf(readStrongBinder);
        }
        zzbk.recycle();
        return zzbwfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final Bundle zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final Bundle zzf() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final Bundle zzg() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final com.google.android.gms.ads.internal.client.zzdq zzh() throws RemoteException {
        Parcel zzbk = zzbk(26, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbk.readStrongBinder());
        zzbk.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final zzbnf zzi() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final zzbwc zzj() throws RemoteException {
        zzbwc zzbwaVar;
        Parcel zzbk = zzbk(36, zza());
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwaVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            zzbwaVar = queryLocalInterface instanceof zzbwc ? (zzbwc) queryLocalInterface : new zzbwa(readStrongBinder);
        }
        zzbk.recycle();
        return zzbwaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final zzbwi zzk() throws RemoteException {
        zzbwi zzbwgVar;
        Parcel zzbk = zzbk(27, zza());
        IBinder readStrongBinder = zzbk.readStrongBinder();
        if (readStrongBinder == null) {
            zzbwgVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzbwgVar = queryLocalInterface instanceof zzbwi ? (zzbwi) queryLocalInterface : new zzbwg(readStrongBinder);
        }
        zzbk.recycle();
        return zzbwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final zzbye zzl() throws RemoteException {
        Parcel zzbk = zzbk(33, zza());
        zzbye zzbyeVar = (zzbye) zzasi.zza(zzbk, zzbye.CREATOR);
        zzbk.recycle();
        return zzbyeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final zzbye zzm() throws RemoteException {
        Parcel zzbk = zzbk(34, zza());
        zzbye zzbyeVar = (zzbye) zzasi.zza(zzbk, zzbye.CREATOR);
        zzbk.recycle();
        return zzbyeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final IObjectWrapper zzn() throws RemoteException {
        Parcel zzbk = zzbk(2, zza());
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zzbk.readStrongBinder());
        zzbk.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzo() throws RemoteException {
        zzbl(5, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzp(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzcdc zzcdcVar, String str2) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zze(zza, zzlVar);
        zza.writeString(null);
        zzasi.zzg(zza, zzcdcVar);
        zza.writeString(str2);
        zzbl(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzq(IObjectWrapper iObjectWrapper, zzbsd zzbsdVar, List list) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzbsdVar);
        zza.writeTypedList(list);
        zzbl(31, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzr(IObjectWrapper iObjectWrapper, zzcdc zzcdcVar, List list) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zzg(zza, zzcdcVar);
        zza.writeStringList(list);
        zzbl(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzs(com.google.android.gms.ads.internal.client.zzl zzlVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, zzlVar);
        zza.writeString(str);
        zzbl(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzt(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zze(zza, zzlVar);
        zza.writeString(str);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(38, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzu(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbvz zzbvzVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzv(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zze(zza, zzqVar);
        zzasi.zze(zza, zzlVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzw(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzq zzqVar, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zze(zza, zzqVar);
        zzasi.zze(zza, zzlVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(35, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzx(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzbvz zzbvzVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzy(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbvz zzbvzVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zze(zza, zzlVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zzg(zza, zzbvzVar);
        zzbl(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbvw
    public final void zzz(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzl zzlVar, String str, String str2, zzbvz zzbvzVar, zzblz zzblzVar, List list) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, iObjectWrapper);
        zzasi.zze(zza, zzlVar);
        zza.writeString(str);
        zza.writeString(str2);
        zzasi.zzg(zza, zzbvzVar);
        zzasi.zze(zza, zzblzVar);
        zza.writeStringList(list);
        zzbl(14, zza);
    }
}
