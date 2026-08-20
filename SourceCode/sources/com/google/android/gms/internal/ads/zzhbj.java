package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzhbj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static final String zzd(ByteBuffer byteBuffer, int i, int i2) throws zzgyp {
        if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer limit=%d, index=%d, limit=%d", Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte b2 = byteBuffer.get(i);
            if (!zzhbi.zzd(b2)) {
                break;
            }
            i++;
            cArr[i4] = (char) b2;
            i4++;
        }
        int i5 = i4;
        while (i < i3) {
            int i6 = i + 1;
            byte b3 = byteBuffer.get(i);
            if (zzhbi.zzd(b3)) {
                cArr[i5] = (char) b3;
                i5++;
                i = i6;
                while (i < i3) {
                    byte b4 = byteBuffer.get(i);
                    if (!zzhbi.zzd(b4)) {
                        break;
                    }
                    i++;
                    cArr[i5] = (char) b4;
                    i5++;
                }
            } else if (zzhbi.zzf(b3)) {
                if (i6 < i3) {
                    i += 2;
                    zzhbi.zzc(b3, byteBuffer.get(i6), cArr, i5);
                    i5++;
                } else {
                    throw zzgyp.zzd();
                }
            } else if (zzhbi.zze(b3)) {
                if (i6 < i3 - 1) {
                    int i7 = i + 2;
                    i += 3;
                    zzhbi.zzb(b3, byteBuffer.get(i6), byteBuffer.get(i7), cArr, i5);
                    i5++;
                } else {
                    throw zzgyp.zzd();
                }
            } else if (i6 < i3 - 2) {
                int i8 = i + 2;
                int i9 = i + 3;
                i += 4;
                zzhbi.zza(b3, byteBuffer.get(i6), byteBuffer.get(i8), byteBuffer.get(i9), cArr, i5);
                i5 += 2;
            } else {
                throw zzgyp.zzd();
            }
        }
        return new String(cArr, 0, i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int zza(int i, byte[] bArr, int i2, int i3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract String zzb(byte[] bArr, int i, int i2) throws zzgyp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzc(byte[] bArr, int i, int i2) {
        return zza(0, bArr, i, i2) == 0;
    }
}
