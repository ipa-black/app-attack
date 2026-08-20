package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfcp {
    public static zzezm zza(zzfbt zzfbtVar, zzexl zzexlVar, ScheduledExecutorService scheduledExecutorService, int i) {
        return i == 0 ? new zzext(zzexlVar, 0L, scheduledExecutorService) : new zzext(zzfbtVar, 0L, scheduledExecutorService);
    }

    public static zzezm zzb(zzfcd zzfcdVar, ScheduledExecutorService scheduledExecutorService) {
        return new zzext(zzfcdVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdC)).longValue(), scheduledExecutorService);
    }

    public static zzezm zzc(zzfcy zzfcyVar, ScheduledExecutorService scheduledExecutorService) {
        return new zzext(zzfcyVar, 0L, scheduledExecutorService);
    }
}
