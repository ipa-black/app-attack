package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzva implements Comparable {
    private final boolean zza;
    private final boolean zzb;

    public zzva(zzaf zzafVar, int i) {
        this.zza = 1 == (zzafVar.zze & 1);
        this.zzb = zzvr.zzm(i, false);
    }

    @Override // java.lang.Comparable
    /* renamed from: zza */
    public final int compareTo(zzva zzvaVar) {
        return zzgaj.zzj().zzd(this.zzb, zzvaVar.zzb).zzd(this.zza, zzvaVar.zza).zza();
    }
}
