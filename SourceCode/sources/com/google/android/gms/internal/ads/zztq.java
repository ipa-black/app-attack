package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zztq implements zzwc {
    public long zza;
    public long zzb;
    public zzwb zzc;
    public zztq zzd;

    public zztq(long j, int i) {
        zze(j, 65536);
    }

    public final int zza(long j) {
        long j2 = this.zza;
        int i = this.zzc.zzb;
        return (int) (j - j2);
    }

    public final zztq zzb() {
        this.zzc = null;
        zztq zztqVar = this.zzd;
        this.zzd = null;
        return zztqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final zzwb zzc() {
        zzwb zzwbVar = this.zzc;
        zzwbVar.getClass();
        return zzwbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwc
    public final zzwc zzd() {
        zztq zztqVar = this.zzd;
        if (zztqVar == null || zztqVar.zzc == null) {
            return null;
        }
        return zztqVar;
    }

    public final void zze(long j, int i) {
        zzdd.zzf(this.zzc == null);
        this.zza = j;
        this.zzb = j + PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
    }
}
