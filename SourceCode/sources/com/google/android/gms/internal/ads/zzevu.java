package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzevu implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzevu(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzevk(((zzezu) this.zza).zzb(), ((Long) zzbkp.zza.zze()).longValue(), (Clock) this.zzb.zzb());
    }
}
