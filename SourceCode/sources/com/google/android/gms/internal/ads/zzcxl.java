package com.google.android.gms.internal.ads;

import com.appnext.ads.a;
import com.google.firebase.analytics.FirebaseAnalytics;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcxl {
    private final zzfnt zza;
    private final zzdzh zzb;
    private final zzfix zzc;

    public zzcxl(zzdzh zzdzhVar, zzfix zzfixVar, zzfnt zzfntVar) {
        this.zza = zzfntVar;
        this.zzb = zzdzhVar;
        this.zzc = zzfixVar;
    }

    private static String zzb(int i) {
        int i2 = i - 1;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "u" : "ac" : "cb" : "cc" : "bb" : "h";
    }

    public final void zza(long j, int i) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhK)).booleanValue()) {
            zzfnt zzfntVar = this.zza;
            zzfns zzb = zzfns.zzb(a.f6363h);
            zzb.zzg(this.zzc.zzb.zzb);
            zzb.zza("show_time", String.valueOf(j));
            zzb.zza(FirebaseAnalytics.Param.AD_FORMAT, "app_open_ad");
            zzb.zza("acr", zzb(i));
            zzfntVar.zzb(zzb);
            return;
        }
        zzdzg zza = this.zzb.zza();
        zza.zze(this.zzc.zzb.zzb);
        zza.zzb("action", a.f6363h);
        zza.zzb("show_time", String.valueOf(j));
        zza.zzb(FirebaseAnalytics.Param.AD_FORMAT, "app_open_ad");
        zza.zzb("acr", zzb(i));
        zza.zzg();
    }
}
