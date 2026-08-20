package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbkj implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;

    public zzbkj(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* synthetic */ Object zzb() {
        return new zzbki(((zzcpp) this.zza).zza(), (ScheduledExecutorService) this.zzb.zzb(), new zzbkk(), (zzfow) this.zzd.zzb(), null);
    }
}
