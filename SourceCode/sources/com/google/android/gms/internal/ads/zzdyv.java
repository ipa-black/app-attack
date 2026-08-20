package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzdyv implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzdyv(zzhfc zzhfcVar, zzhfc zzhfcVar2, zzhfc zzhfcVar3) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
        this.zzc = zzhfcVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdys zzdysVar = (zzdys) this.zza.zzb();
        zzgfc zzgfcVar = zzcib.zza;
        zzhex.zzb(zzgfcVar);
        return ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhK)).booleanValue() ? new zzdlu((zzeii) this.zzc.zzb(), zzgfcVar) : new zzdlu(zzdysVar, zzgfcVar);
    }
}
