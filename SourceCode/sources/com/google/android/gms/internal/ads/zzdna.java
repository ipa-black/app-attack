package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdna implements zzhep {
    private final zzdmz zza;
    private final zzhfc zzb;

    public zzdna(zzdmz zzdmzVar, zzhfc zzhfcVar) {
        this.zza = zzdmzVar;
        this.zzb = zzhfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdlu((zzddn) this.zzb.zzb(), zzcib.zzf));
        zzhex.zzb(singleton);
        return singleton;
    }
}
