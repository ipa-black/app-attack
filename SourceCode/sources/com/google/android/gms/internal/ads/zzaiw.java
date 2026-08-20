package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaiw implements zzaiv {
    private final zzzm zza;
    private final zzaaq zzb;
    private final zzaiy zzc;
    private final zzaf zzd;
    private final int zze;
    private long zzf;
    private int zzg;
    private long zzh;

    public zzaiw(zzzm zzzmVar, zzaaq zzaaqVar, zzaiy zzaiyVar, String str, int i) throws zzbu {
        this.zza = zzzmVar;
        this.zzb = zzaaqVar;
        this.zzc = zzaiyVar;
        int i2 = (zzaiyVar.zzb * zzaiyVar.zze) / 8;
        int i3 = zzaiyVar.zzd;
        if (i3 != i2) {
            throw zzbu.zza("Expected block size: " + i2 + "; got: " + i3, null);
        }
        int i4 = zzaiyVar.zzc * i2;
        int i5 = i4 * 8;
        int max = Math.max(i2, i4 / 10);
        this.zze = max;
        zzad zzadVar = new zzad();
        zzadVar.zzS(str);
        zzadVar.zzv(i5);
        zzadVar.zzO(i5);
        zzadVar.zzL(max);
        zzadVar.zzw(zzaiyVar.zzb);
        zzadVar.zzT(zzaiyVar.zzc);
        zzadVar.zzN(i);
        this.zzd = zzadVar.zzY();
    }

    @Override // com.google.android.gms.internal.ads.zzaiv
    public final void zza(int i, long j) {
        this.zza.zzN(new zzajb(this.zzc, 1, i, j));
        this.zzb.zzk(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzaiv
    public final void zzb(long j) {
        this.zzf = j;
        this.zzg = 0;
        this.zzh = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzaiv
    public final boolean zzc(zzzk zzzkVar, long j) throws IOException {
        int i;
        zzaiy zzaiyVar;
        int i2;
        int i3;
        long j2 = j;
        while (true) {
            i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1));
            if (i <= 0 || (i2 = this.zzg) >= (i3 = this.zze)) {
                break;
            }
            int zza = zzaao.zza(this.zzb, zzzkVar, (int) Math.min(i3 - i2, j2), true);
            if (zza == -1) {
                j2 = 0;
            } else {
                this.zzg += zza;
                j2 -= zza;
            }
        }
        int i4 = this.zzc.zzd;
        int i5 = this.zzg / i4;
        if (i5 > 0) {
            long j3 = this.zzf;
            long zzw = zzen.zzw(this.zzh, 1000000L, zzaiyVar.zzc);
            int i6 = i5 * i4;
            int i7 = this.zzg - i6;
            this.zzb.zzs(j3 + zzw, 1, i6, i7, null);
            this.zzh += i5;
            this.zzg = i7;
        }
        return i <= 0;
    }
}
