package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzext implements zzezm {
    private final zzezm zza;
    private final long zzb;
    private final ScheduledExecutorService zzc;

    public zzext(zzezm zzezmVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzezmVar;
        this.zzb = j;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final int zza() {
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzezm
    public final zzgfb zzb() {
        zzgfb zzb = this.zza.zzb();
        long j = this.zzb;
        if (j > 0) {
            zzb = zzger.zzo(zzb, j, TimeUnit.MILLISECONDS, this.zzc);
        }
        return zzger.zzg(zzb, Throwable.class, new zzgdy() { // from class: com.google.android.gms.internal.ads.zzexs
            @Override // com.google.android.gms.internal.ads.zzgdy
            public final zzgfb zza(Object obj) {
                Throwable th = (Throwable) obj;
                return zzger.zzi(null);
            }
        }, zzcib.zzf);
    }
}
