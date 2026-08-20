package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.util.MimeTypes;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzafd implements zzafb {
    private final int zza;
    private final int zzb;
    private final zzef zzc;

    public zzafd(zzaex zzaexVar, zzaf zzafVar) {
        zzef zzefVar = zzaexVar.zza;
        this.zzc = zzefVar;
        zzefVar.zzF(12);
        int zzn = zzefVar.zzn();
        if (MimeTypes.AUDIO_RAW.equals(zzafVar.zzm)) {
            int zzo = zzen.zzo(zzafVar.zzB, zzafVar.zzz);
            if (zzn == 0 || zzn % zzo != 0) {
                zzdw.zze("AtomParsers", "Audio sample size mismatch. stsd sample size: " + zzo + ", stsz sample size: " + zzn);
                zzn = zzo;
            }
        }
        this.zza = zzn == 0 ? -1 : zzn;
        this.zzb = zzefVar.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zzc() {
        int i = this.zza;
        return i == -1 ? this.zzc.zzn() : i;
    }
}
