package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.util.MimeTypes;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzafq {
    public final zzafw zza;
    public final zzafz zzb;
    public final zzaaq zzc;
    public final zzaar zzd;
    public int zze;

    public zzafq(zzafw zzafwVar, zzafz zzafzVar, zzaaq zzaaqVar) {
        this.zza = zzafwVar;
        this.zzb = zzafzVar;
        this.zzc = zzaaqVar;
        this.zzd = MimeTypes.AUDIO_TRUEHD.equals(zzafwVar.zzf.zzm) ? new zzaar() : null;
    }
}
