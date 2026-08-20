package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzsw implements zzty {
    private final zzty zza;
    private final long zzb;

    public zzsw(zzty zztyVar, long j) {
        this.zza = zztyVar;
        this.zzb = j;
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final int zza(zzje zzjeVar, zzgi zzgiVar, int i) {
        int zza = this.zza.zza(zzjeVar, zzgiVar, i);
        if (zza == -4) {
            zzgiVar.zzd = Math.max(0L, zzgiVar.zzd + this.zzb);
            return -4;
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final int zzb(long j) {
        return this.zza.zzb(j - this.zzb);
    }

    public final zzty zzc() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzty
    public final boolean zze() {
        return this.zza.zze();
    }
}
