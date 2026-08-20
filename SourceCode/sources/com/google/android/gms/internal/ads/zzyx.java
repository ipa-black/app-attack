package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzyx implements zzaam {
    public final int zza;
    public final int[] zzb;
    public final long[] zzc;
    public final long[] zzd;
    public final long[] zze;
    private final long zzf;

    public zzyx(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zzb = iArr;
        this.zzc = jArr;
        this.zzd = jArr2;
        this.zze = jArr3;
        int length = iArr.length;
        this.zza = length;
        if (length <= 0) {
            this.zzf = 0L;
            return;
        }
        int i = length - 1;
        this.zzf = jArr2[i] + jArr3[i];
    }

    public final String toString() {
        int i = this.zza;
        String arrays = Arrays.toString(this.zzb);
        String arrays2 = Arrays.toString(this.zzc);
        String arrays3 = Arrays.toString(this.zze);
        String arrays4 = Arrays.toString(this.zzd);
        return "ChunkIndex(length=" + i + ", sizes=" + arrays + ", offsets=" + arrays2 + ", timeUs=" + arrays3 + ", durationsUs=" + arrays4 + ")";
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        int zzd = zzen.zzd(this.zze, j, true, true);
        zzaan zzaanVar = new zzaan(this.zze[zzd], this.zzc[zzd]);
        if (zzaanVar.zzb >= j || zzd == this.zza - 1) {
            return new zzaak(zzaanVar, zzaanVar);
        }
        int i = zzd + 1;
        return new zzaak(zzaanVar, new zzaan(this.zze[i], this.zzc[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return true;
    }
}
