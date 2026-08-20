package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzagd implements zzagj {
    private final zzzw zza;
    private final zzzv zzb;
    private long zzc = -1;
    private long zzd = -1;

    public zzagd(zzzw zzzwVar, zzzv zzzvVar) {
        this.zza = zzzwVar;
        this.zzb = zzzvVar;
    }

    public final void zza(long j) {
        this.zzc = j;
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final long zzd(zzzk zzzkVar) {
        long j = this.zzd;
        if (j >= 0) {
            this.zzd = -1L;
            return -(j + 2);
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final zzaam zze() {
        zzdd.zzf(this.zzc != -1);
        return new zzzu(this.zza, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final void zzg(long j) {
        long[] jArr = this.zzb.zza;
        this.zzd = jArr[zzen.zzd(jArr, j, true, true)];
    }
}
