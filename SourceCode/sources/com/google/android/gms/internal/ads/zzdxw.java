package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdxw implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzdxw(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set emptySet;
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        zzdyo zzb = ((zzdyp) this.zzb).zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzes)).booleanValue()) {
            emptySet = Collections.singleton(new zzdlu(zzb, zzgfcVar));
        } else {
            emptySet = Collections.emptySet();
        }
        zzhex.zzb(emptySet);
        return emptySet;
    }
}
