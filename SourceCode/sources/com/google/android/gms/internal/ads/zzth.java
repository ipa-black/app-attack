package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzth implements zzty {
    final /* synthetic */ zztk zza;
    private final int zzb;

    public zzth(zztk zztkVar, int i) {
        this.zza = zztkVar;
        this.zzb = i;
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final int zza(zzje zzjeVar, zzgi zzgiVar, int i) {
        return this.zza.zzg(this.zzb, zzjeVar, zzgiVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final int zzb(long j) {
        return this.zza.zzi(this.zzb, j);
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final void zzd() throws IOException {
        this.zza.zzH(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final boolean zze() {
        return this.zza.zzO(this.zzb);
    }
}
