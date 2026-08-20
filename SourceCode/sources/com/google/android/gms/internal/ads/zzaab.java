package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaab implements zzaam {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final boolean zzd;

    public zzaab(long[] jArr, long[] jArr2, long j) {
        int length = jArr.length;
        int length2 = jArr2.length;
        zzdd.zzd(length == length2);
        boolean z = length2 > 0;
        this.zzd = z;
        if (!z || jArr2[0] <= 0) {
            this.zza = jArr;
            this.zzb = jArr2;
        } else {
            int i = length2 + 1;
            long[] jArr3 = new long[i];
            this.zza = jArr3;
            long[] jArr4 = new long[i];
            this.zzb = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length2);
            System.arraycopy(jArr2, 0, jArr4, 1, length2);
        }
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        if (!this.zzd) {
            zzaan zzaanVar = zzaan.zza;
            return new zzaak(zzaanVar, zzaanVar);
        }
        int zzd = zzen.zzd(this.zzb, j, true, true);
        zzaan zzaanVar2 = new zzaan(this.zzb[zzd], this.zza[zzd]);
        if (zzaanVar2.zzb != j) {
            long[] jArr = this.zzb;
            if (zzd != jArr.length - 1) {
                int i = zzd + 1;
                return new zzaak(zzaanVar2, new zzaan(jArr[i], this.zza[i]));
            }
        }
        return new zzaak(zzaanVar2, zzaanVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return this.zzd;
    }
}
