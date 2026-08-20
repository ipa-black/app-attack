package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcyk implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzcyk(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzdhc zzb() {
        return new zzdhc((ScheduledExecutorService) this.zza.zzb(), (Clock) this.zzb.zzb());
    }
}
