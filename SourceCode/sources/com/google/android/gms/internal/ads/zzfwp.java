package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfwp extends zzasg implements zzfwr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfwp(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.lmd.protocol.ILmdOverlayService");
    }

    @Override // com.google.android.gms.internal.ads.zzfwr
    public final void zze(Bundle bundle, zzfwt zzfwtVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, bundle);
        zzasi.zzg(zza, zzfwtVar);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfwr
    public final void zzf(String str, Bundle bundle, zzfwt zzfwtVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzasi.zze(zza, bundle);
        zzasi.zzg(zza, zzfwtVar);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfwr
    public final void zzg(Bundle bundle, zzfwt zzfwtVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zze(zza, bundle);
        zzasi.zzg(zza, zzfwtVar);
        zzbm(3, zza);
    }
}
