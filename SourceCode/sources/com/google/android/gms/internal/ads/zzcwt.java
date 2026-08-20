package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcwt implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;

    public zzcwt(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
        this.zze = zzhfcVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzcws((zzbvc) this.zza.zzb(), (zzcwo) this.zzb.zzb(), (Executor) this.zzc.zzb(), (zzcwn) this.zzd.zzb(), (Clock) this.zze.zzb());
    }
}
