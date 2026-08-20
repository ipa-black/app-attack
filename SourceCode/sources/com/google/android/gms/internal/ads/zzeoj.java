package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeoj {
    private final Clock zza;
    private final zzeok zzb;
    private final zzfpo zzc;
    private final List zzd = Collections.synchronizedList(new ArrayList());
    private final boolean zze = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgn)).booleanValue();
    private final zzekv zzf;

    public zzeoj(Clock clock, zzeok zzeokVar, zzekv zzekvVar, zzfpo zzfpoVar) {
        this.zza = clock;
        this.zzb = zzeokVar;
        this.zzf = zzekvVar;
        this.zzc = zzfpoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzg(zzeoj zzeojVar, String str, int i, long j, String str2, Integer num) {
        String str3 = str + "." + i + "." + j;
        if (!TextUtils.isEmpty(str2)) {
            str3 = str3 + "." + str2;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbv)).booleanValue() && num != null && !TextUtils.isEmpty(str2)) {
            str3 = str3 + "." + num;
        }
        zzeojVar.zzd.add(str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzgfb zze(zzfix zzfixVar, zzfil zzfilVar, zzgfb zzgfbVar, zzfpk zzfpkVar) {
        zzfio zzfioVar = zzfixVar.zzb.zzb;
        long elapsedRealtime = this.zza.elapsedRealtime();
        String str = zzfilVar.zzx;
        if (str != null) {
            zzger.zzr(zzgfbVar, new zzeoi(this, elapsedRealtime, str, zzfilVar, zzfioVar, zzfpkVar, zzfixVar), zzcib.zzf);
        }
        return zzgfbVar;
    }

    public final String zzf() {
        return TextUtils.join("_", this.zzd);
    }
}
