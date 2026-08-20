package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdnp implements zzhep {
    private final zzdmz zza;
    private final zzhfc zzb;

    public zzdnp(zzdmz zzdmzVar, zzhfc zzhfcVar) {
        this.zza = zzdmzVar;
        this.zzb = zzhfcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        return this.zza.zzd((Executor) this.zzb.zzb());
    }
}
