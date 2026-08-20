package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzacb implements zzaam {
    final /* synthetic */ zzaam zza;
    final /* synthetic */ zzacc zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzacb(zzacc zzaccVar, zzaam zzaamVar) {
        this.zzb = zzaccVar;
        this.zza = zzaamVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        long j2;
        long j3;
        zzaak zzg = this.zza.zzg(j);
        zzaan zzaanVar = zzg.zza;
        long j4 = zzaanVar.zzb;
        long j5 = zzaanVar.zzc;
        j2 = this.zzb.zzb;
        zzaan zzaanVar2 = new zzaan(j4, j5 + j2);
        zzaan zzaanVar3 = zzg.zzb;
        long j6 = zzaanVar3.zzb;
        long j7 = zzaanVar3.zzc;
        j3 = this.zzb.zzb;
        return new zzaak(zzaanVar2, new zzaan(j6, j7 + j3));
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return this.zza.zzh();
    }
}
