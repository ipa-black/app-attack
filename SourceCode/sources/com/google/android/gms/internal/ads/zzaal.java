package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public class zzaal implements zzaam {
    private final long zza;
    private final zzaak zzb;

    public zzaal(long j, long j2) {
        this.zza = j;
        zzaan zzaanVar = j2 == 0 ? zzaan.zza : new zzaan(0L, j2);
        this.zzb = new zzaak(zzaanVar, zzaanVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return false;
    }
}
