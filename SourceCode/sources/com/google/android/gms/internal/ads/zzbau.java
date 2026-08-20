package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbau implements zzban {
    private boolean zza;
    private long zzb;
    private long zzc;
    private zzath zzd = zzath.zza;

    @Override // com.google.android.gms.internal.ads.zzban
    public final long zzI() {
        long zza;
        long j = this.zzb;
        if (this.zza) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzc;
            zzath zzathVar = this.zzd;
            if (zzathVar.zzb == 1.0f) {
                zza = zzaso.zza(elapsedRealtime);
            } else {
                zza = zzathVar.zza(elapsedRealtime);
            }
            return j + zza;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final zzath zzJ() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final zzath zzK(zzath zzathVar) {
        if (this.zza) {
            zza(zzI());
        }
        this.zzd = zzathVar;
        return zzathVar;
    }

    public final void zza(long j) {
        this.zzb = j;
        if (this.zza) {
            this.zzc = SystemClock.elapsedRealtime();
        }
    }

    public final void zzb() {
        if (this.zza) {
            return;
        }
        this.zzc = SystemClock.elapsedRealtime();
        this.zza = true;
    }

    public final void zzc() {
        if (this.zza) {
            zza(zzI());
            this.zza = false;
        }
    }

    public final void zzd(zzban zzbanVar) {
        zza(zzbanVar.zzI());
        this.zzd = zzbanVar.zzJ();
    }
}
