package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbnh extends zzasg implements zzbnj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbnh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbnj
    public final void zze(zzbna zzbnaVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzbnaVar);
        zzbl(1, zza);
    }
}
