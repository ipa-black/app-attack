package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaev implements zzaet {
    private final long zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;
    private final long[] zzf;

    private zzaev(long j, int i, long j2, long j3, long[] jArr) {
        this.zza = j;
        this.zzb = i;
        this.zzc = j2;
        this.zzf = jArr;
        this.zzd = j3;
        this.zze = j3 != -1 ? j + j3 : -1L;
    }

    public static zzaev zza(long j, long j2, zzaac zzaacVar, zzef zzefVar) {
        int zzn;
        int i = zzaacVar.zzg;
        int i2 = zzaacVar.zzd;
        int zze = zzefVar.zze();
        if ((zze & 1) != 1 || (zzn = zzefVar.zzn()) == 0) {
            return null;
        }
        long zzw = zzen.zzw(zzn, i * 1000000, i2);
        if ((zze & 6) != 6) {
            return new zzaev(j2, zzaacVar.zzc, zzw, -1L, null);
        }
        long zzs = zzefVar.zzs();
        long[] jArr = new long[100];
        for (int i3 = 0; i3 < 100; i3++) {
            jArr[i3] = zzefVar.zzk();
        }
        if (j != -1) {
            long j3 = j2 + zzs;
            if (j != j3) {
                zzdw.zze("XingSeeker", "XING data size mismatch: " + j + ", " + j3);
            }
        }
        return new zzaev(j2, zzaacVar.zzc, zzw, zzs, jArr);
    }

    private final long zzd(int i) {
        return (this.zzc * i) / 100;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final long zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final long zzc(long j) {
        long j2 = j - this.zza;
        if (!zzh() || j2 <= this.zzb) {
            return 0L;
        }
        long[] jArr = (long[]) zzdd.zzb(this.zzf);
        double d2 = (j2 * 256.0d) / this.zzd;
        int zzd = zzen.zzd(jArr, (long) d2, true, true);
        long zzd2 = zzd(zzd);
        long j3 = jArr[zzd];
        int i = zzd + 1;
        long zzd3 = zzd(i);
        long j4 = zzd == 99 ? 256L : jArr[i];
        return zzd2 + Math.round((j3 == j4 ? 0.0d : (d2 - j3) / (j4 - j3)) * (zzd3 - zzd2));
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        long[] jArr;
        if (!zzh()) {
            zzaan zzaanVar = new zzaan(0L, this.zza + this.zzb);
            return new zzaak(zzaanVar, zzaanVar);
        }
        long zzr = zzen.zzr(j, 0L, this.zzc);
        double d2 = (zzr * 100.0d) / this.zzc;
        double d3 = 0.0d;
        if (d2 > 0.0d) {
            if (d2 >= 100.0d) {
                d3 = 256.0d;
            } else {
                int i = (int) d2;
                double d4 = ((long[]) zzdd.zzb(this.zzf))[i];
                d3 = d4 + ((d2 - i) * ((i == 99 ? 256.0d : jArr[i + 1]) - d4));
            }
        }
        zzaan zzaanVar2 = new zzaan(zzr, this.zza + zzen.zzr(Math.round((d3 / 256.0d) * this.zzd), this.zzb, this.zzd - 1));
        return new zzaak(zzaanVar2, zzaanVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return this.zzf != null;
    }
}
