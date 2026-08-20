package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbnq extends zzasg implements zzbns {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbnq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbns
    public final void zze(zzbnf zzbnfVar) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzbnfVar);
        zzbl(1, zza);
    }
}
