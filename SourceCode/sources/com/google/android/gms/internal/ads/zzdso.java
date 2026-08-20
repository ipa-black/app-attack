package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdso implements zzhep {
    private final zzdsh zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzdso(zzdsh zzdshVar, zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzdshVar;
        this.zzb = zzhfcVar;
        this.zzc = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdlu(((zzdvp) this.zzb).zzb(), (Executor) this.zzc.zzb());
    }
}
