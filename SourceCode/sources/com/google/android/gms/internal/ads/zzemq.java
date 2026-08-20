package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzemq implements zzekq {
    private final zzczi zza;
    private final zzelx zzb;
    private final zzgfc zzc;
    private final zzdep zzd;
    private final ScheduledExecutorService zze;

    public zzemq(zzczi zzcziVar, zzelx zzelxVar, zzdep zzdepVar, ScheduledExecutorService scheduledExecutorService, zzgfc zzgfcVar) {
        this.zza = zzcziVar;
        this.zzb = zzelxVar;
        this.zzd = zzdepVar;
        this.zze = scheduledExecutorService;
        this.zzc = zzgfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final zzgfb zza(final zzfix zzfixVar, final zzfil zzfilVar) {
        return this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzemn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzemq.this.zzc(zzfixVar, zzfilVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzekq
    public final boolean zzb(zzfix zzfixVar, zzfil zzfilVar) {
        return zzfixVar.zza.zza.zza() != null && this.zzb.zzb(zzfixVar, zzfilVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzcyl zzc(final zzfix zzfixVar, final zzfil zzfilVar) throws Exception {
        return this.zza.zzb(new zzdbc(zzfixVar, zzfilVar, null), new zzczv(zzfixVar.zza.zza.zza(), new Runnable() { // from class: com.google.android.gms.internal.ads.zzemo
            @Override // java.lang.Runnable
            public final void run() {
                zzemq.this.zzf(zzfixVar, zzfilVar);
            }
        })).zza();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf(zzfix zzfixVar, zzfil zzfilVar) {
        zzger.zzr(zzger.zzo(this.zzb.zza(zzfixVar, zzfilVar), zzfilVar.zzS, TimeUnit.SECONDS, this.zze), new zzemp(this), this.zzc);
    }
}
