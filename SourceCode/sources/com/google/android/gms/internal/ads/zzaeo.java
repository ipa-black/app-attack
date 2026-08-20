package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaeo implements zzaet {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;

    private zzaeo(long[] jArr, long[] jArr2, long j) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j == C.TIME_UNSET ? zzen.zzv(jArr2[jArr2.length - 1]) : j;
    }

    public static zzaeo zza(long j, zzadi zzadiVar, long j2) {
        int length = zzadiVar.zzd.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += zzadiVar.zzb + zzadiVar.zzd[i3];
            j3 += zzadiVar.zzc + zzadiVar.zze[i3];
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new zzaeo(jArr, jArr2, j2);
    }

    private static Pair zzd(long j, long[] jArr, long[] jArr2) {
        int zzd = zzen.zzd(jArr, j, true, true);
        long j2 = jArr[zzd];
        long j3 = jArr2[zzd];
        int i = zzd + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) ((j4 == j2 ? 0.0d : (j - j2) / (j4 - j2)) * (jArr2[i] - j3))) + j3));
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final long zzb() {
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final long zzc(long j) {
        return zzen.zzv(((Long) zzd(j, this.zza, this.zzb).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        Pair zzd = zzd(zzen.zzz(zzen.zzr(j, 0L, this.zzc)), this.zzb, this.zza);
        long longValue = ((Long) zzd.first).longValue();
        zzaan zzaanVar = new zzaan(zzen.zzv(longValue), ((Long) zzd.second).longValue());
        return new zzaak(zzaanVar, zzaanVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return true;
    }
}
