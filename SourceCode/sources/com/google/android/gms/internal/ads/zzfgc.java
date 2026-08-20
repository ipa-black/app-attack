package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfgc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfga zza(Context context, zzfko zzfkoVar, zzflg zzflgVar) {
        return zzc(context, zzfkoVar, zzflgVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzfga zzb(Context context, zzfko zzfkoVar, zzflg zzflgVar) {
        return zzc(context, zzfkoVar, zzflgVar);
    }

    private static zzfga zzc(Context context, zzfko zzfkoVar, zzflg zzflgVar) {
        zzcgr zzi;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfM)).booleanValue()) {
            zzi = com.google.android.gms.ads.internal.zzt.zzo().zzh().zzh();
        } else {
            zzi = com.google.android.gms.ads.internal.zzt.zzo().zzh().zzi();
        }
        boolean z = false;
        if (zzi != null && zzi.zzh()) {
            z = true;
        }
        if (((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgc)).intValue() > 0) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfL)).booleanValue() || z) {
                zzflf zza = zzflgVar.zza(zzfkw.AppOpen, context, zzfkoVar, new zzffe(new zzffb()));
                return new zzffg(new zzffq(new zzffp()), new zzffm(zza.zza, zzcib.zza), zza.zzb, zza.zza.zza().zzf, zzcib.zza);
            }
        }
        return new zzffp();
    }
}
