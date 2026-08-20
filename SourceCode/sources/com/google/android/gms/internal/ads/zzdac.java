package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdac implements zzdgb, zzbbx {
    private final zzfil zza;
    private final zzdff zzb;
    private final zzdgk zzc;
    private final AtomicBoolean zzd = new AtomicBoolean();
    private final AtomicBoolean zze = new AtomicBoolean();

    public zzdac(zzfil zzfilVar, zzdff zzdffVar, zzdgk zzdgkVar) {
        this.zza = zzfilVar;
        this.zzb = zzdffVar;
        this.zzc = zzdgkVar;
    }

    private final void zza() {
        if (this.zzd.compareAndSet(false, true)) {
            this.zzb.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbx
    public final void zzc(zzbbw zzbbwVar) {
        if (this.zza.zzf == 1 && zzbbwVar.zzj) {
            zza();
        }
        if (zzbbwVar.zzj && this.zze.compareAndSet(false, true)) {
            this.zzc.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final synchronized void zzn() {
        if (this.zza.zzf != 1) {
            zza();
        }
    }
}
