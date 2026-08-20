package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzair {
    public static int zza(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] != 71) {
            i++;
        }
        return i;
    }

    public static long zzb(zzef zzefVar, int i, int i2) {
        zzefVar.zzF(i);
        if (zzefVar.zza() < 5) {
            return C.TIME_UNSET;
        }
        int zze = zzefVar.zze();
        if ((8388608 & zze) == 0 && ((zze >> 8) & 8191) == i2 && (zze & 32) != 0 && zzefVar.zzk() >= 7 && zzefVar.zza() >= 7 && (zzefVar.zzk() & 16) == 16) {
            byte[] bArr = new byte[6];
            zzefVar.zzB(bArr, 0, 6);
            byte b2 = bArr[0];
            byte b3 = bArr[1];
            byte b4 = bArr[2];
            long j = bArr[3] & 255;
            return ((b3 & 255) << 17) | ((b2 & 255) << 25) | ((b4 & 255) << 9) | (j + j) | ((bArr[4] & 255) >> 7);
        }
        return C.TIME_UNSET;
    }
}
