package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaif implements zzyu {
    private final zzel zza;
    private final zzef zzb = new zzef();
    private final int zzc;

    public zzaif(int i, zzel zzelVar, int i2) {
        this.zzc = i;
        this.zza = zzelVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyu
    public final zzyt zza(zzzk zzzkVar, long j) throws IOException {
        int zza;
        int zza2;
        long j2;
        long zzf = zzzkVar.zzf();
        int min = (int) Math.min(112800L, zzzkVar.zzd() - zzf);
        this.zzb.zzC(min);
        ((zzyz) zzzkVar).zzm(this.zzb.zzH(), 0, min, false);
        zzef zzefVar = this.zzb;
        int zzd = zzefVar.zzd();
        long j3 = -1;
        long j4 = -1;
        long j5 = -9223372036854775807L;
        while (zzefVar.zza() >= 188 && (zza2 = (zza = zzair.zza(zzefVar.zzH(), zzefVar.zzc(), zzd)) + TsExtractor.TS_PACKET_SIZE) <= zzd) {
            long zzb = zzair.zzb(zzefVar, zza, this.zzc);
            if (zzb != C.TIME_UNSET) {
                long zzb2 = this.zza.zzb(zzb);
                if (zzb2 > j) {
                    if (j5 == C.TIME_UNSET) {
                        return zzyt.zzd(zzb2, zzf);
                    }
                    j2 = zzf + j4;
                } else if (100000 + zzb2 > j) {
                    j2 = zzf + zza;
                } else {
                    j4 = zza;
                    j5 = zzb2;
                }
                return zzyt.zze(j2);
            }
            zzefVar.zzF(zza2);
            j3 = zza2;
        }
        return j5 != C.TIME_UNSET ? zzyt.zzf(j5, zzf + j3) : zzyt.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzyu
    public final void zzb() {
        zzef zzefVar = this.zzb;
        byte[] bArr = zzen.zzf;
        int length = bArr.length;
        zzefVar.zzD(bArr, 0);
    }
}
