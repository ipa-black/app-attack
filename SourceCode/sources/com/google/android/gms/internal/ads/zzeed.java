package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzeed implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;

    public zzeed(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzeec zzb() {
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        return new zzeec((ScheduledExecutorService) this.zza.zzb(), zzgfcVar, ((zzeeu) this.zzc).zzb(), zzheo.zza(this.zzd));
    }
}
