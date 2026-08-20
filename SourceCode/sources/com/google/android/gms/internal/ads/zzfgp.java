package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfgp implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;
    private final zzhfc zzf;

    public zzfgp(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5, zzhfc zzhfcVar6) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
        this.zze = zzhfcVar5;
        this.zzf = zzhfcVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzfgo((Context) this.zza.zzb(), (Executor) this.zzb.zzb(), (zzcpj) this.zzc.zzb(), (zzesb) this.zzd.zzb(), (zzfho) this.zze.zzb(), new zzfje());
    }
}
