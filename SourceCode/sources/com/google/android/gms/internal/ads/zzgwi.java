package com.google.android.gms.internal.ads;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzgwi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i, zzgwh zzgwhVar) throws zzgyp {
        int zzj = zzj(bArr, i, zzgwhVar);
        int i2 = zzgwhVar.zza;
        if (i2 < 0) {
            throw zzgyp.zzf();
        }
        if (i2 <= bArr.length - zzj) {
            if (i2 == 0) {
                zzgwhVar.zzc = zzgwv.zzb;
                return zzj;
            }
            zzgwhVar.zzc = zzgwv.zzw(bArr, zzj, i2);
            return zzj + i2;
        }
        throw zzgyp.zzj();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(zzhag zzhagVar, byte[] bArr, int i, int i2, int i3, zzgwh zzgwhVar) throws IOException {
        Object zze = zzhagVar.zze();
        int zzn = zzn(zze, zzhagVar, bArr, i, i2, i3, zzgwhVar);
        zzhagVar.zzf(zze);
        zzgwhVar.zzc = zze;
        return zzn;
    }

    static int zzd(zzhag zzhagVar, byte[] bArr, int i, int i2, zzgwh zzgwhVar) throws IOException {
        Object zze = zzhagVar.zze();
        int zzo = zzo(zze, zzhagVar, bArr, i, i2, zzgwhVar);
        zzhagVar.zzf(zze);
        zzgwhVar.zzc = zze;
        return zzo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(zzhag zzhagVar, int i, byte[] bArr, int i2, int i3, zzgym zzgymVar, zzgwh zzgwhVar) throws IOException {
        int zzd = zzd(zzhagVar, bArr, i2, i3, zzgwhVar);
        zzgymVar.add(zzgwhVar.zzc);
        while (zzd < i3) {
            int zzj = zzj(bArr, zzd, zzgwhVar);
            if (i != zzgwhVar.zza) {
                break;
            }
            zzd = zzd(zzhagVar, bArr, zzj, i3, zzgwhVar);
            zzgymVar.add(zzgwhVar.zzc);
        }
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(byte[] bArr, int i, zzgym zzgymVar, zzgwh zzgwhVar) throws IOException {
        zzgye zzgyeVar = (zzgye) zzgymVar;
        int zzj = zzj(bArr, i, zzgwhVar);
        int i2 = zzgwhVar.zza + zzj;
        while (zzj < i2) {
            zzj = zzj(bArr, zzj, zzgwhVar);
            zzgyeVar.zzh(zzgwhVar.zza);
        }
        if (zzj == i2) {
            return zzj;
        }
        throw zzgyp.zzj();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(byte[] bArr, int i, zzgwh zzgwhVar) throws zzgyp {
        int zzj = zzj(bArr, i, zzgwhVar);
        int i2 = zzgwhVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzgwhVar.zzc = "";
                return zzj;
            }
            zzgwhVar.zzc = new String(bArr, zzj, i2, zzgyn.zzb);
            return zzj + i2;
        }
        throw zzgyp.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(byte[] bArr, int i, zzgwh zzgwhVar) throws zzgyp {
        int zzj = zzj(bArr, i, zzgwhVar);
        int i2 = zzgwhVar.zza;
        if (i2 >= 0) {
            if (i2 == 0) {
                zzgwhVar.zzc = "";
                return zzj;
            }
            zzgwhVar.zzc = zzhbm.zzh(bArr, zzj, i2);
            return zzj + i2;
        }
        throw zzgyp.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(int i, byte[] bArr, int i2, int i3, zzhay zzhayVar, zzgwh zzgwhVar) throws zzgyp {
        if ((i >>> 3) != 0) {
            int i4 = i & 7;
            if (i4 == 0) {
                int zzm = zzm(bArr, i2, zzgwhVar);
                zzhayVar.zzj(i, Long.valueOf(zzgwhVar.zzb));
                return zzm;
            } else if (i4 == 1) {
                zzhayVar.zzj(i, Long.valueOf(zzp(bArr, i2)));
                return i2 + 8;
            } else if (i4 == 2) {
                int zzj = zzj(bArr, i2, zzgwhVar);
                int i5 = zzgwhVar.zza;
                if (i5 < 0) {
                    throw zzgyp.zzf();
                }
                if (i5 <= bArr.length - zzj) {
                    if (i5 == 0) {
                        zzhayVar.zzj(i, zzgwv.zzb);
                    } else {
                        zzhayVar.zzj(i, zzgwv.zzw(bArr, zzj, i5));
                    }
                    return zzj + i5;
                }
                throw zzgyp.zzj();
            } else if (i4 != 3) {
                if (i4 == 5) {
                    zzhayVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
                    return i2 + 4;
                }
                throw zzgyp.zzc();
            } else {
                int i6 = (i & (-8)) | 4;
                zzhay zzf = zzhay.zzf();
                int i7 = 0;
                while (true) {
                    if (i2 >= i3) {
                        break;
                    }
                    int zzj2 = zzj(bArr, i2, zzgwhVar);
                    int i8 = zzgwhVar.zza;
                    if (i8 == i6) {
                        i7 = i8;
                        i2 = zzj2;
                        break;
                    }
                    i7 = i8;
                    i2 = zzi(i8, bArr, zzj2, i3, zzf, zzgwhVar);
                }
                if (i2 > i3 || i7 != i6) {
                    throw zzgyp.zzg();
                }
                zzhayVar.zzj(i, zzf);
                return i2;
            }
        }
        throw zzgyp.zzc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(byte[] bArr, int i, zzgwh zzgwhVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 >= 0) {
            zzgwhVar.zza = b2;
            return i2;
        }
        return zzk(b2, bArr, i2, zzgwhVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(int i, byte[] bArr, int i2, zzgwh zzgwhVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            zzgwhVar.zza = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & Byte.MAX_VALUE) << 7);
        int i6 = i2 + 2;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            zzgwhVar.zza = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & Byte.MAX_VALUE) << 14);
        int i8 = i2 + 3;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            zzgwhVar.zza = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & Byte.MAX_VALUE) << 21);
        int i10 = i2 + 4;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            zzgwhVar.zza = i9 | (b5 << 28);
            return i10;
        }
        int i11 = i9 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzgwhVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzl(int i, byte[] bArr, int i2, int i3, zzgym zzgymVar, zzgwh zzgwhVar) {
        zzgye zzgyeVar = (zzgye) zzgymVar;
        int zzj = zzj(bArr, i2, zzgwhVar);
        zzgyeVar.zzh(zzgwhVar.zza);
        while (zzj < i3) {
            int zzj2 = zzj(bArr, zzj, zzgwhVar);
            if (i != zzgwhVar.zza) {
                break;
            }
            zzj = zzj(bArr, zzj2, zzgwhVar);
            zzgyeVar.zzh(zzgwhVar.zza);
        }
        return zzj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzm(byte[] bArr, int i, zzgwh zzgwhVar) {
        byte b2;
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzgwhVar.zzb = j;
            return i2;
        }
        int i3 = i + 2;
        byte b3 = bArr[i2];
        long j2 = (j & 127) | ((b3 & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b3 < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (b2 & Byte.MAX_VALUE) << i4;
            b3 = bArr[i3];
            i3 = i5;
        }
        zzgwhVar.zzb = j2;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzn(Object obj, zzhag zzhagVar, byte[] bArr, int i, int i2, int i3, zzgwh zzgwhVar) throws IOException {
        int zzc = ((zzgzq) zzhagVar).zzc(obj, bArr, i, i2, i3, zzgwhVar);
        zzgwhVar.zzc = obj;
        return zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(Object obj, zzhag zzhagVar, byte[] bArr, int i, int i2, zzgwh zzgwhVar) throws IOException {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zzk(i4, bArr, i3, zzgwhVar);
            i4 = zzgwhVar.zza;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw zzgyp.zzj();
        }
        int i6 = i4 + i5;
        zzhagVar.zzi(obj, bArr, i5, i6, zzgwhVar);
        zzgwhVar.zzc = obj;
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzp(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }
}
