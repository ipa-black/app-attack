package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzahy {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzel zza = new zzel(0);
    private long zzf = C.TIME_UNSET;
    private long zzg = C.TIME_UNSET;
    private long zzh = C.TIME_UNSET;
    private final zzef zzb = new zzef();

    public static long zzc(zzef zzefVar) {
        int zzc = zzefVar.zzc();
        if (zzefVar.zza() < 9) {
            return C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        zzefVar.zzB(bArr, 0, 9);
        zzefVar.zzF(zzc);
        byte b2 = bArr[0];
        if ((b2 & 196) == 68) {
            byte b3 = bArr[2];
            if ((b3 & 4) == 4) {
                byte b4 = bArr[4];
                if ((b4 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                    long j = b2;
                    long j2 = b3;
                    return ((bArr[1] & 255) << 20) | ((j & 3) << 28) | (((56 & j) >> 3) << 30) | (((j2 & 248) >> 3) << 15) | ((j2 & 3) << 13) | ((bArr[3] & 255) << 5) | ((b4 & 248) >> 3);
                }
            }
        }
        return C.TIME_UNSET;
    }

    private final int zzf(zzzk zzzkVar) {
        zzef zzefVar = this.zzb;
        byte[] bArr = zzen.zzf;
        int length = bArr.length;
        zzefVar.zzD(bArr, 0);
        this.zzc = true;
        zzzkVar.zzj();
        return 0;
    }

    private static final int zzg(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public final int zza(zzzk zzzkVar, zzaaj zzaajVar) throws IOException {
        boolean z = this.zze;
        long j = C.TIME_UNSET;
        if (!z) {
            long zzd = zzzkVar.zzd();
            int min = (int) Math.min(20000L, zzd);
            long j2 = zzd - min;
            if (zzzkVar.zzf() != j2) {
                zzaajVar.zza = j2;
                return 1;
            }
            this.zzb.zzC(min);
            zzzkVar.zzj();
            ((zzyz) zzzkVar).zzm(this.zzb.zzH(), 0, min, false);
            zzef zzefVar = this.zzb;
            int zzc = zzefVar.zzc();
            int zzd2 = zzefVar.zzd() - 4;
            while (true) {
                if (zzd2 < zzc) {
                    break;
                }
                if (zzg(zzefVar.zzH(), zzd2) == 442) {
                    zzefVar.zzF(zzd2 + 4);
                    long zzc2 = zzc(zzefVar);
                    if (zzc2 != C.TIME_UNSET) {
                        j = zzc2;
                        break;
                    }
                }
                zzd2--;
            }
            this.zzg = j;
            this.zze = true;
            return 0;
        } else if (this.zzg == C.TIME_UNSET) {
            zzf(zzzkVar);
            return 0;
        } else if (this.zzd) {
            long j3 = this.zzf;
            if (j3 == C.TIME_UNSET) {
                zzf(zzzkVar);
                return 0;
            }
            long zzb = this.zza.zzb(this.zzg) - this.zza.zzb(j3);
            this.zzh = zzb;
            if (zzb < 0) {
                zzdw.zze("PsDurationReader", "Invalid duration: " + zzb + ". Using TIME_UNSET instead.");
                this.zzh = C.TIME_UNSET;
            }
            zzf(zzzkVar);
            return 0;
        } else {
            int min2 = (int) Math.min(20000L, zzzkVar.zzd());
            if (zzzkVar.zzf() != 0) {
                zzaajVar.zza = 0L;
                return 1;
            }
            this.zzb.zzC(min2);
            zzzkVar.zzj();
            ((zzyz) zzzkVar).zzm(this.zzb.zzH(), 0, min2, false);
            zzef zzefVar2 = this.zzb;
            int zzc3 = zzefVar2.zzc();
            int zzd3 = zzefVar2.zzd();
            while (true) {
                if (zzc3 >= zzd3 - 3) {
                    break;
                }
                if (zzg(zzefVar2.zzH(), zzc3) == 442) {
                    zzefVar2.zzF(zzc3 + 4);
                    long zzc4 = zzc(zzefVar2);
                    if (zzc4 != C.TIME_UNSET) {
                        j = zzc4;
                        break;
                    }
                }
                zzc3++;
            }
            this.zzf = j;
            this.zzd = true;
            return 0;
        }
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzel zzd() {
        return this.zza;
    }

    public final boolean zze() {
        return this.zzc;
    }
}
