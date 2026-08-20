package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer2.extractor.mp4.Atom;
import com.google.android.exoplayer2.extractor.mp4.Sniffer;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzafv {
    private static final int[] zza = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, Atom.TYPE_avc1, Atom.TYPE_hvc1, Atom.TYPE_hev1, Atom.TYPE_av01, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, Sniffer.BRAND_QUICKTIME, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean zza(zzzk zzzkVar) throws IOException {
        return zzc(zzzkVar, true, false);
    }

    public static boolean zzb(zzzk zzzkVar, boolean z) throws IOException {
        return zzc(zzzkVar, false, false);
    }

    private static boolean zzc(zzzk zzzkVar, boolean z, boolean z2) throws IOException {
        boolean z3;
        long j;
        int i;
        long zzd = zzzkVar.zzd();
        long j2 = -1;
        int i2 = (zzd > (-1L) ? 1 : (zzd == (-1L) ? 0 : -1));
        long j3 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (i2 != 0 && zzd <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j3 = zzd;
        }
        int i3 = (int) j3;
        zzef zzefVar = new zzef(64);
        boolean z4 = false;
        int i4 = 0;
        boolean z5 = false;
        while (i4 < i3) {
            zzefVar.zzC(8);
            if (!zzzkVar.zzm(zzefVar.zzH(), z4 ? 1 : 0, 8, true)) {
                z3 = z4 ? 1 : 0;
                break;
            }
            long zzs = zzefVar.zzs();
            int zze = zzefVar.zze();
            if (zzs == 1) {
                zzzkVar.zzh(zzefVar.zzH(), 8, 8);
                i = 16;
                zzefVar.zzE(16);
                j = zzefVar.zzr();
            } else {
                if (zzs == 0) {
                    long zzd2 = zzzkVar.zzd();
                    if (zzd2 != j2) {
                        zzs = (zzd2 - zzzkVar.zze()) + 8;
                    }
                }
                j = zzs;
                i = 8;
            }
            long j4 = i;
            if (j < j4) {
                return z4;
            }
            i4 += i;
            if (zze == 1836019574) {
                i3 += (int) j;
                if (i2 != 0 && i3 > zzd) {
                    i3 = (int) zzd;
                }
                j2 = -1;
            } else if (zze == 1836019558 || zze == 1836475768) {
                z3 = true;
                break;
            } else if ((i4 + j) - j4 >= i3) {
                break;
            } else {
                int i5 = (int) (j - j4);
                i4 += i5;
                if (zze == 1718909296) {
                    if (i5 < 8) {
                        return false;
                    }
                    zzefVar.zzC(i5);
                    zzzkVar.zzh(zzefVar.zzH(), 0, i5);
                    int i6 = i5 >> 2;
                    for (int i7 = 0; i7 < i6; i7++) {
                        if (i7 == 1) {
                            zzefVar.zzG(4);
                        } else {
                            int zze2 = zzefVar.zze();
                            if ((zze2 >>> 8) != 3368816) {
                                if (zze2 == 1751476579) {
                                    zze2 = 1751476579;
                                }
                                int[] iArr = zza;
                                for (int i8 = 0; i8 < 29; i8++) {
                                    if (iArr[i8] != zze2) {
                                    }
                                }
                                continue;
                            }
                            z5 = true;
                            break;
                        }
                    }
                    if (!z5) {
                        return false;
                    }
                } else if (i5 != 0) {
                    zzzkVar.zzg(i5);
                }
                j2 = -1;
                z4 = false;
            }
        }
        z3 = false;
        return z5 && z == z3;
    }
}
