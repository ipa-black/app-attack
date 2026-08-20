package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdco implements zzhep {
    private final zzdcn zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzdco(zzdcn zzdcnVar, zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzdcnVar;
        this.zzb = zzhfcVar;
        this.zzc = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new com.google.android.gms.ads.internal.zzb((Context) this.zzb.zzb(), (zzcep) this.zzc.zzb(), null);
    }
}
