package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaca extends zzzx {
    private final long zza;

    public zzaca(zzzk zzzkVar, long j) {
        super(zzzkVar);
        zzdd.zzd(zzzkVar.zzf() >= j);
        this.zza = j;
    }

    @Override // com.google.android.gms.internal.ads.zzzx, com.google.android.gms.internal.ads.zzzk
    public final long zzd() {
        return super.zzd() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzzx, com.google.android.gms.internal.ads.zzzk
    public final long zze() {
        return super.zze() - this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzzx, com.google.android.gms.internal.ads.zzzk
    public final long zzf() {
        return super.zzf() - this.zza;
    }
}
