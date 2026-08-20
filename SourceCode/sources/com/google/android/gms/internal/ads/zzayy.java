package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzayy extends zzato {
    private static final Object zzb = new Object();
    private final long zzc;
    private final long zzd;

    public zzayy(long j, boolean z) {
        this.zzc = j;
        this.zzd = j;
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final int zza(Object obj) {
        return zzb.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final zzatm zzd(int i, zzatm zzatmVar, boolean z) {
        zzbaj.zza(i, 0, 1);
        Object obj = z ? zzb : null;
        long j = this.zzc;
        zzatmVar.zza = obj;
        zzatmVar.zzb = obj;
        zzatmVar.zzc = j;
        return zzatmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final zzatn zze(int i, zzatn zzatnVar, boolean z, long j) {
        zzbaj.zza(i, 0, 1);
        zzatnVar.zza = this.zzd;
        return zzatnVar;
    }
}
