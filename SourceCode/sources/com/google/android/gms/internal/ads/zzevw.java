package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzevw implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzevw(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgaz zzm;
        zzevm zza = zzevo.zza();
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.zzb.zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdy)).booleanValue()) {
            zzm = zzgaz.zzn(new zzext(zza, ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdz)).intValue(), scheduledExecutorService));
        } else {
            zzm = zzgaz.zzm();
        }
        zzhex.zzb(zzm);
        return zzm;
    }
}
