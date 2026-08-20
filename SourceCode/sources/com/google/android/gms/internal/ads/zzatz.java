package com.google.android.gms.internal.ads;

import android.os.Handler;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzatz {
    private final Handler zza;
    private final zzaua zzb;

    public zzatz(Handler handler, zzaua zzauaVar) {
        handler.getClass();
        this.zza = handler;
        this.zzb = zzauaVar;
    }

    public final void zzb(int i) {
        this.zza.post(new zzaty(this, i));
    }

    public final void zzc(int i, long j, long j2) {
        this.zza.post(new zzatw(this, i, j, j2));
    }

    public final void zzd(String str, long j, long j2) {
        this.zza.post(new zzatu(this, str, j, j2));
    }

    public final void zze(zzaux zzauxVar) {
        this.zza.post(new zzatx(this, zzauxVar));
    }

    public final void zzf(zzaux zzauxVar) {
        this.zza.post(new zzatt(this, zzauxVar));
    }

    public final void zzg(zzatd zzatdVar) {
        this.zza.post(new zzatv(this, zzatdVar));
    }
}
