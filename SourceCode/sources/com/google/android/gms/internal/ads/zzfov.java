package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.regex.Pattern;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfov {
    public static void zza(zzgfb zzgfbVar, zzfow zzfowVar, zzfol zzfolVar) {
        zzg(zzgfbVar, zzfowVar, zzfolVar, false);
    }

    public static void zzb(zzgfb zzgfbVar, zzfow zzfowVar, zzfol zzfolVar) {
        zzg(zzgfbVar, zzfowVar, zzfolVar, true);
    }

    public static void zzc(zzgfb zzgfbVar, zzfow zzfowVar, zzfol zzfolVar) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            zzger.zzr(zzgei.zzv(zzgfbVar), new zzfou(zzfowVar, zzfolVar), zzcib.zzf);
        }
    }

    public static void zzd(zzgfb zzgfbVar, zzfol zzfolVar) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            zzger.zzr(zzgei.zzv(zzgfbVar), new zzfos(zzfolVar), zzcib.zzf);
        }
    }

    public static boolean zze(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return Pattern.matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhS), str);
    }

    public static int zzf(zzfjg zzfjgVar) {
        int zze = com.google.android.gms.ads.nonagon.signalgeneration.zzf.zze(zzfjgVar) - 1;
        return (zze == 0 || zze == 1) ? 7 : 23;
    }

    private static void zzg(zzgfb zzgfbVar, zzfow zzfowVar, zzfol zzfolVar, boolean z) {
        if (((Boolean) zzbks.zzc.zze()).booleanValue()) {
            zzger.zzr(zzgei.zzv(zzgfbVar), new zzfot(zzfowVar, zzfolVar, z), zzcib.zzf);
        }
    }
}
