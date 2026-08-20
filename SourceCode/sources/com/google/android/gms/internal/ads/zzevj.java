package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzevj {
    public final zzgfb zza;
    private final long zzb;
    private final Clock zzc;

    public zzevj(zzgfb zzgfbVar, long j, Clock clock) {
        this.zza = zzgfbVar;
        this.zzc = clock;
        this.zzb = clock.elapsedRealtime() + j;
    }

    public final boolean zza() {
        return this.zzb < this.zzc.elapsedRealtime();
    }
}
