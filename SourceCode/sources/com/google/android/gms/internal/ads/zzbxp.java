package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbxp extends zzash implements zzbxq {
    public zzbxp() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbxq zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        return queryLocalInterface instanceof zzbxq ? (zzbxq) queryLocalInterface : new zzbxo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzash
    protected final boolean zzbK(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbxt zzbxtVar = null;
        zzbxb zzbwzVar = null;
        zzbxk zzbxiVar = null;
        zzbxe zzbxcVar = null;
        zzbxn zzbxlVar = null;
        zzbxk zzbxiVar2 = null;
        zzbxn zzbxlVar2 = null;
        zzbxh zzbxfVar = null;
        zzbxe zzbxcVar2 = null;
        if (i == 1) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString = parcel.readString();
            Bundle bundle = (Bundle) zzasi.zza(parcel, Bundle.CREATOR);
            Bundle bundle2 = (Bundle) zzasi.zza(parcel, Bundle.CREATOR);
            com.google.android.gms.ads.internal.client.zzq zzqVar = (com.google.android.gms.ads.internal.client.zzq) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                zzbxtVar = queryLocalInterface instanceof zzbxt ? (zzbxt) queryLocalInterface : new zzbxr(readStrongBinder);
            }
            zzbxt zzbxtVar2 = zzbxtVar;
            zzasi.zzc(parcel);
            zzh(asInterface, readString, bundle, bundle2, zzqVar, zzbxtVar2);
            parcel2.writeNoException();
        } else if (i == 2) {
            zzbye zzf = zzf();
            parcel2.writeNoException();
            zzasi.zzf(parcel2, zzf);
        } else if (i == 3) {
            zzbye zzg = zzg();
            parcel2.writeNoException();
            zzasi.zzf(parcel2, zzg);
        } else if (i == 5) {
            com.google.android.gms.ads.internal.client.zzdq zze = zze();
            parcel2.writeNoException();
            zzasi.zzg(parcel2, zze);
        } else if (i == 10) {
            IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzasi.zzc(parcel);
            parcel2.writeNoException();
        } else if (i != 11) {
            switch (i) {
                case 13:
                    String readString2 = parcel.readString();
                    String readString3 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar = (com.google.android.gms.ads.internal.client.zzl) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder2 = parcel.readStrongBinder();
                    if (readStrongBinder2 != null) {
                        IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbxcVar2 = queryLocalInterface2 instanceof zzbxe ? (zzbxe) queryLocalInterface2 : new zzbxc(readStrongBinder2);
                    }
                    zzbxe zzbxeVar = zzbxcVar2;
                    zzasi.zzc(parcel);
                    zzj(readString2, readString3, zzlVar, asInterface2, zzbxeVar, zzbvy.zzb(parcel.readStrongBinder()), (com.google.android.gms.ads.internal.client.zzq) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 14:
                    String readString4 = parcel.readString();
                    String readString5 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar2 = (com.google.android.gms.ads.internal.client.zzl) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder3 = parcel.readStrongBinder();
                    if (readStrongBinder3 != null) {
                        IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                        zzbxfVar = queryLocalInterface3 instanceof zzbxh ? (zzbxh) queryLocalInterface3 : new zzbxf(readStrongBinder3);
                    }
                    zzbxh zzbxhVar = zzbxfVar;
                    zzbvz zzb = zzbvy.zzb(parcel.readStrongBinder());
                    zzasi.zzc(parcel);
                    zzl(readString4, readString5, zzlVar2, asInterface3, zzbxhVar, zzb);
                    parcel2.writeNoException();
                    break;
                case 15:
                    IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    zzasi.zzc(parcel);
                    boolean zzs = zzs(asInterface4);
                    parcel2.writeNoException();
                    zzasi.zzd(parcel2, zzs);
                    break;
                case 16:
                    String readString6 = parcel.readString();
                    String readString7 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar3 = (com.google.android.gms.ads.internal.client.zzl) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 != null) {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbxlVar2 = queryLocalInterface4 instanceof zzbxn ? (zzbxn) queryLocalInterface4 : new zzbxl(readStrongBinder4);
                    }
                    zzbxn zzbxnVar = zzbxlVar2;
                    zzbvz zzb2 = zzbvy.zzb(parcel.readStrongBinder());
                    zzasi.zzc(parcel);
                    zzp(readString6, readString7, zzlVar3, asInterface5, zzbxnVar, zzb2);
                    parcel2.writeNoException();
                    break;
                case 17:
                    IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    zzasi.zzc(parcel);
                    boolean zzt = zzt(asInterface6);
                    parcel2.writeNoException();
                    zzasi.zzd(parcel2, zzt);
                    break;
                case 18:
                    String readString8 = parcel.readString();
                    String readString9 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar4 = (com.google.android.gms.ads.internal.client.zzl) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder5 = parcel.readStrongBinder();
                    if (readStrongBinder5 != null) {
                        IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbxiVar2 = queryLocalInterface5 instanceof zzbxk ? (zzbxk) queryLocalInterface5 : new zzbxi(readStrongBinder5);
                    }
                    zzbxk zzbxkVar = zzbxiVar2;
                    zzbvz zzb3 = zzbvy.zzb(parcel.readStrongBinder());
                    zzasi.zzc(parcel);
                    zzm(readString8, readString9, zzlVar4, asInterface7, zzbxkVar, zzb3);
                    parcel2.writeNoException();
                    break;
                case 19:
                    String readString10 = parcel.readString();
                    zzasi.zzc(parcel);
                    zzq(readString10);
                    parcel2.writeNoException();
                    break;
                case 20:
                    String readString11 = parcel.readString();
                    String readString12 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar5 = (com.google.android.gms.ads.internal.client.zzl) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder6 = parcel.readStrongBinder();
                    if (readStrongBinder6 != null) {
                        IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                        zzbxlVar = queryLocalInterface6 instanceof zzbxn ? (zzbxn) queryLocalInterface6 : new zzbxl(readStrongBinder6);
                    }
                    zzbxn zzbxnVar2 = zzbxlVar;
                    zzbvz zzb4 = zzbvy.zzb(parcel.readStrongBinder());
                    zzasi.zzc(parcel);
                    zzo(readString11, readString12, zzlVar5, asInterface8, zzbxnVar2, zzb4);
                    parcel2.writeNoException();
                    break;
                case 21:
                    String readString13 = parcel.readString();
                    String readString14 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar6 = (com.google.android.gms.ads.internal.client.zzl) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder7 = parcel.readStrongBinder();
                    if (readStrongBinder7 != null) {
                        IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                        zzbxcVar = queryLocalInterface7 instanceof zzbxe ? (zzbxe) queryLocalInterface7 : new zzbxc(readStrongBinder7);
                    }
                    zzbxe zzbxeVar2 = zzbxcVar;
                    zzasi.zzc(parcel);
                    zzk(readString13, readString14, zzlVar6, asInterface9, zzbxeVar2, zzbvy.zzb(parcel.readStrongBinder()), (com.google.android.gms.ads.internal.client.zzq) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 22:
                    String readString15 = parcel.readString();
                    String readString16 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar7 = (com.google.android.gms.ads.internal.client.zzl) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder8 = parcel.readStrongBinder();
                    if (readStrongBinder8 != null) {
                        IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                        zzbxiVar = queryLocalInterface8 instanceof zzbxk ? (zzbxk) queryLocalInterface8 : new zzbxi(readStrongBinder8);
                    }
                    zzbxk zzbxkVar2 = zzbxiVar;
                    zzasi.zzc(parcel);
                    zzn(readString15, readString16, zzlVar7, asInterface10, zzbxkVar2, zzbvy.zzb(parcel.readStrongBinder()), (zzblz) zzasi.zza(parcel, zzblz.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 23:
                    String readString17 = parcel.readString();
                    String readString18 = parcel.readString();
                    com.google.android.gms.ads.internal.client.zzl zzlVar8 = (com.google.android.gms.ads.internal.client.zzl) zzasi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                    IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    IBinder readStrongBinder9 = parcel.readStrongBinder();
                    if (readStrongBinder9 != null) {
                        IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                        zzbwzVar = queryLocalInterface9 instanceof zzbxb ? (zzbxb) queryLocalInterface9 : new zzbwz(readStrongBinder9);
                    }
                    zzbxb zzbxbVar = zzbwzVar;
                    zzbvz zzb5 = zzbvy.zzb(parcel.readStrongBinder());
                    zzasi.zzc(parcel);
                    zzi(readString17, readString18, zzlVar8, asInterface11, zzbxbVar, zzb5);
                    parcel2.writeNoException();
                    break;
                case 24:
                    IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    zzasi.zzc(parcel);
                    boolean zzr = zzr(asInterface12);
                    parcel2.writeNoException();
                    zzasi.zzd(parcel2, zzr);
                    break;
                default:
                    return false;
            }
        } else {
            parcel.createStringArray();
            Bundle[] bundleArr = (Bundle[]) parcel.createTypedArray(Bundle.CREATOR);
            zzasi.zzc(parcel);
            parcel2.writeNoException();
        }
        return true;
    }
}
