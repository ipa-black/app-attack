package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcuk implements zzhep {
    private final zzhfc zza;
    private final zzhfc zzb;

    public zzcuk(zzhfc zzhfcVar, zzhfc zzhfcVar2) {
        this.zza = zzhfcVar;
        this.zzb = zzhfcVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* synthetic */ Object zzb() {
        zzbvi zzbviVar = new zzbvi();
        String str = (String) this.zzb.zzb();
        return ((Boolean) zzbla.zza.zze()).booleanValue() ? new zzbvh(zzbviVar, str) : new zzcht(str);
    }
}
