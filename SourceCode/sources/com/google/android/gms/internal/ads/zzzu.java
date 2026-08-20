package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzzu implements zzaam {
    private final zzzw zza;
    private final long zzb;

    public zzzu(zzzw zzzwVar, long j) {
        this.zza = zzzwVar;
        this.zzb = j;
    }

    private final zzaan zza(long j, long j2) {
        return new zzaan((j * 1000000) / this.zza.zze, this.zzb + j2);
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        zzdd.zzb(this.zza.zzk);
        zzzw zzzwVar = this.zza;
        zzzv zzzvVar = zzzwVar.zzk;
        long[] jArr = zzzvVar.zza;
        long[] jArr2 = zzzvVar.zzb;
        int zzd = zzen.zzd(jArr, zzzwVar.zzb(j), true, false);
        zzaan zza = zza(zzd == -1 ? 0L : jArr[zzd], zzd != -1 ? jArr2[zzd] : 0L);
        if (zza.zzb == j || zzd == jArr.length - 1) {
            return new zzaak(zza, zza);
        }
        int i = zzd + 1;
        return new zzaak(zza, zza(jArr[i], jArr2[i]));
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return true;
    }
}
