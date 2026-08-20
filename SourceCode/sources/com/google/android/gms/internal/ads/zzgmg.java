package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgmg implements zzgmh {
    private final zzgwa zza;
    private final zzgtb zzb;

    private zzgmg(zzgtb zzgtbVar) {
        this.zzb = zzgtbVar;
        this.zza = zzgmq.zza(zzgtbVar.zzg());
    }

    public static zzgmg zza(zzgtb zzgtbVar) {
        return new zzgmg(zzgtbVar);
    }

    public final zzgtb zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzgmh
    public final zzgwa zzd() {
        return this.zza;
    }
}
