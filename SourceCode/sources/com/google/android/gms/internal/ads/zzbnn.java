package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbnn extends zzasg implements zzbnp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbnn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbnp
    public final void zze(zzbnf zzbnfVar, String str) throws RemoteException {
        Parcel zza = zza();
        zzasi.zzg(zza, zzbnfVar);
        zza.writeString(str);
        zzbl(1, zza);
    }
}
