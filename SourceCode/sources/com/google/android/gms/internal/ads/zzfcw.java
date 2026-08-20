package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfcw implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;

    public zzfcw(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5, zzhfc zzhfcVar6, zzhfc zzhfcVar7) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
        this.zze = zzhfcVar5;
        this.zzf = zzhfcVar6;
        this.zzg = zzhfcVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcgx zzcgxVar = (zzcgx) this.zza.zzb();
        boolean booleanValue = ((zzfck) this.zzb).zzb().booleanValue();
        boolean booleanValue2 = ((zzfcl) this.zzc).zzb().booleanValue();
        zzcgm zzcgmVar = new zzcgm();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        return new zzfcu(zzcgxVar, booleanValue, booleanValue2, zzcgmVar, zzgfcVar, ((zzfch) this.zzf).zza(), (ScheduledExecutorService) this.zzg.zzb(), null);
    }
}
