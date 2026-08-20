package com.google.android.gms.internal.ads;

import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdzx implements zzhep {
    private final zzdzu zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzdzx(zzdzu zzdzuVar, zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzdzuVar;
        this.zzb = zzhfcVar;
        this.zzc = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        Set zzc = zzdzu.zzc((zzeae) this.zzb.zzb(), zzgfcVar);
        zzhex.zzb(zzc);
        return zzc;
    }
}
