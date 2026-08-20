package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzegr implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzegr(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzegq zzb() {
        return new zzegq(((zzcpp) this.zza).zza(), (ScheduledExecutorService) this.zzb.zzb());
    }
}
