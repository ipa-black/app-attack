package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfna {
    final /* synthetic */ zzfnb zza;
    private final Object zzb;
    private final String zzc;
    private final zzgfb zzd;
    private final List zze;
    private final zzgfb zzf;

    private zzfna(zzfnb zzfnbVar, Object obj, String str, zzgfb zzgfbVar, List list, zzgfb zzgfbVar2) {
        this.zza = zzfnbVar;
        this.zzb = obj;
        this.zzc = str;
        this.zzd = zzgfbVar;
        this.zze = list;
        this.zzf = zzgfbVar2;
    }

    public final zzfmo zza() {
        zzfnc zzfncVar;
        Object obj = this.zzb;
        String str = this.zzc;
        if (str == null) {
            str = this.zza.zzf(obj);
        }
        final zzfmo zzfmoVar = new zzfmo(obj, str, this.zzf);
        zzfncVar = this.zza.zzd;
        zzfncVar.zza(zzfmoVar);
        this.zzd.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfmu
            @Override // java.lang.Runnable
            public final void run() {
                zzfnc zzfncVar2;
                zzfna zzfnaVar = zzfna.this;
                zzfmo zzfmoVar2 = zzfmoVar;
                zzfncVar2 = zzfnaVar.zza.zzd;
                zzfncVar2.zzc(zzfmoVar2);
            }
        }, zzcib.zzf);
        zzger.zzr(zzfmoVar, new zzfmy(this, zzfmoVar), zzcib.zzf);
        return zzfmoVar;
    }

    public final zzfna zzb(Object obj) {
        return this.zza.zzb(obj, zza());
    }

    public final zzfna zzc(Class cls, zzgdy zzgdyVar) {
        zzgfc zzgfcVar;
        zzfnb zzfnbVar = this.zza;
        Object obj = this.zzb;
        String str = this.zzc;
        zzgfb zzgfbVar = this.zzd;
        List list = this.zze;
        zzgfb zzgfbVar2 = this.zzf;
        zzgfcVar = zzfnbVar.zzb;
        return new zzfna(zzfnbVar, obj, str, zzgfbVar, list, zzger.zzg(zzgfbVar2, cls, zzgdyVar, zzgfcVar));
    }

    public final zzfna zzd(final zzgfb zzgfbVar) {
        return zzg(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzfmv
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzgfb.this;
            }
        }, zzcib.zzf);
    }

    public final zzfna zze(final zzfmm zzfmmVar) {
        return zzf(new zzgdy() { // from class: com.google.android.gms.internal.ads.zzfmx
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzger.zzi(zzfmm.this.zza(obj));
            }
        });
    }

    public final zzfna zzf(zzgdy zzgdyVar) {
        zzgfc zzgfcVar;
        zzgfcVar = this.zza.zzb;
        return zzg(zzgdyVar, zzgfcVar);
    }

    public final zzfna zzg(zzgdy zzgdyVar, Executor executor) {
        return new zzfna(this.zza, this.zzb, this.zzc, this.zzd, this.zze, zzger.zzn(this.zzf, zzgdyVar, executor));
    }

    public final zzfna zzh(String str) {
        return new zzfna(this.zza, this.zzb, str, this.zzd, this.zze, this.zzf);
    }

    public final zzfna zzi(long j, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorService;
        zzfnb zzfnbVar = this.zza;
        Object obj = this.zzb;
        String str = this.zzc;
        zzgfb zzgfbVar = this.zzd;
        List list = this.zze;
        zzgfb zzgfbVar2 = this.zzf;
        scheduledExecutorService = zzfnbVar.zzc;
        return new zzfna(zzfnbVar, obj, str, zzgfbVar, list, zzger.zzo(zzgfbVar2, j, timeUnit, scheduledExecutorService));
    }
}
