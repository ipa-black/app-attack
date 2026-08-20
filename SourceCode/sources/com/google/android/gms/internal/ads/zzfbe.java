package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfbe implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;

    public zzfbe(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
        this.zze = zzhfcVar5;
    }

    public static zzfbc zza(String str, zzbdz zzbdzVar, zzcgx zzcgxVar, ScheduledExecutorService scheduledExecutorService, zzgfc zzgfcVar) {
        return new zzfbc(str, zzbdzVar, zzcgxVar, scheduledExecutorService, zzgfcVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        return new zzfbc(((zzfch) this.zza).zza(), new zzbdz(), (zzcgx) this.zzc.zzb(), (ScheduledExecutorService) this.zzd.zzb(), zzgfcVar, null);
    }
}
