package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.explorestack.protobuf.openrtb.LossReason;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.util.MimeTypes;
import com.ironsource.mediationsdk.logger.IronSourceError;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaiu implements zzaiv {
    private static final int[] zza = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
    private static final int[] zzb = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 143, 157, 173, 190, LossReason.LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS_VALUE, 230, 253, 279, 307, 337, 371, TTAdConstant.DOWNLOAD_URL_CODE, 449, 494, 544, 598, 658, 724, 796, 876, 963, IronSourceError.ERROR_DO_RV_LOAD_MISSING_ACTIVITY, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    private final zzzm zzc;
    private final zzaaq zzd;
    private final zzaiy zze;
    private final int zzf;
    private final byte[] zzg;
    private final zzef zzh;
    private final int zzi;
    private final zzaf zzj;
    private int zzk;
    private long zzl;
    private int zzm;
    private long zzn;

    public zzaiu(zzzm zzzmVar, zzaaq zzaaqVar, zzaiy zzaiyVar) throws zzbu {
        this.zzc = zzzmVar;
        this.zzd = zzaaqVar;
        this.zze = zzaiyVar;
        int max = Math.max(1, zzaiyVar.zzc / 10);
        this.zzi = max;
        zzef zzefVar = new zzef(zzaiyVar.zzf);
        zzefVar.zzi();
        int zzi = zzefVar.zzi();
        this.zzf = zzi;
        int i = zzaiyVar.zzb;
        int i2 = (((zzaiyVar.zzd - (i * 4)) * 8) / (zzaiyVar.zze * i)) + 1;
        if (zzi != i2) {
            throw zzbu.zza("Expected frames per block: " + i2 + "; got: " + zzi, null);
        }
        int zze = zzen.zze(max, zzi);
        this.zzg = new byte[zzaiyVar.zzd * zze];
        this.zzh = new zzef(zze * (zzi + zzi) * i);
        int i3 = ((zzaiyVar.zzc * zzaiyVar.zzd) * 8) / zzi;
        zzad zzadVar = new zzad();
        zzadVar.zzS(MimeTypes.AUDIO_RAW);
        zzadVar.zzv(i3);
        zzadVar.zzO(i3);
        zzadVar.zzL((max + max) * i);
        zzadVar.zzw(zzaiyVar.zzb);
        zzadVar.zzT(zzaiyVar.zzc);
        zzadVar.zzN(2);
        this.zzj = zzadVar.zzY();
    }

    private final int zzd(int i) {
        int i2 = this.zze.zzb;
        return i / (i2 + i2);
    }

    private final int zze(int i) {
        return (i + i) * this.zze.zzb;
    }

    private final void zzf(int i) {
        long j = this.zzl;
        long zzw = zzen.zzw(this.zzn, 1000000L, this.zze.zzc);
        int zze = zze(i);
        this.zzd.zzs(j + zzw, 1, zze, this.zzm - zze, null);
        this.zzn += i;
        this.zzm -= zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaiv
    public final void zza(int i, long j) {
        this.zzc.zzN(new zzajb(this.zze, this.zzf, i, j));
        this.zzd.zzk(this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzaiv
    public final void zzb(long j) {
        this.zzk = 0;
        this.zzl = j;
        this.zzm = 0;
        this.zzn = 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0023  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003a -> B:4:0x001e). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzaiv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(com.google.android.gms.internal.ads.zzzk r21, long r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaiu.zzc(com.google.android.gms.internal.ads.zzzk, long):boolean");
    }
}
