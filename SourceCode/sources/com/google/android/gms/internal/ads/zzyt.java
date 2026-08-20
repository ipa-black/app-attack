package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzyt {
    public static final zzyt zza = new zzyt(-3, C.TIME_UNSET, -1);
    private final int zzb;
    private final long zzc;
    private final long zzd;

    private zzyt(int i, long j, long j2) {
        this.zzb = i;
        this.zzc = j;
        this.zzd = j2;
    }

    public static zzyt zzd(long j, long j2) {
        return new zzyt(-1, j, j2);
    }

    public static zzyt zze(long j) {
        return new zzyt(0, C.TIME_UNSET, j);
    }

    public static zzyt zzf(long j, long j2) {
        return new zzyt(-2, j, j2);
    }
}
