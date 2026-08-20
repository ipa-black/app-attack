package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfih extends zzfrt {
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzby zza;
    final /* synthetic */ zzfii zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfih(zzfii zzfiiVar, com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        this.zzb = zzfiiVar;
        this.zza = zzbyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrt
    public final void zzv() {
        zzdvt zzdvtVar;
        zzdvtVar = this.zzb.zzd;
        if (zzdvtVar != null) {
            try {
                this.zza.zze();
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzl("#007 Could not call remote method.", e2);
            }
        }
    }
}
