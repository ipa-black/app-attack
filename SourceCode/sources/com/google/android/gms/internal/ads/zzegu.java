package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzegu implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzegu(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzegt zzb() {
        return new zzegt(((zzcpp) this.zza).zza(), (ScheduledExecutorService) this.zzb.zzb());
    }
}
