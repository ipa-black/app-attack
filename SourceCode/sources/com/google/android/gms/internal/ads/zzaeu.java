package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaeu implements zzaet {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final long zzd;

    private zzaeu(long[] jArr, long[] jArr2, long j, long j2) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j;
        this.zzd = j2;
    }

    public static zzaeu zza(long j, long j2, zzaac zzaacVar, zzef zzefVar) {
        int zzk;
        zzefVar.zzG(10);
        int zze = zzefVar.zze();
        if (zze <= 0) {
            return null;
        }
        int i = zzaacVar.zzd;
        long zzw = zzen.zzw(zze, (i >= 32000 ? 1152 : 576) * 1000000, i);
        int zzo = zzefVar.zzo();
        int zzo2 = zzefVar.zzo();
        int zzo3 = zzefVar.zzo();
        zzefVar.zzG(2);
        long j3 = j2 + zzaacVar.zzc;
        long[] jArr = new long[zzo];
        long[] jArr2 = new long[zzo];
        int i2 = 0;
        long j4 = j2;
        while (i2 < zzo) {
            int i3 = zzo2;
            long j5 = j3;
            jArr[i2] = (i2 * zzw) / zzo;
            jArr2[i2] = Math.max(j4, j5);
            if (zzo3 == 1) {
                zzk = zzefVar.zzk();
            } else if (zzo3 == 2) {
                zzk = zzefVar.zzo();
            } else if (zzo3 == 3) {
                zzk = zzefVar.zzm();
            } else if (zzo3 != 4) {
                return null;
            } else {
                zzk = zzefVar.zzn();
            }
            j4 += zzk * i3;
            i2++;
            jArr = jArr;
            zzo2 = i3;
            j3 = j5;
        }
        long[] jArr3 = jArr;
        if (j != -1 && j != j4) {
            zzdw.zze("VbriSeeker", "VBRI data size mismatch: " + j + ", " + j4);
        }
        return new zzaeu(jArr3, jArr2, zzw, j4);
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final long zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzaet
    public final long zzc(long j) {
        return this.zza[zzen.zzd(this.zzb, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        int zzd = zzen.zzd(this.zza, j, true, true);
        zzaan zzaanVar = new zzaan(this.zza[zzd], this.zzb[zzd]);
        if (zzaanVar.zzb < j) {
            long[] jArr = this.zza;
            if (zzd != jArr.length - 1) {
                int i = zzd + 1;
                return new zzaak(zzaanVar, new zzaan(jArr[i], this.zzb[i]));
            }
        }
        return new zzaak(zzaanVar, zzaanVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return true;
    }
}
