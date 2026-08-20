package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzehv implements zzgen {
    final /* synthetic */ zzcbu zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzehv(zzehw zzehwVar, zzcbu zzcbuVar) {
        this.zza = zzcbuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final void zza(Throwable th) {
        try {
            this.zza.zze(com.google.android.gms.ads.internal.util.zzaz.zzb(th));
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Ad service can't call client", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgen
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        try {
            this.zza.zzf((ParcelFileDescriptor) obj);
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.zze.zzb("Ad service can't call client", e2);
        }
    }
}
