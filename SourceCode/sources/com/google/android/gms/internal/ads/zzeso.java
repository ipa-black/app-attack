package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeso {
    private final zzdqr zza;
    private final zzesb zzb;
    private final zzdeq zzc;

    public zzeso(zzdqr zzdqrVar, zzfnt zzfntVar) {
        this.zza = zzdqrVar;
        final zzesb zzesbVar = new zzesb(zzfntVar);
        this.zzb = zzesbVar;
        final zzbsu zzg = zzdqrVar.zzg();
        this.zzc = new zzdeq() { // from class: com.google.android.gms.internal.ads.zzesn
            @Override // com.google.android.gms.internal.ads.zzdeq
            public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
                zzesb zzesbVar2 = zzesb.this;
                zzbsu zzbsuVar = zzg;
                zzesbVar2.zza(zzeVar);
                if (zzbsuVar != null) {
                    try {
                        zzbsuVar.zzf(zzeVar);
                    } catch (RemoteException e2) {
                        zzcho.zzl("#007 Could not call remote method.", e2);
                    }
                }
                if (zzbsuVar != null) {
                    try {
                        zzbsuVar.zze(zzeVar.zza);
                    } catch (RemoteException e3) {
                        zzcho.zzl("#007 Could not call remote method.", e3);
                    }
                }
            }
        };
    }

    public final zzdeq zza() {
        return this.zzc;
    }

    public final zzdgb zzb() {
        return this.zzb;
    }

    public final zzdon zzc() {
        return new zzdon(this.zza, this.zzb.zzc());
    }

    public final zzesb zzd() {
        return this.zzb;
    }

    public final void zze(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.zzb.zze(zzbhVar);
    }
}
