package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.audio.AacUtil;
import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzzg {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] zzc = {-1, 8000, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, OpusUtil.SAMPLE_RATE, -1, -1};
    private static final int[] zzd = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    public static zzaf zza(byte[] bArr, String str, String str2, zzx zzxVar) {
        zzee zzeeVar;
        if (bArr[0] == Byte.MAX_VALUE) {
            zzeeVar = new zzee(bArr, bArr.length);
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            byte b2 = copyOf[0];
            if (b2 == -2 || b2 == -1) {
                for (int i = 0; i < copyOf.length - 1; i += 2) {
                    byte b3 = copyOf[i];
                    int i2 = i + 1;
                    copyOf[i] = copyOf[i2];
                    copyOf[i2] = b3;
                }
            }
            int length = copyOf.length;
            zzeeVar = new zzee(copyOf, length);
            if (copyOf[0] == 31) {
                zzee zzeeVar2 = new zzee(copyOf, length);
                while (zzeeVar2.zza() >= 16) {
                    zzeeVar2.zzj(2);
                    zzeeVar.zze(zzeeVar2.zzc(14), 14);
                }
            }
            zzeeVar.zzg(copyOf, copyOf.length);
        }
        zzeeVar.zzj(60);
        int i3 = zzb[zzeeVar.zzc(6)];
        int i4 = zzc[zzeeVar.zzc(4)];
        int zzc2 = zzeeVar.zzc(5);
        int i5 = zzc2 < 29 ? (zzd[zzc2] * 1000) / 2 : -1;
        zzeeVar.zzj(10);
        int i6 = zzeeVar.zzc(2) > 0 ? 1 : 0;
        zzad zzadVar = new zzad();
        zzadVar.zzH(str);
        zzadVar.zzS(MimeTypes.AUDIO_DTS);
        zzadVar.zzv(i5);
        zzadVar.zzw(i3 + i6);
        zzadVar.zzT(i4);
        zzadVar.zzB(null);
        zzadVar.zzK(str2);
        return zzadVar.zzY();
    }
}
