package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbkc extends zzasg implements zzbke {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbkc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbke
    public final void zze(zzbkb zzbkbVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzbkbVar);
        zzbl(1, zza);
    }
}
