package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzezq implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;
    private final zzhfc zzd;
    private final zzhfc zze;

    public zzezq(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3, zzhfc zzhfcVar4, zzhfc zzhfcVar5) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
        this.zzd = zzhfcVar4;
        this.zze = zzhfcVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzezp zzb() {
        Context zza = ((zzcpp) this.zza).zza();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        return new zzezp(zza, zzgfcVar, ((zzhfa) this.zzc).zzb(), (zzfow) this.zzd.zzb(), (zzdzh) this.zze.zzb());
    }
}
