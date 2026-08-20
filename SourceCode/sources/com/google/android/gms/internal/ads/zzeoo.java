package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeoo implements zzgdy {
    private final zzfnj zza;
    private final zzdep zzb;
    private final zzfpk zzc;
    private final zzfpo zzd;
    private final Executor zze;
    private final ScheduledExecutorService zzf;
    private final zzdaq zzg;
    private final zzeoj zzh;
    private final zzekv zzi;
    private final Context zzj;
    private final zzfow zzk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeoo(Context context, zzfnj zzfnjVar, zzeoj zzeojVar, zzdep zzdepVar, zzfpk zzfpkVar, zzfpo zzfpoVar, zzdaq zzdaqVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzekv zzekvVar, zzfow zzfowVar) {
        this.zzj = context;
        this.zza = zzfnjVar;
        this.zzh = zzeojVar;
        this.zzb = zzdepVar;
        this.zzc = zzfpkVar;
        this.zzd = zzfpoVar;
        this.zzg = zzdaqVar;
        this.zze = executor;
        this.zzf = scheduledExecutorService;
        this.zzi = zzekvVar;
        this.zzk = zzfowVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fa  */
    @Override // com.google.android.gms.internal.ads.zzgdy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ com.google.android.gms.internal.ads.zzgfb zza(java.lang.Object r9) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeoo.zza(java.lang.Object):com.google.android.gms.internal.ads.zzgfb");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zzb(zzfil zzfilVar, zzfix zzfixVar, zzekq zzekqVar, Throwable th) throws Exception {
        zzfol zza = zzfok.zza(this.zzj, 12);
        zza.zzd(zzfilVar.zzF);
        zza.zzh();
        zzeoj zzeojVar = this.zzh;
        zzgfb zzo = zzger.zzo(zzekqVar.zza(zzfixVar, zzfilVar), zzfilVar.zzS, TimeUnit.MILLISECONDS, this.zzf);
        zzeojVar.zze(zzfixVar, zzfilVar, zzo, this.zzc);
        zzfov.zza(zzo, this.zzk, zza);
        return zzo;
    }
}
