package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcew implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzcew(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzcev zzb() {
        return new zzcev((Clock) this.zza.zzb(), (zzcet) this.zzb.zzb());
    }
}
