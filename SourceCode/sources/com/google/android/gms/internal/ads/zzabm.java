package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzabm implements zzyu {
    private final zzzw zza;
    private final int zzb;
    private final zzzr zzc = new zzzr();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzabm(zzzw zzzwVar, int i, zzabl zzablVar) {
        this.zza = zzzwVar;
        this.zzb = i;
    }

    private final long zzc(zzzk zzzkVar) throws IOException {
        while (zzzkVar.zze() < zzzkVar.zzd() - 6) {
            zzzw zzzwVar = this.zza;
            int i = this.zzb;
            zzzr zzzrVar = this.zzc;
            long zze = zzzkVar.zze();
            byte[] bArr = new byte[2];
            zzyz zzyzVar = (zzyz) zzzkVar;
            zzyzVar.zzm(bArr, 0, 2, false);
            if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i) {
                zzzkVar.zzj();
                zzyzVar.zzl((int) (zze - zzzkVar.zzf()), false);
            } else {
                zzef zzefVar = new zzef(16);
                System.arraycopy(bArr, 0, zzefVar.zzH(), 0, 2);
                zzefVar.zzE(zzzn.zza(zzzkVar, zzefVar.zzH(), 2, 14));
                zzzkVar.zzj();
                zzyzVar.zzl((int) (zze - zzzkVar.zzf()), false);
                if (zzzs.zzc(zzefVar, zzzwVar, i, zzzrVar)) {
                    break;
                }
            }
            zzyzVar.zzl(1, false);
        }
        if (zzzkVar.zze() >= zzzkVar.zzd() - 6) {
            ((zzyz) zzzkVar).zzl((int) (zzzkVar.zzd() - zzzkVar.zze()), false);
            return this.zza.zzj;
        }
        return this.zzc.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzyu
    public final zzyt zza(zzzk zzzkVar, long j) throws IOException {
        long zzf = zzzkVar.zzf();
        long zzc = zzc(zzzkVar);
        long zze = zzzkVar.zze();
        ((zzyz) zzzkVar).zzl(Math.max(6, this.zza.zzc), false);
        long zzc2 = zzc(zzzkVar);
        return (zzc > j || zzc2 <= j) ? zzc2 <= j ? zzyt.zzf(zzc2, zzzkVar.zze()) : zzyt.zzd(zzc, zzf) : zzyt.zze(zze);
    }

    @Override // com.google.android.gms.internal.ads.zzyu
    public final /* synthetic */ void zzb() {
    }
}
