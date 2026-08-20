package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcxi implements zzhep {
    private final zzcxg zza;
    private final zzhfc zzb;

    public zzcxi(zzcxg zzcxgVar, zzhfc zzhfcVar) {
        this.zza = zzcxgVar;
        this.zzb = zzhfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdlu((zzdac) this.zzb.zzb(), zzcib.zzf));
        zzhex.zzb(singleton);
        return singleton;
    }
}
