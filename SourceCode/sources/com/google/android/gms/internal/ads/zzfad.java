package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfad implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;
    private final zzhfc zzg;

    public zzfad(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5, zzhfc zzhfcVar6, zzhfc zzhfcVar7) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
        this.zze = zzhfcVar5;
        this.zzf = zzhfcVar6;
        this.zzg = zzhfcVar7;
    }

    public static zzfab zza(zzcgo zzcgoVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        return new zzfab(zzcgoVar, context, scheduledExecutorService, executor, i, z, z2, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        return new zzfab(new zzcgo(), ((zzcpp) this.zzb).zza(), (ScheduledExecutorService) this.zzc.zzb(), zzgfcVar, ((zzfci) this.zze).zzb().intValue(), ((zzfcj) this.zzf).zzb().booleanValue(), ((zzfcl) this.zzg).zzb().booleanValue(), null);
    }
}
