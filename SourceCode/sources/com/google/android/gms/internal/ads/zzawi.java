package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzawi implements zzawf {
    private final zzbar zza;
    private final int zzb;
    private final int zzc;
    private int zzd;
    private int zze;

    public zzawi(zzawc zzawcVar) {
        zzbar zzbarVar = zzawcVar.zza;
        this.zza = zzbarVar;
        zzbarVar.zzv(12);
        this.zzc = zzbarVar.zzi() & 255;
        this.zzb = zzbarVar.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzawf
    public final int zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzawf
    public final int zzb() {
        int i = this.zzc;
        if (i == 8) {
            return this.zza.zzg();
        }
        if (i == 16) {
            return this.zza.zzj();
        }
        int i2 = this.zzd;
        this.zzd = i2 + 1;
        if (i2 % 2 == 0) {
            int zzg = this.zza.zzg();
            this.zze = zzg;
            return (zzg & PsExtractor.VIDEO_STREAM_MASK) >> 4;
        }
        return this.zze & 15;
    }

    @Override // com.google.android.gms.internal.ads.zzawf
    public final boolean zzc() {
        return false;
    }
}
