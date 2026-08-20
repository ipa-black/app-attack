package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdua implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzdua(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdty((Executor) this.zza.zzb(), (zzcxc) this.zzb.zzb(), (zzdlw) this.zzc.zzb());
    }
}
