package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzczd implements zzhep {
    private final zzcys zza;
    private final zzhfc zzb;
    private final zzhfc zzc;

    public zzczd(zzcys zzcysVar, zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzcysVar;
        this.zzb = zzhfcVar;
        this.zzc = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    /* renamed from: zza */
    public final zzcfb zzb() {
        return new zzcfb(((zzcpp) this.zzb).zza(), ((zzdee) this.zzc).zza().zzf);
    }
}
