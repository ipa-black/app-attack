package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzfia extends zzfrt {
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzdd zza;
    final /* synthetic */ zzfic zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfia(zzfic zzficVar, com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        this.zzb = zzficVar;
        this.zza = zzddVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfrt
    public final void zzv() {
        zzdvt zzdvtVar;
        zzdvtVar = this.zzb.zzg;
        if (zzdvtVar != null) {
            try {
                this.zza.zze();
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzl("#007 Could not call remote method.", e2);
            }
        }
    }
}
