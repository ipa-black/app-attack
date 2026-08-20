package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.Locale;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzadd {
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzada
    };

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.google.android.gms.internal.ads.zzbq zza(byte[] r11, int r12, com.google.android.gms.internal.ads.zzadb r13, com.google.android.gms.internal.ads.zzace r14) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadd.zza(byte[], int, com.google.android.gms.internal.ads.zzadb, com.google.android.gms.internal.ads.zzace):com.google.android.gms.internal.ads.zzbq");
    }

    private static int zzb(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int zzc(byte[] bArr, int i, int i2) {
        int zzd = zzd(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return zzd;
        }
        while (true) {
            int length = bArr.length;
            if (zzd >= length - 1) {
                return length;
            }
            if ((zzd - i) % 2 == 0 && bArr[zzd + 1] == 0) {
                return zzd;
            }
            zzd = zzd(bArr, zzd + 1);
        }
    }

    private static int zzd(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i >= length) {
                return length;
            }
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
    }

    private static int zze(zzef zzefVar, int i) {
        byte[] zzH = zzefVar.zzH();
        int zzc = zzefVar.zzc();
        int i2 = zzc;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= zzc + i) {
                return i;
            }
            if ((zzH[i2] & 255) == 255 && zzH[i3] == 0) {
                System.arraycopy(zzH, i2 + 2, zzH, i3, (i - (i2 - zzc)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x0277, code lost:
        if (r9 == 67) goto L128;
     */
    /* JADX WARN: Not initialized variable reg: 22, insn: 0x0546: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r22 I:??[OBJECT, ARRAY]), block:B:245:0x0544 */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x04f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzade zzf(int r34, com.google.android.gms.internal.ads.zzef r35, boolean r36, int r37, com.google.android.gms.internal.ads.zzadb r38) {
        /*
            Method dump skipped, instructions count: 1382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzadd.zzf(int, com.google.android.gms.internal.ads.zzef, boolean, int, com.google.android.gms.internal.ads.zzadb):com.google.android.gms.internal.ads.zzade");
    }

    private static String zzg(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    private static String zzh(int i) {
        return i != 1 ? i != 2 ? i != 3 ? C.ISO88591_NAME : C.UTF8_NAME : "UTF-16BE" : C.UTF16_NAME;
    }

    private static String zzi(int i, int i2, int i3, int i4, int i5) {
        if (i == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static boolean zzj(zzef zzefVar, int i, int i2, boolean z) {
        int zzm;
        long zzm2;
        int i3;
        int i4;
        int zzc = zzefVar.zzc();
        while (true) {
            try {
                if (zzefVar.zza() < i2) {
                    return true;
                }
                if (i >= 3) {
                    zzm = zzefVar.zze();
                    zzm2 = zzefVar.zzs();
                    i3 = zzefVar.zzo();
                } else {
                    zzm = zzefVar.zzm();
                    zzm2 = zzefVar.zzm();
                    i3 = 0;
                }
                if (zzm == 0 && zzm2 == 0 && i3 == 0) {
                    return true;
                }
                if (i == 4 && !z) {
                    if ((8421504 & zzm2) != 0) {
                        return false;
                    }
                    zzm2 = ((zzm2 >> 24) << 21) | ((255 & (zzm2 >> 16)) << 14) | (zzm2 & 255) | (((zzm2 >> 8) & 255) << 7);
                }
                if (i == 4) {
                    r4 = i3 & 1;
                    i4 = (i3 & 64) == 0 ? 0 : 1;
                } else if (i == 3) {
                    i4 = (i3 & 32) != 0 ? 1 : 0;
                    if ((i3 & 128) == 0) {
                        r4 = 0;
                    }
                } else {
                    i4 = 0;
                    r4 = 0;
                }
                if (r4 != 0) {
                    i4 += 4;
                }
                if (zzm2 < i4) {
                    return false;
                }
                if (zzefVar.zza() < zzm2) {
                    return false;
                }
                zzefVar.zzG((int) zzm2);
            } finally {
                zzefVar.zzF(zzc);
            }
        }
    }

    private static byte[] zzk(byte[] bArr, int i, int i2) {
        if (i2 <= i) {
            return zzen.zzf;
        }
        return Arrays.copyOfRange(bArr, i, i2);
    }
}
