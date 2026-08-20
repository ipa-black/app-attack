package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzagb implements zzaam {
    final /* synthetic */ zzagc zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzagb(zzagc zzagcVar, zzaga zzagaVar) {
        this.zza = zzagcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final long zze() {
        zzago zzagoVar;
        long j;
        zzagc zzagcVar = this.zza;
        zzagoVar = zzagcVar.zzd;
        j = zzagcVar.zzf;
        return zzagoVar.zzf(j);
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final zzaak zzg(long j) {
        zzago zzagoVar;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        zzagc zzagcVar = this.zza;
        zzagoVar = zzagcVar.zzd;
        long zzg = zzagoVar.zzg(j);
        j2 = zzagcVar.zzb;
        j3 = zzagcVar.zzc;
        j4 = zzagcVar.zzb;
        j5 = zzagcVar.zzf;
        j6 = zzagcVar.zzb;
        j7 = zzagcVar.zzc;
        zzaan zzaanVar = new zzaan(j, zzen.zzr((-30000) + j2 + ((zzg * (j3 - j4)) / j5), j6, j7 - 1));
        return new zzaak(zzaanVar, zzaanVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaam
    public final boolean zzh() {
        return true;
    }
}
