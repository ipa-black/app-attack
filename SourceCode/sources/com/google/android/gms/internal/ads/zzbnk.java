package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbnk extends zzasg implements zzbnm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbnk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbnm
    public final void zze(zzbnc zzbncVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzbncVar);
        zzbl(1, zza);
    }
}
