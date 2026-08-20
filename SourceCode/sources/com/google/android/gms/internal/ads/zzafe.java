package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.extractor.ts.PsExtractor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzafe implements zzafb {
    private final zzef zza;
    private final int zzb;
    private final int zzc;
    private int zzd;
    private int zze;

    public zzafe(zzaex zzaexVar) {
        zzef zzefVar = zzaexVar.zza;
        this.zza = zzefVar;
        zzefVar.zzF(12);
        this.zzc = zzefVar.zzn() & 255;
        this.zzb = zzefVar.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zza() {
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zzc() {
        int i = this.zzc;
        if (i == 8) {
            return this.zza.zzk();
        }
        if (i == 16) {
            return this.zza.zzo();
        }
        int i2 = this.zzd;
        this.zzd = i2 + 1;
        if (i2 % 2 == 0) {
            int zzk = this.zza.zzk();
            this.zze = zzk;
            return (zzk & PsExtractor.VIDEO_STREAM_MASK) >> 4;
        }
        return this.zze & 15;
    }
}
