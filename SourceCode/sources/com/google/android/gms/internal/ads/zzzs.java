package com.google.android.gms.internal.ads;

import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzzs {
    public static int zza(zzef zzefVar, int i) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case 6:
                return zzefVar.zzk() + 1;
            case 7:
                return zzefVar.zzo() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static long zzb(zzzk zzzkVar, zzzw zzzwVar) throws IOException {
        zzzkVar.zzj();
        zzyz zzyzVar = (zzyz) zzzkVar;
        zzyzVar.zzl(1, false);
        byte[] bArr = new byte[1];
        zzyzVar.zzm(bArr, 0, 1, false);
        int i = bArr[0] & 1;
        zzyzVar.zzl(2, false);
        int i2 = 1 != i ? 6 : 7;
        zzef zzefVar = new zzef(i2);
        zzefVar.zzE(zzzn.zza(zzzkVar, zzefVar.zzH(), 0, i2));
        zzzkVar.zzj();
        zzzr zzzrVar = new zzzr();
        if (zzd(zzefVar, zzzwVar, 1 == i, zzzrVar)) {
            return zzzrVar.zza;
        }
        throw zzbu.zza(null, null);
    }

    public static boolean zzc(zzef zzefVar, zzzw zzzwVar, int i, zzzr zzzrVar) {
        int zza;
        int zzc = zzefVar.zzc();
        long zzs = zzefVar.zzs();
        long j = zzs >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        int i2 = (int) ((zzs >> 12) & 15);
        int i3 = (int) ((zzs >> 8) & 15);
        int i4 = (int) (15 & (zzs >> 4));
        int i5 = (int) ((zzs >> 1) & 7);
        long j2 = zzs & 1;
        if (i4 <= 7) {
            if (i4 != zzzwVar.zzg - 1) {
                return false;
            }
        } else if (i4 > 10 || zzzwVar.zzg != 2) {
            return false;
        }
        if (!(i5 == 0 || i5 == zzzwVar.zzi) || j2 == 1 || !zzd(zzefVar, zzzwVar, z, zzzrVar) || (zza = zza(zzefVar, i2)) == -1 || zza > zzzwVar.zzb) {
            return false;
        }
        int i6 = zzzwVar.zze;
        if (i3 != 0) {
            if (i3 <= 11) {
                if (i3 != zzzwVar.zzf) {
                    return false;
                }
            } else if (i3 == 12) {
                if (zzefVar.zzk() * 1000 != i6) {
                    return false;
                }
            } else if (i3 > 14) {
                return false;
            } else {
                int zzo = zzefVar.zzo();
                if (i3 == 14) {
                    zzo *= 10;
                }
                if (zzo != i6) {
                    return false;
                }
            }
        }
        return zzefVar.zzk() == zzen.zzh(zzefVar.zzH(), zzc, zzefVar.zzc() + (-1), 0);
    }

    private static boolean zzd(zzef zzefVar, zzzw zzzwVar, boolean z, zzzr zzzrVar) {
        try {
            long zzu = zzefVar.zzu();
            if (!z) {
                zzu *= zzzwVar.zzb;
            }
            zzzrVar.zza = zzu;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }
}
