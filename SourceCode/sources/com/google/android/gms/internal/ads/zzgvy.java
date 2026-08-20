package com.google.android.gms.internal.ads;

import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgvy {
    public static byte[] zza(byte[] bArr, byte[] bArr2) throws InvalidKeyException {
        if (bArr.length == 32) {
            long[] jArr = new long[11];
            byte[] copyOf = Arrays.copyOf(bArr, 32);
            copyOf[0] = (byte) (copyOf[0] & 248);
            int i = copyOf[31] & Byte.MAX_VALUE;
            copyOf[31] = (byte) i;
            copyOf[31] = (byte) (i | 64);
            int i2 = zzguv.zzb;
            if (bArr2.length != 32) {
                throw new InvalidKeyException("Public key length is not 32-byte");
            }
            byte[] copyOf2 = Arrays.copyOf(bArr2, 32);
            copyOf2[31] = (byte) (copyOf2[31] & Byte.MAX_VALUE);
            for (int i3 = 0; i3 < 7; i3++) {
                if (MessageDigest.isEqual(zzguv.zza[i3], copyOf2)) {
                    throw new InvalidKeyException("Banned public key: ".concat(zzgvo.zza(zzguv.zza[i3])));
                }
            }
            long[] zzk = zzgvn.zzk(copyOf2);
            long[] jArr2 = new long[19];
            long[] jArr3 = new long[19];
            jArr3[0] = 1;
            long[] jArr4 = new long[19];
            jArr4[0] = 1;
            long[] jArr5 = new long[19];
            long[] jArr6 = new long[19];
            long[] jArr7 = new long[19];
            jArr7[0] = 1;
            long[] jArr8 = new long[19];
            long[] jArr9 = new long[19];
            jArr9[0] = 1;
            int i4 = 10;
            System.arraycopy(zzk, 0, jArr2, 0, 10);
            int i5 = 0;
            int i6 = 32;
            while (i5 < i6) {
                int i7 = copyOf[31 - i5] & 255;
                int i8 = 0;
                while (i8 < 8) {
                    int i9 = (i7 >> (7 - i8)) & 1;
                    zzguv.zza(jArr4, jArr2, i9);
                    zzguv.zza(jArr5, jArr3, i9);
                    byte[] bArr3 = copyOf;
                    long[] copyOf3 = Arrays.copyOf(jArr4, 10);
                    int i10 = i7;
                    long[] jArr10 = new long[19];
                    long[] jArr11 = jArr;
                    long[] jArr12 = new long[19];
                    int i11 = i5;
                    long[] jArr13 = new long[19];
                    int i12 = i8;
                    long[] jArr14 = new long[19];
                    long[] jArr15 = new long[19];
                    long[] jArr16 = jArr9;
                    long[] jArr17 = new long[19];
                    long[] jArr18 = new long[19];
                    zzgvn.zzi(jArr4, jArr4, jArr5);
                    zzgvn.zzh(jArr5, copyOf3, jArr5);
                    long[] copyOf4 = Arrays.copyOf(jArr2, 10);
                    zzgvn.zzi(jArr2, jArr2, jArr3);
                    zzgvn.zzh(jArr3, copyOf4, jArr3);
                    zzgvn.zzb(jArr14, jArr2, jArr5);
                    zzgvn.zzb(jArr15, jArr4, jArr3);
                    zzgvn.zze(jArr14);
                    zzgvn.zzd(jArr14);
                    zzgvn.zze(jArr15);
                    zzgvn.zzd(jArr15);
                    long[] jArr19 = jArr2;
                    System.arraycopy(jArr14, 0, copyOf4, 0, 10);
                    zzgvn.zzi(jArr14, jArr14, jArr15);
                    zzgvn.zzh(jArr15, copyOf4, jArr15);
                    zzgvn.zzg(jArr18, jArr14);
                    zzgvn.zzg(jArr17, jArr15);
                    zzgvn.zzb(jArr15, jArr17, zzk);
                    zzgvn.zze(jArr15);
                    zzgvn.zzd(jArr15);
                    System.arraycopy(jArr18, 0, jArr6, 0, 10);
                    System.arraycopy(jArr15, 0, jArr7, 0, 10);
                    zzgvn.zzg(jArr12, jArr4);
                    zzgvn.zzg(jArr13, jArr5);
                    zzgvn.zzb(jArr8, jArr12, jArr13);
                    zzgvn.zze(jArr8);
                    zzgvn.zzd(jArr8);
                    zzgvn.zzh(jArr13, jArr12, jArr13);
                    Arrays.fill(jArr10, 10, 18, 0L);
                    zzgvn.zzf(jArr10, jArr13, 121665L);
                    zzgvn.zzd(jArr10);
                    zzgvn.zzi(jArr10, jArr10, jArr12);
                    zzgvn.zzb(jArr16, jArr13, jArr10);
                    zzgvn.zze(jArr16);
                    zzgvn.zzd(jArr16);
                    zzguv.zza(jArr8, jArr6, i9);
                    zzguv.zza(jArr16, jArr7, i9);
                    i8 = i12 + 1;
                    jArr9 = jArr5;
                    jArr2 = jArr6;
                    i7 = i10;
                    jArr = jArr11;
                    i5 = i11;
                    jArr6 = jArr19;
                    jArr5 = jArr16;
                    copyOf = bArr3;
                    long[] jArr20 = jArr4;
                    jArr4 = jArr8;
                    jArr8 = jArr20;
                    long[] jArr21 = jArr7;
                    jArr7 = jArr3;
                    jArr3 = jArr21;
                }
                i5++;
                copyOf = copyOf;
                i6 = 32;
                i4 = 10;
            }
            long[] jArr22 = jArr;
            int i13 = i4;
            long[] jArr23 = new long[i13];
            long[] jArr24 = new long[i13];
            long[] jArr25 = new long[i13];
            long[] jArr26 = new long[i13];
            long[] jArr27 = new long[i13];
            long[] jArr28 = new long[i13];
            long[] jArr29 = new long[i13];
            long[] jArr30 = new long[i13];
            long[] jArr31 = new long[i13];
            long[] jArr32 = new long[i13];
            long[] jArr33 = jArr2;
            long[] jArr34 = new long[i13];
            zzgvn.zzg(jArr24, jArr5);
            zzgvn.zzg(jArr34, jArr24);
            zzgvn.zzg(jArr32, jArr34);
            zzgvn.zza(jArr25, jArr32, jArr5);
            zzgvn.zza(jArr26, jArr25, jArr24);
            zzgvn.zzg(jArr32, jArr26);
            zzgvn.zza(jArr27, jArr32, jArr25);
            zzgvn.zzg(jArr32, jArr27);
            zzgvn.zzg(jArr34, jArr32);
            zzgvn.zzg(jArr32, jArr34);
            zzgvn.zzg(jArr34, jArr32);
            zzgvn.zzg(jArr32, jArr34);
            zzgvn.zza(jArr28, jArr32, jArr27);
            zzgvn.zzg(jArr32, jArr28);
            zzgvn.zzg(jArr34, jArr32);
            for (int i14 = 2; i14 < 10; i14 += 2) {
                zzgvn.zzg(jArr32, jArr34);
                zzgvn.zzg(jArr34, jArr32);
            }
            zzgvn.zza(jArr29, jArr34, jArr28);
            zzgvn.zzg(jArr32, jArr29);
            zzgvn.zzg(jArr34, jArr32);
            for (int i15 = 2; i15 < 20; i15 += 2) {
                zzgvn.zzg(jArr32, jArr34);
                zzgvn.zzg(jArr34, jArr32);
            }
            zzgvn.zza(jArr32, jArr34, jArr29);
            zzgvn.zzg(jArr34, jArr32);
            zzgvn.zzg(jArr32, jArr34);
            for (int i16 = 2; i16 < 10; i16 += 2) {
                zzgvn.zzg(jArr34, jArr32);
                zzgvn.zzg(jArr32, jArr34);
            }
            zzgvn.zza(jArr30, jArr32, jArr28);
            zzgvn.zzg(jArr32, jArr30);
            zzgvn.zzg(jArr34, jArr32);
            for (int i17 = 2; i17 < 50; i17 += 2) {
                zzgvn.zzg(jArr32, jArr34);
                zzgvn.zzg(jArr34, jArr32);
            }
            zzgvn.zza(jArr31, jArr34, jArr30);
            zzgvn.zzg(jArr34, jArr31);
            zzgvn.zzg(jArr32, jArr34);
            for (int i18 = 2; i18 < 100; i18 += 2) {
                zzgvn.zzg(jArr34, jArr32);
                zzgvn.zzg(jArr32, jArr34);
            }
            zzgvn.zza(jArr34, jArr32, jArr31);
            zzgvn.zzg(jArr32, jArr34);
            zzgvn.zzg(jArr34, jArr32);
            for (int i19 = 2; i19 < 50; i19 += 2) {
                zzgvn.zzg(jArr32, jArr34);
                zzgvn.zzg(jArr34, jArr32);
            }
            zzgvn.zza(jArr32, jArr34, jArr30);
            zzgvn.zzg(jArr34, jArr32);
            zzgvn.zzg(jArr32, jArr34);
            zzgvn.zzg(jArr34, jArr32);
            zzgvn.zzg(jArr32, jArr34);
            zzgvn.zzg(jArr34, jArr32);
            zzgvn.zza(jArr23, jArr34, jArr26);
            zzgvn.zza(jArr22, jArr4, jArr23);
            long[] jArr35 = new long[10];
            long[] jArr36 = new long[10];
            long[] jArr37 = new long[11];
            long[] jArr38 = new long[11];
            long[] jArr39 = new long[11];
            zzgvn.zza(jArr35, zzk, jArr22);
            zzgvn.zzi(jArr36, zzk, jArr22);
            long[] jArr40 = new long[10];
            jArr40[0] = 486662;
            zzgvn.zzi(jArr38, jArr36, jArr40);
            zzgvn.zza(jArr38, jArr38, jArr3);
            zzgvn.zzi(jArr38, jArr38, jArr33);
            zzgvn.zza(jArr38, jArr38, jArr35);
            zzgvn.zza(jArr38, jArr38, jArr33);
            zzgvn.zzf(jArr37, jArr38, 4L);
            zzgvn.zzd(jArr37);
            zzgvn.zza(jArr38, jArr35, jArr3);
            zzgvn.zzh(jArr38, jArr38, jArr3);
            zzgvn.zza(jArr39, jArr36, jArr33);
            zzgvn.zzi(jArr38, jArr38, jArr39);
            zzgvn.zzg(jArr38, jArr38);
            if (!MessageDigest.isEqual(zzgvn.zzj(jArr37), zzgvn.zzj(jArr38))) {
                throw new IllegalStateException("Arithmetic error in curve multiplication with the public key: ".concat(zzgvo.zza(bArr2)));
            }
            return zzgvn.zzj(jArr22);
        }
        throw new InvalidKeyException("Private key must have 32 bytes.");
    }

    public static byte[] zzb() {
        byte[] zza = zzgvv.zza(32);
        zza[0] = (byte) (zza[0] | 7);
        int i = zza[31] & 63;
        zza[31] = (byte) i;
        zza[31] = (byte) (i | 128);
        return zza;
    }

    public static byte[] zzc(byte[] bArr) throws InvalidKeyException {
        if (bArr.length == 32) {
            byte[] bArr2 = new byte[32];
            bArr2[0] = 9;
            return zza(bArr, bArr2);
        }
        throw new InvalidKeyException("Private key must have 32 bytes.");
    }
}
