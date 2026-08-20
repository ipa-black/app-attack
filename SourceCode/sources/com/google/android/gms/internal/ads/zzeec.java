package com.google.android.gms.internal.ads;

import android.os.Binder;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeec {
    private final ScheduledExecutorService zza;
    private final zzgfc zzb;
    private final zzeet zzc;
    private final zzhej zzd;

    public zzeec(ScheduledExecutorService scheduledExecutorService, zzgfc zzgfcVar, zzeet zzeetVar, zzhej zzhejVar) {
        this.zza = scheduledExecutorService;
        this.zzb = zzgfcVar;
        this.zzc = zzeetVar;
        this.zzd = zzhejVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzgfb zza(zzccb zzccbVar, int i, Throwable th) throws Exception {
        return ((zzehm) this.zzd.zzb()).zzd(zzccbVar, i);
    }

    public final zzgfb zzb(final zzccb zzccbVar) {
        zzgfb zzgfbVar;
        String str = zzccbVar.zzd;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzs.zzy(str)) {
            zzgfbVar = zzger.zzh(new zzefg(1));
        } else {
            final zzeet zzeetVar = this.zzc;
            synchronized (zzeetVar.zzb) {
                if (zzeetVar.zzc) {
                    zzgfbVar = zzeetVar.zza;
                } else {
                    zzeetVar.zzc = true;
                    zzeetVar.zze = zzccbVar;
                    zzeetVar.zzf.checkAvailabilityAndConnect();
                    zzeetVar.zza.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzees
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzeet.this.zza();
                        }
                    }, zzcib.zzf);
                    zzgfbVar = zzeetVar.zza;
                }
            }
        }
        final int callingUid = Binder.getCallingUid();
        return zzger.zzg((zzgei) zzger.zzo(zzgei.zzv(zzgfbVar), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzeW)).intValue(), TimeUnit.SECONDS, this.zza), Throwable.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzeeb
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                return zzeec.this.zza(zzccbVar, callingUid, (Throwable) obj);
            }
        }, this.zzb);
    }
}
