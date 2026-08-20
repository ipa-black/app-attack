package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdbb {
    private final Executor zza;
    private final ScheduledExecutorService zzb;
    private final zzgfb zzc;
    private volatile boolean zzd = true;

    public zzdbb(Executor executor, ScheduledExecutorService scheduledExecutorService, zzgfb zzgfbVar) {
        this.zza = executor;
        this.zzb = scheduledExecutorService;
        this.zzc = zzgfbVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzb(final zzdbb zzdbbVar, List list, final zzgen zzgenVar) {
        if (list == null || list.isEmpty()) {
            zzdbbVar.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdav
                @Override // java.lang.Runnable
                public final void run() {
                    zzgen.this.zza(new zzede(3));
                }
            });
            return;
        }
        zzgfb zzi = zzger.zzi(null);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final zzgfb zzgfbVar = (zzgfb) it.next();
            zzi = zzger.zzn(zzger.zzg(zzi, Throwable.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdaw
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    zzgen.this.zza((Throwable) obj);
                    return zzger.zzi(null);
                }
            }, zzdbbVar.zza), new zzgdy() { // from class: com.google.android.gms.internal.ads.zzdax
                @Override // com.google.android.gms.internal.ads.zzgdy
                public final zzgfb zza(Object obj) {
                    return zzdbb.this.zza(zzgenVar, zzgfbVar, (zzdan) obj);
                }
            }, zzdbbVar.zza);
        }
        zzger.zzr(zzi, new zzdba(zzdbbVar, zzgenVar), zzdbbVar.zza);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zza(zzgen zzgenVar, zzgfb zzgfbVar, zzdan zzdanVar) throws Exception {
        if (zzdanVar != null) {
            zzgenVar.zzb(zzdanVar);
        }
        return zzger.zzo(zzgfbVar, ((Long) zzbll.zzb.zze()).longValue(), TimeUnit.MILLISECONDS, this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzd() {
        this.zzd = false;
    }

    public final void zze(zzgen zzgenVar) {
        zzger.zzr(this.zzc, new zzdaz(this, zzgenVar), this.zza);
    }

    public final boolean zzf() {
        return this.zzd;
    }
}
