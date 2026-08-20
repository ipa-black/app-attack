package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbnx extends zzasg implements zzbnz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbnx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbnz
    public final void zze(zzboi zzboiVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzboiVar);
        zzbl(1, zza);
    }
}
