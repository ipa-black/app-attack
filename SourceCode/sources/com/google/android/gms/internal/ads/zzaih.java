package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaih {
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final zzel zza = new zzel(0);
    private long zzf = C.TIME_UNSET;
    private long zzg = C.TIME_UNSET;
    private long zzh = C.TIME_UNSET;
    private final zzef zzb = new zzef();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaih(int i) {
    }

    private final int zze(zzzk zzzkVar) {
        zzef zzefVar = this.zzb;
        byte[] bArr = zzen.zzf;
        int length = bArr.length;
        zzefVar.zzD(bArr, 0);
        this.zzc = true;
        zzzkVar.zzj();
        return 0;
    }

    public final int zza(zzzk zzzkVar, zzaaj zzaajVar, int i) throws IOException {
        if (i <= 0) {
            zze(zzzkVar);
            return 0;
        }
        boolean z = this.zze;
        long j = C.TIME_UNSET;
        if (!z) {
            long zzd = zzzkVar.zzd();
            int min = (int) Math.min(112800L, zzd);
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
            int zzd2 = zzefVar.zzd();
            int i2 = zzd2 - 188;
            while (true) {
                if (i2 < zzc) {
                    break;
                }
                byte[] zzH = zzefVar.zzH();
                int i3 = -4;
                int i4 = 0;
                while (true) {
                    if (i3 > 4) {
                        break;
                    }
                    int i5 = (i3 * TsExtractor.TS_PACKET_SIZE) + i2;
                    if (i5 < zzc || i5 >= zzd2 || zzH[i5] != 71) {
                        i4 = 0;
                    } else {
                        i4++;
                        if (i4 == 5) {
                            long zzb = zzair.zzb(zzefVar, i2, i);
                            if (zzb != C.TIME_UNSET) {
                                j = zzb;
                                break;
                            }
                        }
                    }
                    i3++;
                }
                i2--;
            }
            this.zzg = j;
            this.zze = true;
            return 0;
        } else if (this.zzg == C.TIME_UNSET) {
            zze(zzzkVar);
            return 0;
        } else if (this.zzd) {
            long j3 = this.zzf;
            if (j3 == C.TIME_UNSET) {
                zze(zzzkVar);
                return 0;
            }
            long zzb2 = this.zza.zzb(this.zzg) - this.zza.zzb(j3);
            this.zzh = zzb2;
            if (zzb2 < 0) {
                zzdw.zze("TsDurationReader", "Invalid duration: " + zzb2 + ". Using TIME_UNSET instead.");
                this.zzh = C.TIME_UNSET;
            }
            zze(zzzkVar);
            return 0;
        } else {
            int min2 = (int) Math.min(112800L, zzzkVar.zzd());
            if (zzzkVar.zzf() != 0) {
                zzaajVar.zza = 0L;
                return 1;
            }
            this.zzb.zzC(min2);
            zzzkVar.zzj();
            ((zzyz) zzzkVar).zzm(this.zzb.zzH(), 0, min2, false);
            zzef zzefVar2 = this.zzb;
            int zzc2 = zzefVar2.zzc();
            int zzd3 = zzefVar2.zzd();
            while (true) {
                if (zzc2 >= zzd3) {
                    break;
                }
                if (zzefVar2.zzH()[zzc2] == 71) {
                    long zzb3 = zzair.zzb(zzefVar2, zzc2, i);
                    if (zzb3 != C.TIME_UNSET) {
                        j = zzb3;
                        break;
                    }
                }
                zzc2++;
            }
            this.zzf = j;
            this.zzd = true;
            return 0;
        }
    }

    public final long zzb() {
        return this.zzh;
    }

    public final zzel zzc() {
        return this.zza;
    }

    public final boolean zzd() {
        return this.zzc;
    }
}
