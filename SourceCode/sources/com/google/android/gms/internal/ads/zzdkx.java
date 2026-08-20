package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdkx implements zzhep {
    private final zzdka zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;

    public zzdkx(zzdka zzdkaVar, zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4) {
        this.zza = zzdkaVar;
        this.zzb = zzhfcVar;
        this.zzc = zzhfcVar2;
        this.zzd = zzhfcVar3;
        this.zze = zzhfcVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzeoj zzb = this.zza.zzb((Clock) this.zzb.zzb(), ((zzeol) this.zzc).zzb(), (zzekv) this.zzd.zzb(), (zzfpo) this.zze.zzb());
        zzhex.zzb(zzb);
        return zzb;
    }
}
