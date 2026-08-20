package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.audio.OpusUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzatp {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {OpusUtil.SAMPLE_RATE, 44100, 32000};
    private static final int[] zzd = {2, 1, 2, 3, 3, 4, 4, 5};

    public static int zza(ByteBuffer byteBuffer) {
        return (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3 ? zzb[(byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4] : 6) * 256;
    }

    public static zzatd zzb(zzbar zzbarVar, String str, String str2, zzavc zzavcVar) {
        int i = zzc[(zzbarVar.zzg() & 192) >> 6];
        int zzg = zzbarVar.zzg();
        int i2 = zzd[(zzg & 56) >> 3];
        if ((zzg & 4) != 0) {
            i2++;
        }
        return zzatd.zzg(str, MimeTypes.AUDIO_AC3, null, -1, -1, i2, i, null, zzavcVar, 0, str2);
    }

    public static zzatd zzc(zzbar zzbarVar, String str, String str2, zzavc zzavcVar) {
        zzbarVar.zzw(2);
        int i = zzc[(zzbarVar.zzg() & 192) >> 6];
        int zzg = zzbarVar.zzg();
        int i2 = zzd[(zzg & 14) >> 1];
        if ((zzg & 1) != 0) {
            i2++;
        }
        return zzatd.zzg(str, MimeTypes.AUDIO_E_AC3, null, -1, -1, i2, i, null, zzavcVar, 0, str2);
    }
}
