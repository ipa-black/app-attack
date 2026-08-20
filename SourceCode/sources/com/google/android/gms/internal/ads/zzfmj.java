package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfmj implements zzhep {
    private final zzhfc zza;

    public zzfmj(zzhfc zzhfcVar) {
        this.zza = zzhfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfva.zza();
        ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, (ThreadFactory) this.zza.zzb()));
        zzhex.zzb(unconfigurableScheduledExecutorService);
        return unconfigurableScheduledExecutorService;
    }
}
