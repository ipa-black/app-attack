package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzawu {
    private static final int[] zza = {zzbay.zzg("isom"), zzbay.zzg("iso2"), zzbay.zzg("iso3"), zzbay.zzg("iso4"), zzbay.zzg("iso5"), zzbay.zzg("iso6"), zzbay.zzg("avc1"), zzbay.zzg("hvc1"), zzbay.zzg("hev1"), zzbay.zzg("mp41"), zzbay.zzg("mp42"), zzbay.zzg("3g2a"), zzbay.zzg("3g2b"), zzbay.zzg("3gr6"), zzbay.zzg("3gs6"), zzbay.zzg("3ge6"), zzbay.zzg("3gg6"), zzbay.zzg("M4V "), zzbay.zzg("M4A "), zzbay.zzg("f4v "), zzbay.zzg("kddi"), zzbay.zzg("M4VP"), zzbay.zzg("qt  "), zzbay.zzg("MSNV")};

    public static boolean zza(zzavf zzavfVar) throws IOException, InterruptedException {
        return zzc(zzavfVar, true);
    }

    public static boolean zzb(zzavf zzavfVar) throws IOException, InterruptedException {
        return zzc(zzavfVar, false);
    }

    private static boolean zzc(zzavf zzavfVar, boolean z) throws IOException, InterruptedException {
        boolean z2;
        long j;
        int i;
        long zzc = zzavfVar.zzc();
        int i2 = (int) ((zzc == -1 || zzc > PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) ? 4096L : 4096L);
        zzbar zzbarVar = new zzbar(64);
        int i3 = 0;
        boolean z3 = false;
        while (i3 < i2) {
            zzbarVar.zzs(8);
            zzavfVar.zzg(zzbarVar.zza, 0, 8, false);
            long zzm = zzbarVar.zzm();
            int zze = zzbarVar.zze();
            if (zzm == 1) {
                zzavfVar.zzg(zzbarVar.zza, 8, 8, false);
                i = 16;
                zzbarVar.zzu(16);
                j = zzbarVar.zzn();
            } else {
                j = zzm;
                i = 8;
            }
            long j2 = i;
            if (j < j2) {
                return false;
            }
            i3 += i;
            if (zze != zzawd.zzE) {
                if (zze == zzawd.zzN || zze == zzawd.zzP) {
                    z2 = true;
                    break;
                } else if ((i3 + j) - j2 >= i2) {
                    break;
                } else {
                    int i4 = (int) (j - j2);
                    i3 += i4;
                    if (zze == zzawd.zzd) {
                        if (i4 < 8) {
                            return false;
                        }
                        zzbarVar.zzs(i4);
                        zzavfVar.zzg(zzbarVar.zza, 0, i4, false);
                        int i5 = i4 >> 2;
                        for (int i6 = 0; i6 < i5; i6++) {
                            if (i6 == 1) {
                                zzbarVar.zzw(4);
                            } else {
                                int zze2 = zzbarVar.zze();
                                if ((zze2 >>> 8) != zzbay.zzg("3gp")) {
                                    int[] iArr = zza;
                                    int length = iArr.length;
                                    for (int i7 = 0; i7 < 24; i7++) {
                                        if (iArr[i7] != zze2) {
                                        }
                                    }
                                    continue;
                                }
                                z3 = true;
                                break;
                            }
                        }
                        if (!z3) {
                            return false;
                        }
                    } else if (i4 != 0) {
                        zzavfVar.zzf(i4, false);
                    }
                }
            }
        }
        z2 = false;
        return z3 && z == z2;
    }
}
