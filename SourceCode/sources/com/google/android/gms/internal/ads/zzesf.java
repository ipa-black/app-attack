package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzesf implements com.google.android.gms.ads.internal.client.zza, zzdmc {
    private com.google.android.gms.ads.internal.client.zzbe zza;

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        com.google.android.gms.ads.internal.client.zzbe zzbeVar = this.zza;
        if (zzbeVar != null) {
            try {
                zzbeVar.zzb();
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzk("Remote Exception at onAdClicked.", e2);
            }
        }
    }

    public final synchronized void zza(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
        this.zza = zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final synchronized void zzq() {
        com.google.android.gms.ads.internal.client.zzbe zzbeVar = this.zza;
        if (zzbeVar != null) {
            try {
                zzbeVar.zzb();
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.zze.zzk("Remote Exception at onPhysicalClick.", e2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdmc
    public final synchronized void zzr() {
    }
}
