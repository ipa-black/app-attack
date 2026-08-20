package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzhbk extends zzhbj {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
        if (r13[r14] <= (-65)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0047, code lost:
        if (r13[r14] <= (-65)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0083, code lost:
        if (r13[r14] <= (-65)) goto L11;
     */
    @Override // com.google.android.gms.internal.ads.zzhbj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(int r12, byte[] r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhbk.zza(int, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzhbj
    public final String zzb(byte[] bArr, int i, int i2) throws zzgyp {
        int length = bArr.length;
        if ((i | i2 | ((length - i) - i2)) < 0) {
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        int i3 = i + i2;
        char[] cArr = new char[i2];
        int i4 = 0;
        while (i < i3) {
            byte b2 = bArr[i];
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
            byte b3 = bArr[i];
            if (zzhbi.zzd(b3)) {
                cArr[i5] = (char) b3;
                i5++;
                i = i6;
                while (i < i3) {
                    byte b4 = bArr[i];
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
                    zzhbi.zzc(b3, bArr[i6], cArr, i5);
                    i5++;
                } else {
                    throw zzgyp.zzd();
                }
            } else if (zzhbi.zze(b3)) {
                if (i6 < i3 - 1) {
                    int i7 = i + 2;
                    i += 3;
                    zzhbi.zzb(b3, bArr[i6], bArr[i7], cArr, i5);
                    i5++;
                } else {
                    throw zzgyp.zzd();
                }
            } else if (i6 < i3 - 2) {
                int i8 = i + 2;
                int i9 = i + 3;
                i += 4;
                zzhbi.zza(b3, bArr[i6], bArr[i8], bArr[i9], cArr, i5);
                i5 += 2;
            } else {
                throw zzgyp.zzd();
            }
        }
        return new String(cArr, 0, i5);
    }
}
